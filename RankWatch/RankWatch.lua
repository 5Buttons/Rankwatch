--[[
RankWatch will monitor the spells cast by members of your party or raid and warn them
if they are using a downranked spell.

While downranked spells were formerly used to save mana, this use is no longer supported,
and while it is occasionally intended, the use of downranked spells is generally a mistake.

Sometimes this happens when people forget to train at level 80, sometimes it happens when
they spend talent points to obtain a spell which is not a base skill for the class (for
example, a Death Knight's Frost Strike our Scourge Strike) but fail to train the ranks
for the newly talented spell.

In my experience, the most common cause is training while dual specced.
For example, if you level up as a feral druid, you will train new ranks of Rejuvenation
etc, but the new ranks will not appear on your bars when you change to the Resto spec.

Copyright (C) 2009 by Gronzig of Rexxar/US.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

local L = LibStub("AceLocale-3.0"):GetLocale("RankWatch")

local RankWatch_Version = "v1.10"

local RANKWATCH_CHANNEL_DISABLED = false
local RANKWATCH_CHANNEL_PARTY = 1
local RANKWATCH_CHANNEL_SAY = 2
local RANKWATCH_CHANNEL_WHISPER = 3

local RANKWATCH_WHISPER_80 = 1
local RANKWATCH_WHISPER_ALL = 2

-- Special-case a few spells for which reasonable uses for downranked spells exist

local RankWatch_Rank1_Allowed = {
	[(GetSpellInfo(116))] = true,	-- Mages commonly use rank 1 frostbolt to slow enemies due to its shorter cast time.
	[(GetSpellInfo(1949))] = true,	-- Warlocks commonly use rank 1 hellfire to proc trinkets etc.
	[(GetSpellInfo(1008))] = true,	-- Mages commonly use rank 1 amplify/dampen magic in arenas for purge fodder
	[(GetSpellInfo(604))] = true,
	[(GetSpellInfo(1463))] = true, 	-- Mages also commonly use Mana shield rank 1
	[(GetSpellInfo(686))]  = true,  -- Warlocks sometimes use Shadowbolt rank1 to fish for procs

}

local RankWatch_RankMaxMinusOne_Allowed = {
	[(GetSpellInfo(2120))] = true,	-- Mages use a downranked flamestrike for an optimal AOE rotation
	[(GetSpellInfo(13813))] =true,  -- Explosive trap
}

local RankWatch_AnyRank_Allowed = {
	[(GetSpellInfo(1454))] = true,	-- Warlocks commonly use downranked life tap to proc the glyph
	[(GetSpellInfo(755))] = true,	-- and downranked Health Funnel still heals for quite a bit without costing so much health
	[(GetSpellInfo(118))] = true,	-- Mages commonly use downranked polymorph for shorter duration in some pve situations.
	[(GetSpellInfo(587))] = true,	-- Downranked Conjured Food is sometimes used to give to lower level players.
	[(GetSpellInfo(5504))] = true,	-- same with Conjured Water
	[(GetSpellInfo(42955))] = true,	-- and Conjured Refreshment
}

-- For buffs and HoTs, it's the target's level that matters, not the caster's
local RankWatch_Target_Level = {
	[(GetSpellInfo(  139))] = true, -- "Renew"
	[(GetSpellInfo(61295))] = true, -- "Riptide"
	[(GetSpellInfo(33763))] = true, -- "Lifebloom"
	[(GetSpellInfo(  774))] = true, -- "Rejuvenation"
	[(GetSpellInfo(48438))] = true, -- "Wild Growth"
	[(GetSpellInfo( 8936))] = true, -- "Regrowth"
	[(GetSpellInfo(  976))] = true, -- "Shadow Protection"
	[(GetSpellInfo(27683))] = true, -- "Prayer of Shadow Protection"
	[(GetSpellInfo( 1243))] = true, -- "Power Word: Fortitude"
	[(GetSpellInfo(21562))] = true, -- "Prayer of Fortitude"
	[(GetSpellInfo(14752))] = true, -- "Divine Spirit"
	[(GetSpellInfo(27681))] = true, -- "Prayer of Spirit"
	[(GetSpellInfo( 1126))] = true, -- "Mark of the Wild"
	[(GetSpellInfo(21849))] = true, -- "Gift of the Wild"
	[(GetSpellInfo(23028))] = true, -- "Arcane Brilliance"
	[(GetSpellInfo(61316))] = true, -- "Dalaran Brilliance"
	[(GetSpellInfo(  467))] = true, -- "Thorns"
	[(GetSpellInfo(19740))] = true, -- "Blessing of Might"
	[(GetSpellInfo(19742))] = true, -- "Blessing of Wisdom"
	[(GetSpellInfo(25782))] = true, -- "Greater Blessing of Might"
	[(GetSpellInfo(25894))] = true, -- "Greater Blessing of Wisdom"
}

local _G = getfenv(0)
local band, bor = _G.bit.band, _G.bit.bor

local MAX_LEVEL = 80

-- Messages use a new prefix; reports from RankWatch v1.09 ("RankWatch" prefix) use an incompatible format.
local COMM_PREFIX = "RankWatch2"

-- Only look at casts by ourselves and our party/raid members
local GROUP_FILTER = bor(COMBATLOG_OBJECT_AFFILIATION_MINE, COMBATLOG_OBJECT_AFFILIATION_PARTY, COMBATLOG_OBJECT_AFFILIATION_RAID)

local QUEUE_INTERVAL = 5	-- seconds between attempts to send queued whispers
local HELLO_THROTTLE = 10	-- minimum seconds between our HELLO broadcasts
local TARGET_LEVEL_GAP = 8	-- casts on group members more than this many levels below the caster are not checked

RankWatchSettings = {
	enabled = true,
	levels = RANKWATCH_WHISPER_ALL,
	channel = RANKWATCH_CHANNEL_WHISPER,
	explain = true,
	reports = {},
	ignore = {},
	announced = {},	-- ["name-level-spellId"] = true, every downrank we (or another RankWatch user) have reported
	explained = {}	-- [lowercase name] = true, players who already got the explanation whisper
}

-- Map every spell in RankWatch_RankData to the first rank of its chain, so all ranks of an ability share a key
local familyOf = {}
do
	local hasPrevious = {}
	for _, data in pairs(RankWatch_RankData) do
		if data.next then
			hasPrevious[data.next] = true
		end
	end
	for spellId in pairs(RankWatch_RankData) do
		if not hasPrevious[spellId] then
			local id = spellId
			while id and not familyOf[id] do
				familyOf[id] = spellId
				id = RankWatch_RankData[id].next
			end
		end
	end
end

local session = {
	notifiedFamilies = {},	-- ["name-familyId"] = true, report each ability family once per session
	levelSeen = {}			-- [name] = level at the first downrank seen this session
}

local whisperQueue = {}		-- whispers waiting until we and the target are out of combat
local users = {}			-- other RankWatch users in our group: [name] = true if they are willing to whisper
local leadOverride = nil	-- set by "/rankwatch lead"
local wasInGroup = false
local lastHello = 0
local helloPending = nil
local sinceTick, sinceQueue = 0, 0

function RankWatch_ChatMsg(msg)
		DEFAULT_CHAT_FRAME:AddMessage(msg)
end

local chat = RankWatch_ChatMsg

SLASH_RANKWATCH1 = '/rankwatch';
function SlashCmdList.RANKWATCH(msg, editbox)
	if (not msg or msg == "" or msg == "help") then
		chat(string.format(L["USAGE_01"],RankWatch_Version))
		chat(L["USAGE_02"])
		chat(L["USAGE_03"])
		chat(L["USAGE_04"])
		chat(L["USAGE_05"])
		chat(L["USAGE_06"])
		chat(L["USAGE_07"])
		chat(L["USAGE_08"])
		chat(L["USAGE_09"])
		chat(L["USAGE_10"])
		chat(L["USAGE_11"])
		chat(L["USAGE_12"])
		chat(L["USAGE_13"])
		chat(L["USAGE_15"])
		chat(L["USAGE_16"])
		chat(L["USAGE_17"])
		chat(L["USAGE_LEAD"])

		if RankWatchSettings.enabled then
			chat(L["RANKWATCH_ENABLED"])
			local whisperLevel = L["ANY_LEVEL"]
			if RankWatchSettings.levels == RANKWATCH_WHISPER_80 then
				whisperLevel = L["LEVEL_80_ONLY"]
			end

			if  RankWatchSettings.channel == RANKWATCH_CHANNEL_PARTY then
				chat(string.format(L["RANKWATCH_CHANNEL_PARTY"],whisperLevel))
			elseif  RankWatchSettings.channel == RANKWATCH_CHANNEL_SAY then
				chat(string.format(L["RANKWATCH_CHANNEL_SAY"],whisperLevel))
			elseif  RankWatchSettings.channel == RANKWATCH_CHANNEL_WHISPER then
				chat(string.format(L["RANKWATCH_CHANNEL_WHISPER"],whisperLevel))
			else
				chat(L["RANKWATCH_CHANNEL_NOWHISPERS"])
			end

			if RankWatchSettings.channel and RankWatchSettings.explain then
				chat(L["RANKWATCH_CHANNEL_WHISPER_EXPLAIN"])
			else
				chat(L["RANKWATCH_CHANNEL_WHISPER_NOEXPLAIN"])
			end
		else
			chat(L["RANKWATCH_DISABLED"])
		end

		if RankWatch_GetPartyType() then
			local lead = RankWatch_GetLead()
			if lead then
				chat(string.format(L["CURRENT_LEAD"], lead))
			else
				chat(L["NO_LEAD"])
			end
		end
	elseif (msg == "enable") then
		RankWatchSettings.enabled = true
		chat(L["REPORT_DOWNRANKED"])
		RankWatch_RequestHello(0)
	elseif (msg == "disable") then
		RankWatchSettings.enabled = false
		chat(L["NOREPORT_DOWNRANKED"])
		RankWatch_RequestHello(0)
	elseif (msg == "report") then
		RankWatch_Report()
	elseif (msg == "clear") then
		RankWatchSettings.reports = { }
		RankWatchSettings.announced = { }
		RankWatchSettings.explained = { }
		session.notifiedFamilies = { }
		session.levelSeen = { }
		chat(L["SEEN_LIST_CLEARED"])
	elseif (msg == "80" or msg == "whisper 80") then
		RankWatchSettings.levels = RANKWATCH_WHISPER_80
		chat(L["REPORT_ONLY_80"])
		if not RankWatchSettings.channel then
			RankWatchSettings.channel = RANKWATCH_CHANNEL_WHISPER
			RankWatch_RequestHello(0)
		end
	elseif (msg == "all" or msg == "whisper all") then
		RankWatchSettings.levels = RANKWATCH_WHISPER_ALL
		chat(L["REPORT_ALL_LEVELS"])
		if not RankWatchSettings.channel then
			RankWatchSettings.channel = RANKWATCH_CHANNEL_WHISPER
			RankWatch_RequestHello(0)
		end
	elseif (msg == "whisper disable" or msg == "whisper none" or msg == "none") then
		RankWatchSettings.channel = RANKWATCH_CHANNEL_DISABLED
		chat(L["REPORT_ONLY_SELF"])
		RankWatch_RequestHello(0)
	elseif (msg == "party") then
		RankWatchSettings.channel = RANKWATCH_CHANNEL_PARTY
		chat(L["REPORT_GROUP_CHAT"])
		RankWatch_RequestHello(0)
	elseif (msg == "say") then
		RankWatchSettings.channel = RANKWATCH_CHANNEL_SAY
		chat(L["REPORT_SAY"])
		RankWatch_RequestHello(0)
	elseif (msg == "whisper") then
		RankWatchSettings.channel = RANKWATCH_CHANNEL_WHISPER
		chat(L["REPORT_WHISPER"])
		RankWatch_RequestHello(0)
	elseif (msg == "explain enable") then
		RankWatchSettings.explain = true
		chat(L["ADD_BOILERPLATE"])
	elseif (msg == "explain disable") then
		RankWatchSettings.explain = false
		chat(L["NO_BOILERPLATE"])
	elseif (msg == "ignore") then
		RankWatch_ReportIgnoreList()
	elseif (msg == "lead") then
		RankWatch_TakeLead()
	elseif (msg:match("^ignore ")) then
		local player = msg:match("^ignore (.*)")
		RankWatch_Ignore(player)
	elseif (msg:match("^watch ")) then
		local player = msg:match("^watch (.*)")
		RankWatch_Watch(player)
	else
		chat(L["INVALID_COMMAND"])
	end
end

function RankWatch_GetPartyType()
	if UnitInBattleground("player") then
		return "BATTLEGROUND"
	elseif UnitInRaid("player") then
		return "RAID"
	elseif UnitInParty("player") then
		return "PARTY"
	else
		return nil
	end
end

function RankWatch_GetSpellInfo(spellId)
	-- GetSpellInfo returns a string like "Rank 5", we want to convert that to a number.
	local spellName, spellRank = GetSpellInfo(spellId)
	local spellRankNum = tonumber(spellRank:match("%d+")) or 1
	return spellName, spellRankNum
end

-- How many levels a player may lag behind a newly available rank before it is reported.
-- Leveling players get some slack, since they can't visit a trainer every level.
function RankWatch_LevelSlack(level)
	if level >= MAX_LEVEL or level < 10 then
		return 0
	elseif level < 20 then
		return 3
	elseif level < MAX_LEVEL - 10 then
		return 2
	else
		return 1
	end
end

local function IsInMyGroup(name)
	return name == UnitName("player") or UnitInRaid(name) or UnitInParty(name)
end

--------------------------------------------------------------------------------
-- Group coordination
--
-- RankWatch users in a group announce themselves with HELLO. Exactly one of them, the lead,
-- sends the whispers: the alphabetically first user who is willing to whisper, unless someone
-- took the lead with "/rankwatch lead". Every user broadcasts what it detects (REPORT), so the
-- lead also whispers about casts it was too far away to see, and nobody whispers twice.
--------------------------------------------------------------------------------

local function SendComm(msg)
	local channel = RankWatch_GetPartyType()
	if channel then
		SendAddonMessage(COMM_PREFIX, msg, channel)
	end
end

function RankWatch_CanWhisper()
	return (RankWatchSettings.enabled and RankWatchSettings.channel) and true or false
end

local function IsLeadCandidate(name)
	if name == UnitName("player") then
		return RankWatch_CanWhisper()
	end
	return users[name]
end

function RankWatch_GetLead()
	if leadOverride and IsLeadCandidate(leadOverride) then
		return leadOverride
	end
	local lead = nil
	if RankWatch_CanWhisper() then
		lead = UnitName("player")
	end
	for name, canWhisper in pairs(users) do
		if canWhisper and (not lead or name < lead) then
			lead = name
		end
	end
	return lead
end

function RankWatch_SendHello()
	lastHello = GetTime()
	helloPending = nil
	SendComm("HELLO\t" .. (RankWatch_CanWhisper() and "1" or "0") .. "\t" .. (leadOverride or ""))
end

-- Batch HELLOs: several triggers within the throttle window result in a single broadcast
function RankWatch_RequestHello(delay)
	local at = math.max(GetTime() + delay, lastHello + HELLO_THROTTLE)
	if not helloPending or at < helloPending then
		helloPending = at
	end
end

function RankWatch_TakeLead()
	if not RankWatch_CanWhisper() then
		chat(L["LEAD_UNAVAILABLE"])
		return
	end
	leadOverride = UnitName("player")
	SendComm("LEAD\t" .. leadOverride)
	chat(L["LEAD_TAKEN"])
end

function RankWatch_OnRosterChanged()
	local inGroup = RankWatch_GetPartyType() ~= nil
	if not inGroup then
		users = {}
		leadOverride = nil
	else
		for name in pairs(users) do
			if not IsInMyGroup(name) then
				users[name] = nil
			end
		end
		if not wasInGroup then
			-- We just joined; existing members answer our HELLO with their own
			RankWatch_RequestHello(2)
		end
	end
	wasInGroup = inGroup
end

function RankWatch_OnComm(message, sender)
	-- Addon messages to the group are echoed back to the sender
	if sender == UnitName("player") then return end

	local command, a, b, c, d, e = strsplit("\t", message)
	if command == "HELLO" then
		local isNew = users[sender] == nil
		users[sender] = (a == "1")
		if b and b ~= "" then
			leadOverride = b
		end
		if isNew then
			RankWatch_RequestHello(1)
		end
	elseif command == "LEAD" then
		if a and a ~= "" then
			leadOverride = a
		end
	elseif command == "REPORT" then
		local sourceName, level, lowId, maxId = a, tonumber(b), tonumber(c), tonumber(d)
		if sourceName and level and RankWatch_RankData[lowId] and RankWatch_RankData[maxId] then
			RankWatch_HandleDetection(sourceName, level, lowId, maxId, e == "1")
		end
	end
end

--------------------------------------------------------------------------------
-- Detection and notification
--------------------------------------------------------------------------------

-- Handles a downranked spell seen by us or reported by another RankWatch user.
-- Returns true if it had not been reported before.
-- suppress: the reporting user has the caster on their ignore list, so nobody should whisper them.
function RankWatch_HandleDetection(sourceName, sourceLevel, lowId, maxId, suppress)
	local key = sourceName .. "-" .. sourceLevel .. "-" .. lowId
	local familyKey = sourceName .. "-" .. familyOf[lowId]
	if RankWatchSettings.announced[key] or session.notifiedFamilies[familyKey] then
		return false
	end
	RankWatchSettings.announced[key] = true
	session.notifiedFamilies[familyKey] = true

	local lowRankName, lowRank = RankWatch_GetSpellInfo(lowId)
	local maxRankName, maxRank = RankWatch_GetSpellInfo(maxId)
	local spellLevel = RankWatch_RankData[maxId].level
	local now = time()

	if not RankWatchSettings.reports[sourceName] then
		RankWatchSettings.reports[sourceName] = {}
	end
	RankWatchSettings.reports[sourceName][lowRankName] = { time = now, lowId = lowId, maxId = maxId }

	local ignored = RankWatchSettings.ignore[sourceName:lower()]
	if not ignored then
		if lowRankName == maxRankName then
			chat(string.format(L["LOCAL_SPELL_LOW"],sourceName,lowRankName,lowRank,spellLevel,maxRank,date(L["DATE_FORMAT"], now)));
		else
			chat(string.format(L["LOCAL_SPELL_REPLACED"],sourceName,lowRankName,lowRank,spellLevel,maxRankName,maxRank,date(L["DATE_FORMAT"], now)));
		end
	end

	-- Players running RankWatch are told by their own copy
	if not suppress and not ignored and users[sourceName] == nil and sourceName ~= UnitName("player")
			and RankWatch_GetLead() == UnitName("player") then
		table.insert(whisperQueue, { name = sourceName, lowId = lowId, maxId = maxId })
	end
	return true
end

function RankWatch_ProcessQueue()
	if #whisperQueue == 0 or InCombatLockdown() or UnitIsDeadOrGhost("player") then return end

	local retry = {}
	for _, entry in ipairs(whisperQueue) do
		if UnitAffectingCombat(entry.name) then
			table.insert(retry, entry)
		else
			RankWatch_Whisper(entry.name, entry.lowId, entry.maxId)
		end
	end
	whisperQueue = retry
end

function RankWatch_OnUpdate(self, elapsed)
	sinceTick = sinceTick + elapsed
	if sinceTick < 1 then return end
	sinceQueue = sinceQueue + sinceTick
	sinceTick = 0

	if helloPending and GetTime() >= helloPending then
		RankWatch_SendHello()
	end

	if sinceQueue >= QUEUE_INTERVAL then
		sinceQueue = 0
		RankWatch_ProcessQueue()
	end
end

function RankWatch_OnLoad(self)
  self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
  self:RegisterEvent("ADDON_LOADED");
  self:RegisterEvent("CHAT_MSG_ADDON");
  self:RegisterEvent("PLAYER_ENTERING_WORLD");
  self:RegisterEvent("PARTY_MEMBERS_CHANGED");
  self:RegisterEvent("RAID_ROSTER_UPDATE");
end

function RankWatch_OnEvent(self, event, ...)
	if event == "CHAT_MSG_ADDON" then
		local prefix, message, _, sender = ...
		if prefix == COMM_PREFIX then
			RankWatch_OnComm(message, sender)
		end
	elseif event == "PARTY_MEMBERS_CHANGED" or event == "RAID_ROSTER_UPDATE" then
		RankWatch_OnRosterChanged()
	elseif event == "PLAYER_ENTERING_WORLD" then
		-- also covers /reload while in a group
		wasInGroup = false
		RankWatch_OnRosterChanged()
	elseif event == "ADDON_LOADED" then
		local addonName = ...;
		if addonName:lower() == "rankwatch" then

			-- Settings from older versions which are no longer used
			RankWatchSettings.repeatInterval = nil
			RankWatchSettings.interval = nil
			RankWatchSettings.delay = nil
			RankWatchSettings.checkAllLevels = nil
			RankWatchSettings.whisperAllLevels = nil

			if type(RankWatchSettings.channel) == "nil" then
				RankWatchSettings.channel = RANKWATCH_CHANNEL_WHISPER
			end

			if not RankWatchSettings.levels then
				RankWatchSettings.levels = RANKWATCH_WHISPER_ALL
			end

			-- if the setting doesn't exist, then the default is true
			if type(RankWatchSettings.explain) == "nil" then
				RankWatchSettings.explain = true
			end

			RankWatchSettings.reports = RankWatchSettings.reports or {}
			RankWatchSettings.ignore = RankWatchSettings.ignore or {}
			RankWatchSettings.announced = RankWatchSettings.announced or {}
			RankWatchSettings.explained = RankWatchSettings.explained or {}

			-- Make sure the keys are all lowercase
			local newIgnore = {}
			for k, v in pairs(RankWatchSettings.ignore) do
				if type(v) == "string" then
					newIgnore[k:lower()] = v
				elseif v then
					newIgnore[k:lower()] = k
				end
			end
			RankWatchSettings.ignore = newIgnore

			if RankWatchSettings.enabled then
				chat(string.format(L["RANKWATCH_WELCOME_ENABLED"], RankWatch_Version))
				RankWatch_ReportIgnoreList()
			else
				chat(string.format(L["RANKWATCH_WELCOME_DISABLED"], RankWatch_Version))
			end
		end
	elseif (event == "COMBAT_LOG_EVENT_UNFILTERED") then
		if not RankWatchSettings.enabled or UnitInBattleground("player") then return end

		local timestamp, combatEvent, sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags, spellId, spellName =
		...; -- Those arguments appear for all combat event variants.

		-- Only SPELL_??? events have a rank, and we only care about players in our group
		if not sourceName
				or band(sourceFlags, COMBATLOG_OBJECT_TYPE_MASK) ~= COMBATLOG_OBJECT_TYPE_PLAYER
				or band(sourceFlags, GROUP_FILTER) == 0
				or not combatEvent:match("^SPELL")
				or combatEvent == "SPELL_AURA_REMOVED" then
			return
		end

		-- RankWatch_RankData contains rank, level, and (if there is a higher rank) the spellID of the next higher rank.
		local spellData = RankWatch_RankData[spellId]
		if not spellData then return end

		-- Players who are mind controlled or charmed don't choose their spells
		if UnitIsCharmed(sourceName) or (UnitIsPossessed and UnitIsPossessed(sourceName))
				or UnitIsEnemy("player", sourceName) then
			return
		end
		if sourceName == UnitName("player") and not HasFullControl() then return end

		local casterLevel = UnitLevel(sourceName) or 0
		if casterLevel <= 0 then return end

		-- Casts on much lower level group members (e.g. buffing a leveling friend) are not checked.
		-- UnitLevel returns 0 for players outside the group and for NPCs.
		local destLevel = destName and UnitLevel(destName) or 0
		if destLevel > 0 and destLevel < casterLevel - TARGET_LEVEL_GAP then return end

		local sourceLevel = casterLevel - RankWatch_LevelSlack(casterLevel)

		-- If we're buffing or HoTting someone lower level than us, then the level of the target
		-- determines the level of the buff or HoT which is applied.
		if RankWatch_Target_Level[spellName] and destName then
			local destUnit = destName
			if (UnitName("target")) == destName then
				-- this makes UnitLevel work when the target is not in our group but is our target
				destUnit = "target"
			end
			local level = UnitLevel(destUnit) or 0
			if level <= 0 then return end -- target level unknown
			if level < sourceLevel then
				sourceLevel = level
			end
		end

		local maxRankId = spellId
		local maxRankData = spellData
		while (maxRankData.next and RankWatch_RankData[maxRankData.next].level <= sourceLevel) do
			maxRankId = maxRankData.next
			maxRankData = RankWatch_RankData[maxRankData.next]
		end

		-- Some spells are downranked for legitimate reasons. Don't report these spells.
		if (spellData.rank == 1 and RankWatch_Rank1_Allowed[spellName])
				or (spellData.rank == maxRankData.rank - 1 and RankWatch_RankMaxMinusOne_Allowed[spellName])
				or RankWatch_AnyRank_Allowed[spellName] then
			return
		end
		if maxRankId == spellId then return end

		-- Don't report players who leveled up during this session, they may not have visited a trainer yet
		local levelSeen = session.levelSeen[sourceName]
		if not levelSeen then
			session.levelSeen[sourceName] = casterLevel
		elseif casterLevel > levelSeen then
			return
		end

		local suppress = RankWatchSettings.ignore[sourceName:lower()] and true or false
		if RankWatch_HandleDetection(sourceName, casterLevel, spellId, maxRankId, suppress) then
			SendComm("REPORT\t" .. sourceName .. "\t" .. casterLevel .. "\t" .. spellId .. "\t" .. maxRankId .. "\t" .. (suppress and "1" or "0"))
		end
	end
end

function RankWatch_Report()
	local seenSpells = false
	local lastSeenName = ""

	for sourceName, spells in pairs(RankWatchSettings.reports) do
		for spellName, spellData in pairs(spells) do
			if spellData.lowId then
				if not seenSpells then
					chat(L["REPORT_SEEN"])
					seenSpells = true;
				end
				if lastSeenName ~= sourceName then
					chat(sourceName .. ":")
					lastSeenName = sourceName
				end

				local lowRankName, lowRank = RankWatch_GetSpellInfo(spellData.lowId)
				local maxRankName, maxRank = RankWatch_GetSpellInfo(spellData.maxId)
				local spellLevel = RankWatch_RankData[spellData.maxId].level
				if lowRankName == maxRankName then
					chat("  " .. string.format(L["RANKWATCH_REPORT_LINE_LOW"],lowRankName,lowRank,spellLevel,maxRank,date(L["DATE_FORMAT"], spellData.time)));
				else
					chat("  " .. string.format(L["RANKWATCH_REPORT_LINE_REPLACED"],lowRankName,lowRank,spellLevel,maxRankName,maxRank,date(L["DATE_FORMAT"], spellData.time)));
				end
			end
		end
	end
	if not seenSpells then
		chat(L["RANKWATCH_REPORT_NONE_SEEN"])
	end
end

function RankWatch_Ignore(player)
	local p = player:lower()
	if (not RankWatchSettings.ignore[p]) then
		RankWatchSettings.ignore[p] = player
		chat(string.format(L["PLAYER_NOW_IGNORED"],player))
	else
		chat(string.format(L["PLAYER_ALREADY_IGNORED"],player))
	end
end

function RankWatch_Watch(player)
	local p = player:lower()
	if (RankWatchSettings.ignore[p]) then
		RankWatchSettings.ignore[p] = nil
		chat(string.format(L["PLAYER_NOW_WATCHED"],player))
	else
		chat(string.format(L["PLAYER_ALREADY_WATCHED"], player))
	end
end

function RankWatch_ReportIgnoreList()
	local seenAny = false
	local s = L["IGNORED_PLAYERS"]

	for player, isIgnored in pairs(RankWatchSettings.ignore) do
		if isIgnored then
			if seenAny then
				s = s .. ", "
			else
				seenAny = true
			end

			-- the value used to be a boolean, if it's a string, then that's the player's name as entered.
			if type(isIgnored) == "string" then
				s = s .. isIgnored
			else
				s = s .. player
			end
		end
	end
	if seenAny then
		chat(s)
	else
		chat(L["NOONE_IGNORED"])
	end
end

function RankWatch_Whisper(sourceName, lowId, maxId)
	if (RankWatchSettings.enabled and RankWatchSettings.channel
		and (UnitLevel(sourceName) == MAX_LEVEL or RankWatchSettings.levels == RANKWATCH_WHISPER_ALL)
		and sourceName ~= UnitName("player")) then

		local channel = "WHISPER"
		if RankWatchSettings.channel == RANKWATCH_CHANNEL_SAY then
			channel = "SAY"
		elseif RankWatchSettings.channel == RANKWATCH_CHANNEL_PARTY then
			channel = RankWatch_GetPartyType()
		end

		local lowRankName, lowRank = RankWatch_GetSpellInfo(lowId)
		local maxRankName, maxRank = RankWatch_GetSpellInfo(maxId)
		local spellLevel = RankWatch_RankData[maxId].level

		if channel then
			if lowRankName == maxRankName then
				SendChatMessage(string.format(L["WHISPER_SPELL_LOW_WARNING"], sourceName, lowRankName, lowRank, spellLevel, maxRank),
					channel, nil, sourceName)
			else
				SendChatMessage(string.format(L["WHISPER_SPELL_REPLACED_WARNING"], sourceName, lowRankName, lowRank, spellLevel, maxRankName, maxRank),
					channel, nil, sourceName)
			end
		end

		-- The explanation is only sent along with whispers, not to /say or group chat
		local key = sourceName:lower()
		if channel == "WHISPER" and RankWatchSettings.explain and not RankWatchSettings.explained[key] then
			RankWatchSettings.explained[key] = true
			SendChatMessage(string.format(L["WHISPER_BOILERPLATE_PART1"], maxRankName, maxRank), "WHISPER", nil, sourceName)
			SendChatMessage(L["WHISPER_BOILERPLATE_PART2"], "WHISPER", nil, sourceName)
		end
	end
end
