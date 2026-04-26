--
-- RankWatch_RankData
-- For each trainable spell which has more than one rank, there is an entry in this table for each rank.
--
-- key: ID of the spell.
--   level: the level at which this rank is trained
--   rank: the rank trained at this level
--   next: the ID of the next higher rank (nil if this is the highest rank)

RankWatch_RankData = {
[10] = { level=20, rank=1, next=6141 }, -- Blizzard
[17] = { level=6, rank=1, next=592 }, -- Power Word: Shield
[53] = { level=4, rank=1, next=2589 }, -- Backstab
[78] = { level=1, rank=1, next=284 }, -- Heroic Strike
[99] = { level=10, rank=1, next=1735 }, -- Demoralizing Roar
[100] = { level=4, rank=1, next=6178 }, -- Charge
[116] = { level=4, rank=1, next=205 }, -- Frostbolt
[118] = { level=8, rank=1, next=12824 }, -- Polymorph
[120] = { level=26, rank=1, next=8492 }, -- Cone of Cold
[122] = { level=10, rank=1, next=865 }, -- Frost Nova
[133] = { level=1, rank=1, next=143 }, -- Fireball
[136] = { level=12, rank=1, next=3111 }, -- Mend Pet
[139] = { level=8, rank=1, next=6074 }, -- Renew
[143] = { level=6, rank=2, next=145 }, -- Fireball
[145] = { level=12, rank=3, next=3140 }, -- Fireball
[168] = { level=1, rank=1, next=7300 }, -- Frost Armor
[172] = { level=4, rank=1, next=6222 }, -- Corruption
[205] = { level=8, rank=2, next=837 }, -- Frostbolt
[284] = { level=8, rank=2, next=285 }, -- Heroic Strike
[285] = { level=16, rank=3, next=1608 }, -- Heroic Strike
[324] = { level=8, rank=1, next=325 }, -- Lightning Shield
[325] = { level=16, rank=2, next=905 }, -- Lightning Shield
[331] = { level=1, rank=1, next=332 }, -- Healing Wave
[332] = { level=6, rank=2, next=547 }, -- Healing Wave
[339] = { level=8, rank=1, next=1062 }, -- Entangling Roots
[348] = { level=1, rank=1, next=707 }, -- Immolate
[370] = { level=12, rank=1, next=8012 }, -- Purge
[403] = { level=1, rank=1, next=529 }, -- Lightning Bolt
[408] = { level=30, rank=1, next=8643 }, -- Kidney Shot
[421] = { level=32, rank=1, next=930 }, -- Chain Lightning
[465] = { level=1, rank=1, next=10290 }, -- Devotion Aura
[467] = { level=6, rank=1, next=782 }, -- Thorns
[469] = { level=68, rank=1, next=47439 }, -- Commanding Shout
[527] = { level=18, rank=1, next=988 }, -- Dispel Magic
[529] = { level=8, rank=2, next=548 }, -- Lightning Bolt
[543] = { level=20, rank=1, next=8457 }, -- Fire Ward
[547] = { level=12, rank=3, next=913 }, -- Healing Wave
[548] = { level=14, rank=3, next=915 }, -- Lightning Bolt
[585] = { level=1, rank=1, next=591 }, -- Smite
[587] = { level=6, rank=1, next=597 }, -- Conjure Food
[588] = { level=12, rank=1, next=7128 }, -- Inner Fire
[589] = { level=4, rank=1, next=594 }, -- Shadow Word: Pain
[591] = { level=6, rank=2, next=598 }, -- Smite
[592] = { level=12, rank=2, next=600 }, -- Power Word: Shield
[594] = { level=10, rank=2, next=970 }, -- Shadow Word: Pain
[596] = { level=30, rank=1, next=996 }, -- Prayer of Healing
[597] = { level=12, rank=2, next=990 }, -- Conjure Food
[598] = { level=14, rank=3, next=984 }, -- Smite
[600] = { level=18, rank=3, next=3747 }, -- Power Word: Shield
[602] = { level=30, rank=3, next=1006 }, -- Inner Fire
[603] = { level=60, rank=1, next=30910 }, -- Curse of Doom
[604] = { level=12, rank=1, next=8450 }, -- Dampen Magic
[633] = { level=10, rank=1, next=2800 }, -- Lay on Hands
[635] = { level=1, rank=1, next=639 }, -- Holy Light
[639] = { level=6, rank=2, next=647 }, -- Holy Light
[643] = { level=20, rank=3, next=10291 }, -- Devotion Aura
[647] = { level=14, rank=3, next=1026 }, -- Holy Light
[686] = { level=1, rank=1, next=695 }, -- Shadow Bolt
[687] = { level=1, rank=1, next=696 }, -- Demon Skin
[689] = { level=14, rank=1, next=699 }, -- Drain Life
[693] = { level=18, rank=1, next=20752 }, -- Create Soulstone
[695] = { level=6, rank=2, next=705 }, -- Shadow Bolt
[696] = { level=10, rank=2, next=706 }, -- Demon Skin
[699] = { level=22, rank=2, next=709 }, -- Drain Life
[702] = { level=4, rank=1, next=1108 }, -- Curse of Weakness
[703] = { level=14, rank=1, next=8631 }, -- Garrote
[705] = { level=12, rank=3, next=1088 }, -- Shadow Bolt
[706] = { level=20, rank=1, next=1086 }, -- Demon Armor
[707] = { level=10, rank=2, next=1094 }, -- Immolate
[709] = { level=30, rank=3, next=7651 }, -- Drain Life
[710] = { level=28, rank=1, next=18647 }, -- Banish
[724] = { level=40, rank=1, next=27870 }, -- Lightwell
[740] = { level=30, rank=1, next=8918 }, -- Tranquility
[755] = { level=12, rank=1, next=3698 }, -- Health Funnel
[759] = { level=28, rank=1, next=3552 }, -- Conjure Mana Gem
[769] = { level=34, rank=3, next=9754 }, -- Swipe (Bear)
[772] = { level=4, rank=1, next=6546 }, -- Rend
[774] = { level=4, rank=1, next=1058 }, -- Rejuvenation
[779] = { level=16, rank=1, next=780 }, -- Swipe (Bear)
[780] = { level=24, rank=2, next=769 }, -- Swipe (Bear)
[782] = { level=14, rank=2, next=1075 }, -- Thorns
[837] = { level=14, rank=3, next=7322 }, -- Frostbolt
[845] = { level=20, rank=1, next=7369 }, -- Cleave
[853] = { level=8, rank=1, next=5588 }, -- Hammer of Justice
[865] = { level=26, rank=2, next=6131 }, -- Frost Nova
[879] = { level=20, rank=1, next=5614 }, -- Exorcism
[905] = { level=24, rank=3, next=945 }, -- Lightning Shield
[913] = { level=18, rank=4, next=939 }, -- Healing Wave
[915] = { level=20, rank=4, next=943 }, -- Lightning Bolt
[930] = { level=40, rank=2, next=2860 }, -- Chain Lightning
[939] = { level=24, rank=5, next=959 }, -- Healing Wave
[943] = { level=26, rank=5, next=6041 }, -- Lightning Bolt
[945] = { level=32, rank=4, next=8134 }, -- Lightning Shield
[959] = { level=32, rank=6, next=8005 }, -- Healing Wave
[970] = { level=18, rank=3, next=992 }, -- Shadow Word: Pain
[974] = { level=50, rank=1, next=32593 }, -- Earth Shield
[976] = { level=30, rank=1, next=10957 }, -- Shadow Protection
[980] = { level=8, rank=1, next=1014 }, -- Curse of Agony
[984] = { level=22, rank=4, next=1004 }, -- Smite
[988] = { level=36, rank=2 }, -- Dispel Magic
[990] = { level=22, rank=3, next=6129 }, -- Conjure Food
[992] = { level=26, rank=4, next=2767 }, -- Shadow Word: Pain
[996] = { level=40, rank=2, next=10960 }, -- Prayer of Healing
[1004] = { level=30, rank=5, next=6060 }, -- Smite
[1006] = { level=40, rank=4, next=10951 }, -- Inner Fire
[1008] = { level=18, rank=1, next=8455 }, -- Amplify Magic
[1014] = { level=18, rank=2, next=6217 }, -- Curse of Agony
[1022] = { level=10, rank=1, next=5599 }, -- Hand of Protection
[1026] = { level=22, rank=4, next=1042 }, -- Holy Light
[1032] = { level=40, rank=5, next=10292 }, -- Devotion Aura
[1042] = { level=30, rank=5, next=3472 }, -- Holy Light
[1058] = { level=10, rank=2, next=1430 }, -- Rejuvenation
[1062] = { level=18, rank=2, next=5195 }, -- Entangling Roots
[1064] = { level=40, rank=1, next=10622 }, -- Chain Heal
[1075] = { level=24, rank=3, next=8914 }, -- Thorns
[1079] = { level=20, rank=1, next=9492 }, -- Rip
[1082] = { level=20, rank=1, next=3029 }, -- Claw
[1086] = { level=30, rank=2, next=11733 }, -- Demon Armor
[1088] = { level=20, rank=4, next=1106 }, -- Shadow Bolt
[1094] = { level=20, rank=3, next=2941 }, -- Immolate
[1098] = { level=30, rank=1, next=11725 }, -- Enslave Demon
[1106] = { level=28, rank=5, next=7641 }, -- Shadow Bolt
[1108] = { level=12, rank=2, next=6205 }, -- Curse of Weakness
[1120] = { level=10, rank=1, next=8288 }, -- Drain Soul
[1126] = { level=1, rank=1, next=5232 }, -- Mark of the Wild
[1130] = { level=6, rank=1, next=14323 }, -- Hunter's Mark
[1160] = { level=14, rank=1, next=6190 }, -- Demoralizing Shout
[1243] = { level=1, rank=1, next=1244 }, -- Power Word: Fortitude
[1244] = { level=12, rank=2, next=1245 }, -- Power Word: Fortitude
[1245] = { level=24, rank=3, next=2791 }, -- Power Word: Fortitude
[1329] = { level=50, rank=1, next=34411 }, -- Mutilate
[1430] = { level=16, rank=3, next=2090 }, -- Rejuvenation
[1449] = { level=14, rank=1, next=8437 }, -- Arcane Explosion
[1454] = { level=6, rank=1, next=1455 }, -- Life Tap
[1455] = { level=16, rank=2, next=1456 }, -- Life Tap
[1456] = { level=26, rank=3, next=11687 }, -- Life Tap
[1459] = { level=1, rank=1, next=1460 }, -- Arcane Intellect
[1460] = { level=14, rank=2, next=1461 }, -- Arcane Intellect
[1461] = { level=28, rank=3, next=10156 }, -- Arcane Intellect
[1463] = { level=20, rank=1, next=8494 }, -- Mana Shield
[1464] = { level=30, rank=1, next=8820 }, -- Slam
[1490] = { level=32, rank=1, next=11721 }, -- Curse of the Elements
[1495] = { level=16, rank=1, next=14269 }, -- Mongoose Bite
[1499] = { level=20, rank=1, next=14310 }, -- Freezing Trap
[1510] = { level=40, rank=1, next=14294 }, -- Volley
[1513] = { level=14, rank=1, next=14326 }, -- Scare Beast
[1535] = { level=12, rank=1, next=8498 }, -- Fire Nova Totem
[1608] = { level=24, rank=4, next=11564 }, -- Heroic Strike
[1714] = { level=26, rank=1, next=11719 }, -- Curse of Tongues
[1735] = { level=20, rank=2, next=9490 }, -- Demoralizing Roar
[1752] = { level=1, rank=1, next=1757 }, -- Sinister Strike
[1757] = { level=6, rank=2, next=1758 }, -- Sinister Strike
[1758] = { level=14, rank=3, next=1759 }, -- Sinister Strike
[1759] = { level=22, rank=4, next=1760 }, -- Sinister Strike
[1760] = { level=30, rank=5, next=8621 }, -- Sinister Strike
[1784] = { level=1, rank=1 }, -- Stealth
[1822] = { level=24, rank=1, next=1823 }, -- Rake
[1823] = { level=34, rank=2, next=1824 }, -- Rake
[1824] = { level=44, rank=3, next=9904 }, -- Rake
[1850] = { level=26, rank=1, next=9821 }, -- Dash
[1856] = { level=22, rank=1, next=1857 }, -- Vanish
[1857] = { level=42, rank=2, next=26889 }, -- Vanish
[1943] = { level=20, rank=1, next=8639 }, -- Rupture
[1949] = { level=30, rank=1, next=11683 }, -- Hellfire
[1966] = { level=16, rank=1, next=6768 }, -- Feint
[1978] = { level=4, rank=1, next=13549 }, -- Serpent Sting
[2006] = { level=10, rank=1, next=2010 }, -- Resurrection
[2008] = { level=12, rank=1, next=20609 }, -- Ancestral Spirit
[2010] = { level=22, rank=2, next=10880 }, -- Resurrection
[2048] = { level=69, rank=8, next=47436 }, -- Battle Shout
[2050] = { level=1, rank=1, next=2052 }, -- Lesser Heal
[2052] = { level=4, rank=2, next=2053 }, -- Lesser Heal
[2053] = { level=10, rank=3, next=2054 }, -- Lesser Heal
[2054] = { level=16, rank=1, next=2055 }, -- Heal
[2055] = { level=22, rank=2, next=6063 }, -- Heal
[2060] = { level=40, rank=1, next=10963 }, -- Greater Heal
[2061] = { level=20, rank=1, next=9472 }, -- Flash Heal
[2070] = { level=28, rank=2, next=11297 }, -- Sap
[2090] = { level=22, rank=4, next=2091 }, -- Rejuvenation
[2091] = { level=28, rank=5, next=3627 }, -- Rejuvenation
[2096] = { level=22, rank=1, next=10909 }, -- Mind Vision
[2098] = { level=1, rank=1, next=6760 }, -- Eviscerate
[2120] = { level=16, rank=1, next=2121 }, -- Flamestrike
[2121] = { level=24, rank=2, next=8422 }, -- Flamestrike
[2136] = { level=6, rank=1, next=2137 }, -- Fire Blast
[2137] = { level=14, rank=2, next=2138 }, -- Fire Blast
[2138] = { level=22, rank=3, next=8412 }, -- Fire Blast
[2362] = { level=36, rank=1, next=17727 }, -- Create Spellstone
[2589] = { level=12, rank=2, next=2590 }, -- Backstab
[2590] = { level=20, rank=3, next=2591 }, -- Backstab
[2591] = { level=28, rank=4, next=8721 }, -- Backstab
[2637] = { level=18, rank=1, next=18657 }, -- Hibernate
[2643] = { level=18, rank=1, next=14288 }, -- Multi-Shot
[2767] = { level=34, rank=5, next=10892 }, -- Shadow Word: Pain
[2791] = { level=36, rank=4, next=10937 }, -- Power Word: Fortitude
[2800] = { level=30, rank=2, next=10310 }, -- Lay on Hands
[2812] = { level=50, rank=1, next=10318 }, -- Holy Wrath
[2860] = { level=48, rank=3, next=10605 }, -- Chain Lightning
[2893] = { level=26, rank=1 }, -- Abolish Poison
[2908] = { level=22, rank=1, next=8955 }, -- Soothe Animal
[2912] = { level=20, rank=1, next=8949 }, -- Starfire
[2941] = { level=30, rank=4, next=11665 }, -- Immolate
[2944] = { level=20, rank=1, next=19276 }, -- Devouring Plague
[2948] = { level=22, rank=1, next=8444 }, -- Scorch
[2973] = { level=1, rank=1, next=14260 }, -- Raptor Strike
[2983] = { level=10, rank=1, next=8696 }, -- Sprint
[3029] = { level=28, rank=2, next=5201 }, -- Claw
[3044] = { level=6, rank=1, next=14281 }, -- Arcane Shot
[3111] = { level=20, rank=2, next=3661 }, -- Mend Pet
[3140] = { level=18, rank=4, next=8400 }, -- Fireball
[3472] = { level=38, rank=6, next=10328 }, -- Holy Light
[3552] = { level=38, rank=2, next=10053 }, -- Conjure Mana Gem
[3599] = { level=10, rank=1, next=6363 }, -- Searing Totem
[3627] = { level=34, rank=6, next=8910 }, -- Rejuvenation
[3661] = { level=28, rank=3, next=3662 }, -- Mend Pet
[3662] = { level=36, rank=4, next=13542 }, -- Mend Pet
[3674] = { level=50, rank=1, next=63668 }, -- Black Arrow
[3698] = { level=20, rank=2, next=3699 }, -- Health Funnel
[3699] = { level=28, rank=3, next=3700 }, -- Health Funnel
[3700] = { level=36, rank=4, next=11693 }, -- Health Funnel
[3747] = { level=24, rank=4, next=6065 }, -- Power Word: Shield
[5143] = { level=8, rank=1, next=5144 }, -- Arcane Missiles
[5144] = { level=16, rank=2, next=5145 }, -- Arcane Missiles
[5145] = { level=24, rank=3, next=8416 }, -- Arcane Missiles
[5171] = { level=10, rank=1, next=6774 }, -- Slice and Dice
[5176] = { level=1, rank=1, next=5177 }, -- Wrath
[5177] = { level=6, rank=2, next=5178 }, -- Wrath
[5178] = { level=14, rank=3, next=5179 }, -- Wrath
[5179] = { level=22, rank=4, next=5180 }, -- Wrath
[5180] = { level=30, rank=5, next=6780 }, -- Wrath
[5185] = { level=1, rank=1, next=5186 }, -- Healing Touch
[5186] = { level=8, rank=2, next=5187 }, -- Healing Touch
[5187] = { level=14, rank=3, next=5188 }, -- Healing Touch
[5188] = { level=20, rank=4, next=5189 }, -- Healing Touch
[5189] = { level=26, rank=5, next=6778 }, -- Healing Touch
[5195] = { level=28, rank=3, next=5196 }, -- Entangling Roots
[5196] = { level=38, rank=4, next=9852 }, -- Entangling Roots
[5201] = { level=38, rank=3, next=9849 }, -- Claw
[5211] = { level=14, rank=1, next=6798 }, -- Bash
[5215] = { level=20, rank=1 }, -- Prowl
[5217] = { level=24, rank=1, next=6793 }, -- Tiger's Fury
[5221] = { level=22, rank=1, next=6800 }, -- Shred
[5232] = { level=10, rank=2, next=6756 }, -- Mark of the Wild
[5234] = { level=30, rank=4, next=8907 }, -- Mark of the Wild
[5242] = { level=12, rank=2, next=6192 }, -- Battle Shout
[5277] = { level=8, rank=1, next=26669 }, -- Evasion
[5308] = { level=24, rank=1, next=20658 }, -- Execute
[5394] = { level=20, rank=1, next=6375 }, -- Healing Stream Totem
[5484] = { level=40, rank=1, next=17928 }, -- Howl of Terror
[5504] = { level=4, rank=1, next=5505 }, -- Conjure Water
[5505] = { level=10, rank=2, next=5506 }, -- Conjure Water
[5506] = { level=20, rank=3, next=6127 }, -- Conjure Water
[5570] = { level=30, rank=1, next=24974 }, -- Insect Swarm
[5588] = { level=24, rank=2, next=5589 }, -- Hammer of Justice
[5589] = { level=40, rank=3, next=10308 }, -- Hammer of Justice
[5599] = { level=24, rank=2, next=10278 }, -- Hand of Protection
[5614] = { level=28, rank=2, next=5615 }, -- Exorcism
[5615] = { level=36, rank=3, next=10312 }, -- Exorcism
[5675] = { level=26, rank=1, next=10495 }, -- Mana Spring Totem
[5676] = { level=18, rank=1, next=17919 }, -- Searing Pain
[5699] = { level=34, rank=3, next=11729 }, -- Create Healthstone
[5730] = { level=8, rank=1, next=6390 }, -- Stoneclaw Totem
[5740] = { level=20, rank=1, next=6219 }, -- Rain of Fire
[5782] = { level=8, rank=1, next=6213 }, -- Fear
[6041] = { level=32, rank=6, next=10391 }, -- Lightning Bolt
[6060] = { level=38, rank=6, next=10933 }, -- Smite
[6063] = { level=28, rank=3, next=6064 }, -- Heal
[6064] = { level=34, rank=4, next=2060 }, -- Heal
[6065] = { level=30, rank=5, next=6066 }, -- Power Word: Shield
[6066] = { level=36, rank=6, next=10898 }, -- Power Word: Shield
[6074] = { level=14, rank=2, next=6075 }, -- Renew
[6075] = { level=20, rank=3, next=6076 }, -- Renew
[6076] = { level=26, rank=4, next=6077 }, -- Renew
[6077] = { level=32, rank=5, next=6078 }, -- Renew
[6078] = { level=38, rank=6, next=10927 }, -- Renew
[6117] = { level=34, rank=1, next=22782 }, -- Mage Armor
[6127] = { level=30, rank=4, next=10138 }, -- Conjure Water
[6129] = { level=32, rank=4, next=10144 }, -- Conjure Food
[6131] = { level=40, rank=3, next=10230 }, -- Frost Nova
[6141] = { level=28, rank=2, next=8427 }, -- Blizzard
[6143] = { level=22, rank=1, next=8461 }, -- Frost Ward
[6178] = { level=26, rank=2, next=11578 }, -- Charge
[6190] = { level=24, rank=2, next=11554 }, -- Demoralizing Shout
[6192] = { level=22, rank=3, next=11549 }, -- Battle Shout
[6201] = { level=10, rank=1, next=6202 }, -- Create Healthstone
[6202] = { level=22, rank=2, next=5699 }, -- Create Healthstone
[6205] = { level=22, rank=3, next=7646 }, -- Curse of Weakness
[6213] = { level=32, rank=2, next=6215 }, -- Fear
[6215] = { level=56, rank=3 }, -- Fear
[6217] = { level=28, rank=3, next=11711 }, -- Curse of Agony
[6219] = { level=34, rank=2, next=11677 }, -- Rain of Fire
[6222] = { level=14, rank=2, next=6223 }, -- Corruption
[6223] = { level=24, rank=3, next=7648 }, -- Corruption
[6229] = { level=32, rank=1, next=11739 }, -- Shadow Ward
[6343] = { level=6, rank=1, next=8198 }, -- Thunder Clap
[6353] = { level=48, rank=1, next=17924 }, -- Soul Fire
[6363] = { level=20, rank=2, next=6364 }, -- Searing Totem
[6364] = { level=30, rank=3, next=6365 }, -- Searing Totem
[6365] = { level=40, rank=4, next=10437 }, -- Searing Totem
[6366] = { level=28, rank=1, next=17951 }, -- Create Firestone
[6375] = { level=30, rank=2, next=6377 }, -- Healing Stream Totem
[6377] = { level=40, rank=3, next=10462 }, -- Healing Stream Totem
[6390] = { level=18, rank=2, next=6391 }, -- Stoneclaw Totem
[6391] = { level=28, rank=3, next=6392 }, -- Stoneclaw Totem
[6392] = { level=38, rank=4, next=10427 }, -- Stoneclaw Totem
[6546] = { level=10, rank=2, next=6547 }, -- Rend
[6547] = { level=20, rank=3, next=6548 }, -- Rend
[6548] = { level=30, rank=4, next=11572 }, -- Rend
[6572] = { level=14, rank=1, next=6574 }, -- Revenge
[6574] = { level=24, rank=2, next=7379 }, -- Revenge
[6673] = { level=1, rank=1, next=5242 }, -- Battle Shout
[6756] = { level=20, rank=3, next=5234 }, -- Mark of the Wild
[6760] = { level=8, rank=2, next=6761 }, -- Eviscerate
[6761] = { level=16, rank=3, next=6762 }, -- Eviscerate
[6762] = { level=24, rank=4, next=8623 }, -- Eviscerate
[6768] = { level=28, rank=2, next=8637 }, -- Feint
[6770] = { level=10, rank=1, next=2070 }, -- Sap
[6774] = { level=42, rank=2 }, -- Slice and Dice
[6778] = { level=32, rank=6, next=8903 }, -- Healing Touch
[6780] = { level=38, rank=6, next=8905 }, -- Wrath
[6785] = { level=32, rank=1, next=6787 }, -- Ravage
[6787] = { level=42, rank=2, next=9866 }, -- Ravage
[6789] = { level=42, rank=1, next=17925 }, -- Death Coil
[6793] = { level=36, rank=2, next=9845 }, -- Tiger's Fury
[6798] = { level=30, rank=2, next=8983 }, -- Bash
[6800] = { level=30, rank=2, next=8992 }, -- Shred
[6807] = { level=10, rank=1, next=6808 }, -- Maul
[6808] = { level=18, rank=2, next=6809 }, -- Maul
[6809] = { level=26, rank=3, next=8972 }, -- Maul
[7128] = { level=20, rank=2, next=602 }, -- Inner Fire
[7294] = { level=16, rank=1, next=10298 }, -- Retribution Aura
[7300] = { level=10, rank=2, next=7301 }, -- Frost Armor
[7301] = { level=20, rank=3, next=7302 }, -- Frost Armor
[7302] = { level=30, rank=1, next=7320 }, -- Ice Armor
[7320] = { level=40, rank=2, next=10219 }, -- Ice Armor
[7322] = { level=20, rank=4, next=8406 }, -- Frostbolt
[7328] = { level=12, rank=1, next=10322 }, -- Redemption
[7369] = { level=30, rank=2, next=11608 }, -- Cleave
[7379] = { level=34, rank=3, next=11600 }, -- Revenge
[7641] = { level=36, rank=6, next=11659 }, -- Shadow Bolt
[7646] = { level=32, rank=4, next=11707 }, -- Curse of Weakness
[7648] = { level=34, rank=4, next=11671 }, -- Corruption
[7651] = { level=38, rank=4, next=11699 }, -- Drain Life
[8004] = { level=20, rank=1, next=8008 }, -- Lesser Healing Wave
[8005] = { level=40, rank=7, next=10395 }, -- Healing Wave
[8008] = { level=28, rank=2, next=8010 }, -- Lesser Healing Wave
[8010] = { level=36, rank=3, next=10466 }, -- Lesser Healing Wave
[8012] = { level=32, rank=2 }, -- Purge
[8017] = { level=1, rank=1, next=8018 }, -- Rockbiter Weapon
[8018] = { level=8, rank=2, next=8019 }, -- Rockbiter Weapon
[8019] = { level=16, rank=3, next=10399 }, -- Rockbiter Weapon
[8024] = { level=10, rank=1, next=8027 }, -- Flametongue Weapon
[8027] = { level=18, rank=2, next=8030 }, -- Flametongue Weapon
[8030] = { level=26, rank=3, next=16339 }, -- Flametongue Weapon
[8033] = { level=20, rank=1, next=8038 }, -- Frostbrand Weapon
[8038] = { level=28, rank=2, next=10456 }, -- Frostbrand Weapon
[8042] = { level=4, rank=1, next=8044 }, -- Earth Shock
[8044] = { level=8, rank=2, next=8045 }, -- Earth Shock
[8045] = { level=14, rank=3, next=8046 }, -- Earth Shock
[8046] = { level=24, rank=4, next=10412 }, -- Earth Shock
[8050] = { level=10, rank=1, next=8052 }, -- Flame Shock
[8052] = { level=18, rank=2, next=8053 }, -- Flame Shock
[8053] = { level=28, rank=3, next=10447 }, -- Flame Shock
[8056] = { level=20, rank=1, next=8058 }, -- Frost Shock
[8058] = { level=34, rank=2, next=10472 }, -- Frost Shock
[8071] = { level=4, rank=1, next=8154 }, -- Stoneskin Totem
[8075] = { level=10, rank=1, next=8160 }, -- Strength of Earth Totem
[8092] = { level=10, rank=1, next=8102 }, -- Mind Blast
[8102] = { level=16, rank=2, next=8103 }, -- Mind Blast
[8103] = { level=22, rank=3, next=8104 }, -- Mind Blast
[8104] = { level=28, rank=4, next=8105 }, -- Mind Blast
[8105] = { level=34, rank=5, next=8106 }, -- Mind Blast
[8106] = { level=40, rank=6, next=10945 }, -- Mind Blast
[8122] = { level=14, rank=1, next=8124 }, -- Psychic Scream
[8124] = { level=28, rank=2, next=10888 }, -- Psychic Scream
[8134] = { level=40, rank=5, next=10431 }, -- Lightning Shield
[8154] = { level=14, rank=2, next=8155 }, -- Stoneskin Totem
[8155] = { level=24, rank=3, next=10406 }, -- Stoneskin Totem
[8160] = { level=24, rank=2, next=8161 }, -- Strength of Earth Totem
[8161] = { level=38, rank=3, next=10442 }, -- Strength of Earth Totem
[8181] = { level=24, rank=1, next=10478 }, -- Frost Resistance Totem
[8184] = { level=28, rank=1, next=10537 }, -- Fire Resistance Totem
[8190] = { level=26, rank=1, next=10585 }, -- Magma Totem
[8198] = { level=18, rank=2, next=8204 }, -- Thunder Clap
[8204] = { level=28, rank=3, next=8205 }, -- Thunder Clap
[8205] = { level=38, rank=4, next=11580 }, -- Thunder Clap
[8227] = { level=28, rank=1, next=8249 }, -- Flametongue Totem
[8232] = { level=30, rank=1, next=8235 }, -- Windfury Weapon
[8235] = { level=40, rank=2, next=10486 }, -- Windfury Weapon
[8249] = { level=38, rank=2, next=10526 }, -- Flametongue Totem
[8288] = { level=24, rank=2, next=8289 }, -- Drain Soul
[8289] = { level=38, rank=3, next=11675 }, -- Drain Soul
[8400] = { level=24, rank=5, next=8401 }, -- Fireball
[8401] = { level=30, rank=6, next=8402 }, -- Fireball
[8402] = { level=36, rank=7, next=10148 }, -- Fireball
[8406] = { level=26, rank=5, next=8407 }, -- Frostbolt
[8407] = { level=32, rank=6, next=8408 }, -- Frostbolt
[8408] = { level=38, rank=7, next=10179 }, -- Frostbolt
[8412] = { level=30, rank=4, next=8413 }, -- Fire Blast
[8413] = { level=38, rank=5, next=10197 }, -- Fire Blast
[8416] = { level=32, rank=4, next=8417 }, -- Arcane Missiles
[8417] = { level=40, rank=5, next=10211 }, -- Arcane Missiles
[8422] = { level=32, rank=3, next=8423 }, -- Flamestrike
[8423] = { level=40, rank=4, next=10215 }, -- Flamestrike
[8427] = { level=36, rank=3, next=10185 }, -- Blizzard
[8437] = { level=22, rank=2, next=8438 }, -- Arcane Explosion
[8438] = { level=30, rank=3, next=8439 }, -- Arcane Explosion
[8439] = { level=38, rank=4, next=10201 }, -- Arcane Explosion
[8444] = { level=28, rank=2, next=8445 }, -- Scorch
[8445] = { level=34, rank=3, next=8446 }, -- Scorch
[8446] = { level=40, rank=4, next=10205 }, -- Scorch
[8450] = { level=24, rank=2, next=8451 }, -- Dampen Magic
[8451] = { level=36, rank=3, next=10173 }, -- Dampen Magic
[8455] = { level=30, rank=2, next=10169 }, -- Amplify Magic
[8457] = { level=30, rank=2, next=8458 }, -- Fire Ward
[8458] = { level=40, rank=3, next=10223 }, -- Fire Ward
[8461] = { level=32, rank=2, next=8462 }, -- Frost Ward
[8462] = { level=42, rank=3, next=10177 }, -- Frost Ward
[8492] = { level=34, rank=2, next=10159 }, -- Cone of Cold
[8494] = { level=28, rank=2, next=8495 }, -- Mana Shield
[8495] = { level=36, rank=3, next=10191 }, -- Mana Shield
[8498] = { level=22, rank=2, next=8499 }, -- Fire Nova Totem
[8499] = { level=32, rank=3, next=11314 }, -- Fire Nova Totem
[8621] = { level=38, rank=6, next=11293 }, -- Sinister Strike
[8623] = { level=32, rank=5, next=8624 }, -- Eviscerate
[8624] = { level=40, rank=6, next=11299 }, -- Eviscerate
[8631] = { level=22, rank=2, next=8632 }, -- Garrote
[8632] = { level=30, rank=3, next=8633 }, -- Garrote
[8633] = { level=38, rank=4, next=11289 }, -- Garrote
[8637] = { level=40, rank=3, next=11303 }, -- Feint
[8639] = { level=28, rank=2, next=8640 }, -- Rupture
[8640] = { level=36, rank=3, next=11273 }, -- Rupture
[8643] = { level=50, rank=2 }, -- Kidney Shot
[8676] = { level=18, rank=1, next=8724 }, -- Ambush
[8696] = { level=34, rank=2, next=11305 }, -- Sprint
[8721] = { level=36, rank=5, next=11279 }, -- Backstab
[8724] = { level=26, rank=2, next=8725 }, -- Ambush
[8725] = { level=34, rank=3, next=11267 }, -- Ambush
[8820] = { level=38, rank=2, next=11604 }, -- Slam
[8903] = { level=38, rank=7, next=9758 }, -- Healing Touch
[8905] = { level=46, rank=7, next=9912 }, -- Wrath
[8907] = { level=40, rank=5, next=9884 }, -- Mark of the Wild
[8910] = { level=40, rank=7, next=9839 }, -- Rejuvenation
[8914] = { level=34, rank=4, next=9756 }, -- Thorns
[8918] = { level=40, rank=2, next=9862 }, -- Tranquility
[8921] = { level=4, rank=1, next=8924 }, -- Moonfire
[8924] = { level=10, rank=2, next=8925 }, -- Moonfire
[8925] = { level=16, rank=3, next=8926 }, -- Moonfire
[8926] = { level=22, rank=4, next=8927 }, -- Moonfire
[8927] = { level=28, rank=5, next=8928 }, -- Moonfire
[8928] = { level=34, rank=6, next=8929 }, -- Moonfire
[8929] = { level=40, rank=7, next=9833 }, -- Moonfire
[8936] = { level=12, rank=1, next=8938 }, -- Regrowth
[8938] = { level=18, rank=2, next=8939 }, -- Regrowth
[8939] = { level=24, rank=3, next=8940 }, -- Regrowth
[8940] = { level=30, rank=4, next=8941 }, -- Regrowth
[8941] = { level=36, rank=5, next=9750 }, -- Regrowth
[8946] = { level=14, rank=1, next=2893 }, -- Cure Poison
[8949] = { level=26, rank=2, next=8950 }, -- Starfire
[8950] = { level=34, rank=3, next=8951 }, -- Starfire
[8951] = { level=42, rank=4, next=9875 }, -- Starfire
[8955] = { level=38, rank=2, next=9901 }, -- Soothe Animal
[8972] = { level=34, rank=4, next=9745 }, -- Maul
[8983] = { level=46, rank=3 }, -- Bash
[8992] = { level=38, rank=3, next=9829 }, -- Shred
[8998] = { level=28, rank=1, next=9000 }, -- Cower
[9000] = { level=40, rank=2, next=9892 }, -- Cower
[9005] = { level=36, rank=1, next=9823 }, -- Pounce
[9472] = { level=26, rank=2, next=9473 }, -- Flash Heal
[9473] = { level=32, rank=3, next=9474 }, -- Flash Heal
[9474] = { level=38, rank=4, next=10915 }, -- Flash Heal
[9484] = { level=20, rank=1, next=9485 }, -- Shackle Undead
[9485] = { level=40, rank=2, next=10955 }, -- Shackle Undead
[9490] = { level=32, rank=3, next=9747 }, -- Demoralizing Roar
[9492] = { level=28, rank=2, next=9493 }, -- Rip
[9493] = { level=36, rank=3, next=9752 }, -- Rip
[9745] = { level=42, rank=5, next=9880 }, -- Maul
[9747] = { level=42, rank=4, next=9898 }, -- Demoralizing Roar
[9750] = { level=42, rank=6, next=9856 }, -- Regrowth
[9752] = { level=44, rank=4, next=9894 }, -- Rip
[9754] = { level=44, rank=4, next=9908 }, -- Swipe (Bear)
[9756] = { level=44, rank=5, next=9910 }, -- Thorns
[9758] = { level=44, rank=8, next=9888 }, -- Healing Touch
[9821] = { level=46, rank=2, next=33357 }, -- Dash
[9823] = { level=46, rank=2, next=9827 }, -- Pounce
[9827] = { level=56, rank=3, next=27006 }, -- Pounce
[9829] = { level=46, rank=4, next=9830 }, -- Shred
[9830] = { level=54, rank=5, next=27001 }, -- Shred
[9833] = { level=46, rank=8, next=9834 }, -- Moonfire
[9834] = { level=52, rank=9, next=9835 }, -- Moonfire
[9835] = { level=58, rank=10, next=26987 }, -- Moonfire
[9839] = { level=46, rank=8, next=9840 }, -- Rejuvenation
[9840] = { level=52, rank=9, next=9841 }, -- Rejuvenation
[9841] = { level=58, rank=10, next=25299 }, -- Rejuvenation
[9845] = { level=48, rank=3, next=9846 }, -- Tiger's Fury
[9846] = { level=60, rank=4, next=50212 }, -- Tiger's Fury
[9849] = { level=48, rank=4, next=9850 }, -- Claw
[9850] = { level=58, rank=5, next=27000 }, -- Claw
[9852] = { level=48, rank=5, next=9853 }, -- Entangling Roots
[9853] = { level=58, rank=6, next=26989 }, -- Entangling Roots
[9856] = { level=48, rank=7, next=9857 }, -- Regrowth
[9857] = { level=54, rank=8, next=9858 }, -- Regrowth
[9858] = { level=60, rank=9, next=26980 }, -- Regrowth
[9862] = { level=50, rank=3, next=9863 }, -- Tranquility
[9863] = { level=60, rank=4, next=26983 }, -- Tranquility
[9866] = { level=50, rank=3, next=9867 }, -- Ravage
[9867] = { level=58, rank=4, next=27005 }, -- Ravage
[9875] = { level=50, rank=5, next=9876 }, -- Starfire
[9876] = { level=58, rank=6, next=25298 }, -- Starfire
[9880] = { level=50, rank=6, next=9881 }, -- Maul
[9881] = { level=58, rank=7, next=26996 }, -- Maul
[9884] = { level=50, rank=6, next=9885 }, -- Mark of the Wild
[9885] = { level=60, rank=7, next=26990 }, -- Mark of the Wild
[9888] = { level=50, rank=9, next=9889 }, -- Healing Touch
[9889] = { level=56, rank=10, next=25297 }, -- Healing Touch
[9892] = { level=52, rank=3, next=31709 }, -- Cower
[9894] = { level=52, rank=5, next=9896 }, -- Rip
[9896] = { level=60, rank=6, next=27008 }, -- Rip
[9898] = { level=52, rank=5, next=26998 }, -- Demoralizing Roar
[9901] = { level=54, rank=3, next=26995 }, -- Soothe Animal
[9904] = { level=54, rank=4, next=27003 }, -- Rake
[9908] = { level=54, rank=5, next=26997 }, -- Swipe (Bear)
[9910] = { level=54, rank=6, next=26992 }, -- Thorns
[9912] = { level=54, rank=8, next=26984 }, -- Wrath
[10053] = { level=48, rank=3, next=10054 }, -- Conjure Mana Gem
[10054] = { level=58, rank=4, next=27101 }, -- Conjure Mana Gem
[10138] = { level=40, rank=5, next=10139 }, -- Conjure Water
[10139] = { level=50, rank=6, next=10140 }, -- Conjure Water
[10140] = { level=60, rank=7, next=37420 }, -- Conjure Water
[10144] = { level=42, rank=5, next=10145 }, -- Conjure Food
[10145] = { level=52, rank=6, next=28612 }, -- Conjure Food
[10148] = { level=42, rank=8, next=10149 }, -- Fireball
[10149] = { level=48, rank=9, next=10150 }, -- Fireball
[10150] = { level=54, rank=10, next=10151 }, -- Fireball
[10151] = { level=60, rank=11, next=25306 }, -- Fireball
[10156] = { level=42, rank=4, next=10157 }, -- Arcane Intellect
[10157] = { level=56, rank=5, next=27126 }, -- Arcane Intellect
[10159] = { level=42, rank=3, next=10160 }, -- Cone of Cold
[10160] = { level=50, rank=4, next=10161 }, -- Cone of Cold
[10161] = { level=58, rank=5, next=27087 }, -- Cone of Cold
[10169] = { level=42, rank=3, next=10170 }, -- Amplify Magic
[10170] = { level=54, rank=4, next=27130 }, -- Amplify Magic
[10173] = { level=48, rank=4, next=10174 }, -- Dampen Magic
[10174] = { level=60, rank=5, next=33944 }, -- Dampen Magic
[10177] = { level=52, rank=4, next=28609 }, -- Frost Ward
[10179] = { level=44, rank=8, next=10180 }, -- Frostbolt
[10180] = { level=50, rank=9, next=10181 }, -- Frostbolt
[10181] = { level=56, rank=10, next=25304 }, -- Frostbolt
[10185] = { level=44, rank=4, next=10186 }, -- Blizzard
[10186] = { level=52, rank=5, next=10187 }, -- Blizzard
[10187] = { level=60, rank=6, next=27085 }, -- Blizzard
[10191] = { level=44, rank=4, next=10192 }, -- Mana Shield
[10192] = { level=52, rank=5, next=10193 }, -- Mana Shield
[10193] = { level=60, rank=6, next=27131 }, -- Mana Shield
[10197] = { level=46, rank=6, next=10199 }, -- Fire Blast
[10199] = { level=54, rank=7, next=27078 }, -- Fire Blast
[10201] = { level=46, rank=5, next=10202 }, -- Arcane Explosion
[10202] = { level=54, rank=6, next=27080 }, -- Arcane Explosion
[10205] = { level=46, rank=5, next=10206 }, -- Scorch
[10206] = { level=52, rank=6, next=10207 }, -- Scorch
[10207] = { level=58, rank=7, next=27073 }, -- Scorch
[10211] = { level=48, rank=6, next=10212 }, -- Arcane Missiles
[10212] = { level=56, rank=7, next=25345 }, -- Arcane Missiles
[10215] = { level=48, rank=5, next=10216 }, -- Flamestrike
[10216] = { level=56, rank=6, next=27086 }, -- Flamestrike
[10219] = { level=50, rank=3, next=10220 }, -- Ice Armor
[10220] = { level=60, rank=4, next=27124 }, -- Ice Armor
[10223] = { level=50, rank=4, next=10225 }, -- Fire Ward
[10225] = { level=60, rank=5, next=27128 }, -- Fire Ward
[10230] = { level=54, rank=4, next=27088 }, -- Frost Nova
[10278] = { level=38, rank=3 }, -- Hand of Protection
[10290] = { level=10, rank=2, next=643 }, -- Devotion Aura
[10291] = { level=30, rank=4, next=1032 }, -- Devotion Aura
[10292] = { level=50, rank=6, next=10293 }, -- Devotion Aura
[10293] = { level=60, rank=7, next=27149 }, -- Devotion Aura
[10298] = { level=26, rank=2, next=10299 }, -- Retribution Aura
[10299] = { level=36, rank=3, next=10300 }, -- Retribution Aura
[10300] = { level=46, rank=4, next=10301 }, -- Retribution Aura
[10301] = { level=56, rank=5, next=27150 }, -- Retribution Aura
[10308] = { level=54, rank=4 }, -- Hammer of Justice
[10310] = { level=50, rank=3, next=27154 }, -- Lay on Hands
[10312] = { level=44, rank=4, next=10313 }, -- Exorcism
[10313] = { level=52, rank=5, next=10314 }, -- Exorcism
[10314] = { level=60, rank=6, next=27138 }, -- Exorcism
[10318] = { level=60, rank=2, next=27139 }, -- Holy Wrath
[10322] = { level=24, rank=2, next=10324 }, -- Redemption
[10324] = { level=36, rank=3, next=20772 }, -- Redemption
[10328] = { level=46, rank=7, next=10329 }, -- Holy Light
[10329] = { level=54, rank=8, next=25292 }, -- Holy Light
[10391] = { level=38, rank=7, next=10392 }, -- Lightning Bolt
[10392] = { level=44, rank=8, next=15207 }, -- Lightning Bolt
[10395] = { level=48, rank=8, next=10396 }, -- Healing Wave
[10396] = { level=56, rank=9, next=25357 }, -- Healing Wave
[10399] = { level=24, rank=4, next=8232 }, -- Rockbiter Weapon
[10406] = { level=34, rank=4, next=10407 }, -- Stoneskin Totem
[10407] = { level=44, rank=5, next=10408 }, -- Stoneskin Totem
[10408] = { level=54, rank=6, next=25508 }, -- Stoneskin Totem
[10412] = { level=36, rank=5, next=10413 }, -- Earth Shock
[10413] = { level=48, rank=6, next=10414 }, -- Earth Shock
[10414] = { level=60, rank=7, next=25454 }, -- Earth Shock
[10427] = { level=48, rank=5, next=10428 }, -- Stoneclaw Totem
[10428] = { level=58, rank=6, next=25525 }, -- Stoneclaw Totem
[10431] = { level=48, rank=6, next=10432 }, -- Lightning Shield
[10432] = { level=56, rank=7, next=25469 }, -- Lightning Shield
[10437] = { level=50, rank=5, next=10438 }, -- Searing Totem
[10438] = { level=60, rank=6, next=25533 }, -- Searing Totem
[10442] = { level=52, rank=4, next=25361 }, -- Strength of Earth Totem
[10447] = { level=40, rank=4, next=10448 }, -- Flame Shock
[10448] = { level=52, rank=5, next=29228 }, -- Flame Shock
[10456] = { level=38, rank=3, next=16355 }, -- Frostbrand Weapon
[10462] = { level=50, rank=4, next=10463 }, -- Healing Stream Totem
[10463] = { level=60, rank=5, next=25567 }, -- Healing Stream Totem
[10466] = { level=44, rank=4, next=10467 }, -- Lesser Healing Wave
[10467] = { level=52, rank=5, next=10468 }, -- Lesser Healing Wave
[10468] = { level=60, rank=6, next=25420 }, -- Lesser Healing Wave
[10472] = { level=46, rank=3, next=10473 }, -- Frost Shock
[10473] = { level=58, rank=4, next=25464 }, -- Frost Shock
[10478] = { level=38, rank=2, next=10479 }, -- Frost Resistance Totem
[10479] = { level=54, rank=3, next=25560 }, -- Frost Resistance Totem
[10486] = { level=50, rank=3, next=16362 }, -- Windfury Weapon
[10495] = { level=36, rank=2, next=10496 }, -- Mana Spring Totem
[10496] = { level=46, rank=3, next=10497 }, -- Mana Spring Totem
[10497] = { level=56, rank=4, next=25570 }, -- Mana Spring Totem
[10526] = { level=48, rank=3, next=16387 }, -- Flametongue Totem
[10537] = { level=42, rank=2, next=10538 }, -- Fire Resistance Totem
[10538] = { level=58, rank=3, next=25563 }, -- Fire Resistance Totem
[10585] = { level=36, rank=2, next=10586 }, -- Magma Totem
[10586] = { level=46, rank=3, next=10587 }, -- Magma Totem
[10587] = { level=56, rank=4, next=25552 }, -- Magma Totem
[10595] = { level=30, rank=1, next=10600 }, -- Nature Resistance Totem
[10600] = { level=44, rank=2, next=10601 }, -- Nature Resistance Totem
[10601] = { level=60, rank=3, next=25574 }, -- Nature Resistance Totem
[10605] = { level=56, rank=4, next=25439 }, -- Chain Lightning
[10622] = { level=46, rank=2, next=10623 }, -- Chain Heal
[10623] = { level=54, rank=3, next=25422 }, -- Chain Heal
[10880] = { level=34, rank=3, next=10881 }, -- Resurrection
[10881] = { level=46, rank=4, next=20770 }, -- Resurrection
[10888] = { level=42, rank=3, next=10890 }, -- Psychic Scream
[10890] = { level=56, rank=4 }, -- Psychic Scream
[10892] = { level=42, rank=6, next=10893 }, -- Shadow Word: Pain
[10893] = { level=50, rank=7, next=10894 }, -- Shadow Word: Pain
[10894] = { level=58, rank=8, next=25367 }, -- Shadow Word: Pain
[10898] = { level=42, rank=7, next=10899 }, -- Power Word: Shield
[10899] = { level=48, rank=8, next=10900 }, -- Power Word: Shield
[10900] = { level=54, rank=9, next=10901 }, -- Power Word: Shield
[10901] = { level=60, rank=10, next=25217 }, -- Power Word: Shield
[10909] = { level=44, rank=2 }, -- Mind Vision
[10915] = { level=44, rank=5, next=10916 }, -- Flash Heal
[10916] = { level=50, rank=6, next=10917 }, -- Flash Heal
[10917] = { level=56, rank=7, next=25233 }, -- Flash Heal
[10927] = { level=44, rank=7, next=10928 }, -- Renew
[10928] = { level=50, rank=8, next=10929 }, -- Renew
[10929] = { level=56, rank=9, next=25315 }, -- Renew
[10933] = { level=46, rank=7, next=10934 }, -- Smite
[10934] = { level=54, rank=8, next=25363 }, -- Smite
[10937] = { level=48, rank=5, next=10938 }, -- Power Word: Fortitude
[10938] = { level=60, rank=6, next=25389 }, -- Power Word: Fortitude
[10945] = { level=46, rank=7, next=10946 }, -- Mind Blast
[10946] = { level=52, rank=8, next=10947 }, -- Mind Blast
[10947] = { level=58, rank=9, next=25372 }, -- Mind Blast
[10951] = { level=50, rank=5, next=10952 }, -- Inner Fire
[10952] = { level=60, rank=6, next=25431 }, -- Inner Fire
[10955] = { level=60, rank=3 }, -- Shackle Undead
[10957] = { level=42, rank=2, next=10958 }, -- Shadow Protection
[10958] = { level=56, rank=3, next=25433 }, -- Shadow Protection
[10960] = { level=50, rank=3, next=10961 }, -- Prayer of Healing
[10961] = { level=60, rank=4, next=25316 }, -- Prayer of Healing
[10963] = { level=46, rank=2, next=10964 }, -- Greater Heal
[10964] = { level=52, rank=3, next=10965 }, -- Greater Heal
[10965] = { level=58, rank=4, next=25314 }, -- Greater Heal
[11113] = { level=30, rank=1, next=13018 }, -- Blast Wave
[11267] = { level=42, rank=4, next=11268 }, -- Ambush
[11268] = { level=50, rank=5, next=11269 }, -- Ambush
[11269] = { level=58, rank=6, next=27441 }, -- Ambush
[11273] = { level=44, rank=4, next=11274 }, -- Rupture
[11274] = { level=52, rank=5, next=11275 }, -- Rupture
[11275] = { level=60, rank=6, next=26867 }, -- Rupture
[11279] = { level=44, rank=6, next=11280 }, -- Backstab
[11280] = { level=52, rank=7, next=11281 }, -- Backstab
[11281] = { level=60, rank=8, next=25300 }, -- Backstab
[11289] = { level=46, rank=5, next=11290 }, -- Garrote
[11290] = { level=54, rank=6, next=26839 }, -- Garrote
[11293] = { level=46, rank=7, next=11294 }, -- Sinister Strike
[11294] = { level=54, rank=8, next=26861 }, -- Sinister Strike
[11297] = { level=48, rank=3, next=51724 }, -- Sap
[11299] = { level=48, rank=7, next=11300 }, -- Eviscerate
[11300] = { level=56, rank=8, next=31016 }, -- Eviscerate
[11303] = { level=52, rank=4, next=25302 }, -- Feint
[11305] = { level=58, rank=3 }, -- Sprint
[11314] = { level=42, rank=4, next=11315 }, -- Fire Nova Totem
[11315] = { level=52, rank=5, next=25546 }, -- Fire Nova Totem
[11366] = { level=20, rank=1, next=12505 }, -- Pyroblast
[11426] = { level=40, rank=1, next=13031 }, -- Ice Barrier
[11549] = { level=32, rank=4, next=11550 }, -- Battle Shout
[11550] = { level=42, rank=5, next=11551 }, -- Battle Shout
[11551] = { level=52, rank=6, next=25289 }, -- Battle Shout
[11554] = { level=34, rank=3, next=11555 }, -- Demoralizing Shout
[11555] = { level=44, rank=4, next=11556 }, -- Demoralizing Shout
[11556] = { level=54, rank=5, next=25202 }, -- Demoralizing Shout
[11564] = { level=32, rank=5, next=11565 }, -- Heroic Strike
[11565] = { level=40, rank=6, next=11566 }, -- Heroic Strike
[11566] = { level=48, rank=7, next=11567 }, -- Heroic Strike
[11567] = { level=56, rank=8, next=25286 }, -- Heroic Strike
[11572] = { level=40, rank=5, next=11573 }, -- Rend
[11573] = { level=50, rank=6, next=11574 }, -- Rend
[11574] = { level=60, rank=7, next=25208 }, -- Rend
[11578] = { level=46, rank=3 }, -- Charge
[11580] = { level=48, rank=5, next=11581 }, -- Thunder Clap
[11581] = { level=58, rank=6, next=25264 }, -- Thunder Clap
[11600] = { level=44, rank=4, next=11601 }, -- Revenge
[11601] = { level=54, rank=5, next=25288 }, -- Revenge
[11604] = { level=46, rank=3, next=11605 }, -- Slam
[11605] = { level=54, rank=4, next=25241 }, -- Slam
[11608] = { level=40, rank=3, next=11609 }, -- Cleave
[11609] = { level=50, rank=4, next=20569 }, -- Cleave
[11659] = { level=44, rank=7, next=11660 }, -- Shadow Bolt
[11660] = { level=52, rank=8, next=11661 }, -- Shadow Bolt
[11661] = { level=60, rank=9, next=25307 }, -- Shadow Bolt
[11665] = { level=40, rank=5, next=11667 }, -- Immolate
[11667] = { level=50, rank=6, next=11668 }, -- Immolate
[11668] = { level=60, rank=7, next=25309 }, -- Immolate
[11671] = { level=44, rank=5, next=11672 }, -- Corruption
[11672] = { level=54, rank=6, next=25311 }, -- Corruption
[11675] = { level=52, rank=4, next=27217 }, -- Drain Soul
[11677] = { level=46, rank=3, next=11678 }, -- Rain of Fire
[11678] = { level=58, rank=4, next=27212 }, -- Rain of Fire
[11683] = { level=42, rank=2, next=11684 }, -- Hellfire
[11684] = { level=54, rank=3, next=27213 }, -- Hellfire
[11687] = { level=36, rank=4, next=11688 }, -- Life Tap
[11688] = { level=46, rank=5, next=11689 }, -- Life Tap
[11689] = { level=56, rank=6, next=27222 }, -- Life Tap
[11693] = { level=44, rank=5, next=11694 }, -- Health Funnel
[11694] = { level=52, rank=6, next=11695 }, -- Health Funnel
[11695] = { level=60, rank=7, next=27259 }, -- Health Funnel
[11699] = { level=46, rank=5, next=11700 }, -- Drain Life
[11700] = { level=54, rank=6, next=27219 }, -- Drain Life
[11707] = { level=42, rank=5, next=11708 }, -- Curse of Weakness
[11708] = { level=52, rank=6, next=27224 }, -- Curse of Weakness
[11711] = { level=38, rank=4, next=11712 }, -- Curse of Agony
[11712] = { level=48, rank=5, next=11713 }, -- Curse of Agony
[11713] = { level=58, rank=6, next=27218 }, -- Curse of Agony
[11719] = { level=50, rank=2 }, -- Curse of Tongues
[11721] = { level=46, rank=2, next=11722 }, -- Curse of the Elements
[11722] = { level=60, rank=3, next=27228 }, -- Curse of the Elements
[11725] = { level=44, rank=2, next=11726 }, -- Enslave Demon
[11726] = { level=58, rank=3, next=61191 }, -- Enslave Demon
[11729] = { level=46, rank=4, next=11730 }, -- Create Healthstone
[11730] = { level=58, rank=5, next=27230 }, -- Create Healthstone
[11733] = { level=40, rank=3, next=11734 }, -- Demon Armor
[11734] = { level=50, rank=4, next=11735 }, -- Demon Armor
[11735] = { level=60, rank=5, next=27260 }, -- Demon Armor
[11739] = { level=42, rank=2, next=11740 }, -- Shadow Ward
[11740] = { level=52, rank=3, next=28610 }, -- Shadow Ward
[12294] = { level=40, rank=1, next=21551 }, -- Mortal Strike
[12505] = { level=24, rank=2, next=12522 }, -- Pyroblast
[12522] = { level=30, rank=3, next=12523 }, -- Pyroblast
[12523] = { level=36, rank=4, next=12524 }, -- Pyroblast
[12524] = { level=42, rank=5, next=12525 }, -- Pyroblast
[12525] = { level=48, rank=6, next=12526 }, -- Pyroblast
[12526] = { level=54, rank=7, next=18809 }, -- Pyroblast
[12824] = { level=20, rank=2, next=12825 }, -- Polymorph
[12825] = { level=40, rank=3, next=12826 }, -- Polymorph
[12826] = { level=60, rank=4 }, -- Polymorph
[13018] = { level=36, rank=2, next=13019 }, -- Blast Wave
[13019] = { level=44, rank=3, next=13020 }, -- Blast Wave
[13020] = { level=52, rank=4, next=13021 }, -- Blast Wave
[13021] = { level=60, rank=5, next=27133 }, -- Blast Wave
[13031] = { level=46, rank=2, next=13032 }, -- Ice Barrier
[13032] = { level=52, rank=3, next=13033 }, -- Ice Barrier
[13033] = { level=58, rank=4, next=27134 }, -- Ice Barrier
[13163] = { level=4, rank=1, next=61846 }, -- Aspect of the Monkey
[13165] = { level=10, rank=1, next=14318 }, -- Aspect of the Hawk
[13542] = { level=44, rank=5, next=13543 }, -- Mend Pet
[13543] = { level=52, rank=6, next=13544 }, -- Mend Pet
[13544] = { level=60, rank=7, next=27046 }, -- Mend Pet
[13549] = { level=10, rank=2, next=13550 }, -- Serpent Sting
[13550] = { level=18, rank=3, next=13551 }, -- Serpent Sting
[13551] = { level=26, rank=4, next=13552 }, -- Serpent Sting
[13552] = { level=34, rank=5, next=13553 }, -- Serpent Sting
[13553] = { level=42, rank=6, next=13554 }, -- Serpent Sting
[13554] = { level=50, rank=7, next=13555 }, -- Serpent Sting
[13555] = { level=58, rank=8, next=25295 }, -- Serpent Sting
[13795] = { level=16, rank=1, next=14302 }, -- Immolation Trap
[13813] = { level=34, rank=1, next=14316 }, -- Explosive Trap
[14260] = { level=8, rank=2, next=14261 }, -- Raptor Strike
[14261] = { level=16, rank=3, next=14262 }, -- Raptor Strike
[14262] = { level=24, rank=4, next=14263 }, -- Raptor Strike
[14263] = { level=32, rank=5, next=14264 }, -- Raptor Strike
[14264] = { level=40, rank=6, next=14265 }, -- Raptor Strike
[14265] = { level=48, rank=7, next=14266 }, -- Raptor Strike
[14266] = { level=56, rank=8, next=27014 }, -- Raptor Strike
[14269] = { level=30, rank=2, next=14270 }, -- Mongoose Bite
[14270] = { level=44, rank=3, next=14271 }, -- Mongoose Bite
[14271] = { level=58, rank=4, next=36916 }, -- Mongoose Bite
[14281] = { level=12, rank=2, next=14282 }, -- Arcane Shot
[14282] = { level=20, rank=3, next=14283 }, -- Arcane Shot
[14283] = { level=28, rank=4, next=14284 }, -- Arcane Shot
[14284] = { level=36, rank=5, next=14285 }, -- Arcane Shot
[14285] = { level=44, rank=6, next=14286 }, -- Arcane Shot
[14286] = { level=52, rank=7, next=14287 }, -- Arcane Shot
[14287] = { level=60, rank=8, next=27019 }, -- Arcane Shot
[14288] = { level=30, rank=2, next=14289 }, -- Multi-Shot
[14289] = { level=42, rank=3, next=14290 }, -- Multi-Shot
[14290] = { level=54, rank=4, next=25294 }, -- Multi-Shot
[14294] = { level=50, rank=2, next=14295 }, -- Volley
[14295] = { level=58, rank=3, next=27022 }, -- Volley
[14302] = { level=26, rank=2, next=14303 }, -- Immolation Trap
[14303] = { level=36, rank=3, next=14304 }, -- Immolation Trap
[14304] = { level=46, rank=4, next=14305 }, -- Immolation Trap
[14305] = { level=56, rank=5, next=27023 }, -- Immolation Trap
[14310] = { level=40, rank=2, next=14311 }, -- Freezing Trap
[14311] = { level=60, rank=3 }, -- Freezing Trap
[14316] = { level=44, rank=2, next=14317 }, -- Explosive Trap
[14317] = { level=54, rank=3, next=27025 }, -- Explosive Trap
[14318] = { level=18, rank=2, next=14319 }, -- Aspect of the Hawk
[14319] = { level=28, rank=3, next=14320 }, -- Aspect of the Hawk
[14320] = { level=38, rank=4, next=14321 }, -- Aspect of the Hawk
[14321] = { level=48, rank=5, next=14322 }, -- Aspect of the Hawk
[14322] = { level=58, rank=6, next=25296 }, -- Aspect of the Hawk
[14323] = { level=22, rank=2, next=14324 }, -- Hunter's Mark
[14324] = { level=40, rank=3, next=14325 }, -- Hunter's Mark
[14325] = { level=58, rank=4, next=53338 }, -- Hunter's Mark
[14326] = { level=30, rank=2, next=14327 }, -- Scare Beast
[14327] = { level=46, rank=3 }, -- Scare Beast
[14752] = { level=30, rank=1, next=14818 }, -- Divine Spirit
[14818] = { level=40, rank=2, next=14819 }, -- Divine Spirit
[14819] = { level=50, rank=3, next=27841 }, -- Divine Spirit
[14914] = { level=20, rank=1, next=15262 }, -- Holy Fire
[15207] = { level=50, rank=9, next=15208 }, -- Lightning Bolt
[15208] = { level=56, rank=10, next=25448 }, -- Lightning Bolt
[15237] = { level=20, rank=1, next=15430 }, -- Holy Nova
[15261] = { level=60, rank=8, next=25384 }, -- Holy Fire
[15262] = { level=24, rank=2, next=15263 }, -- Holy Fire
[15263] = { level=30, rank=3, next=15264 }, -- Holy Fire
[15264] = { level=36, rank=4, next=15265 }, -- Holy Fire
[15265] = { level=42, rank=5, next=15266 }, -- Holy Fire
[15266] = { level=48, rank=6, next=15267 }, -- Holy Fire
[15267] = { level=54, rank=7, next=15261 }, -- Holy Fire
[15407] = { level=20, rank=1, next=17311 }, -- Mind Flay
[15430] = { level=28, rank=2, next=15431 }, -- Holy Nova
[15431] = { level=36, rank=3, next=27799 }, -- Holy Nova
[16339] = { level=36, rank=4, next=16341 }, -- Flametongue Weapon
[16341] = { level=46, rank=5, next=16342 }, -- Flametongue Weapon
[16342] = { level=56, rank=6, next=25489 }, -- Flametongue Weapon
[16355] = { level=48, rank=4, next=16356 }, -- Frostbrand Weapon
[16356] = { level=58, rank=5, next=25500 }, -- Frostbrand Weapon
[16362] = { level=60, rank=4, next=25505 }, -- Windfury Weapon
[16387] = { level=58, rank=4, next=25557 }, -- Flametongue Totem
[16511] = { level=30, rank=1, next=17347 }, -- Hemorrhage
[16689] = { level=10, rank=1, next=16810 }, -- Nature's Grasp
[16810] = { level=18, rank=2, next=16811 }, -- Nature's Grasp
[16811] = { level=28, rank=3, next=16812 }, -- Nature's Grasp
[16812] = { level=38, rank=4, next=16813 }, -- Nature's Grasp
[16813] = { level=48, rank=5, next=17329 }, -- Nature's Grasp
[16914] = { level=40, rank=1, next=17401 }, -- Hurricane
[17311] = { level=28, rank=2, next=17312 }, -- Mind Flay
[17312] = { level=36, rank=3, next=17313 }, -- Mind Flay
[17313] = { level=44, rank=4, next=17314 }, -- Mind Flay
[17314] = { level=52, rank=5, next=18807 }, -- Mind Flay
[17329] = { level=58, rank=6, next=27009 }, -- Nature's Grasp
[17347] = { level=46, rank=2, next=17348 }, -- Hemorrhage
[17348] = { level=58, rank=3, next=26864 }, -- Hemorrhage
[17401] = { level=50, rank=2, next=17402 }, -- Hurricane
[17402] = { level=60, rank=3, next=27012 }, -- Hurricane
[17727] = { level=48, rank=2, next=17728 }, -- Create Spellstone
[17728] = { level=60, rank=3, next=28172 }, -- Create Spellstone
[17877] = { level=20, rank=1, next=18867 }, -- Shadowburn
[17919] = { level=26, rank=2, next=17920 }, -- Searing Pain
[17920] = { level=34, rank=3, next=17921 }, -- Searing Pain
[17921] = { level=42, rank=4, next=17922 }, -- Searing Pain
[17922] = { level=50, rank=5, next=17923 }, -- Searing Pain
[17923] = { level=58, rank=6, next=27210 }, -- Searing Pain
[17924] = { level=56, rank=2, next=27211 }, -- Soul Fire
[17925] = { level=50, rank=2, next=17926 }, -- Death Coil
[17926] = { level=58, rank=3, next=27223 }, -- Death Coil
[17928] = { level=54, rank=2 }, -- Howl of Terror
[17951] = { level=36, rank=2, next=17952 }, -- Create Firestone
[17952] = { level=46, rank=3, next=17953 }, -- Create Firestone
[17953] = { level=56, rank=4, next=27250 }, -- Create Firestone
[18220] = { level=40, rank=1, next=18937 }, -- Dark Pact
[18647] = { level=48, rank=2 }, -- Banish
[18657] = { level=38, rank=2, next=18658 }, -- Hibernate
[18658] = { level=58, rank=3 }, -- Hibernate
[18807] = { level=60, rank=6, next=25387 }, -- Mind Flay
[18809] = { level=60, rank=8, next=27132 }, -- Pyroblast
[18867] = { level=24, rank=2, next=18868 }, -- Shadowburn
[18868] = { level=32, rank=3, next=18869 }, -- Shadowburn
[18869] = { level=40, rank=4, next=18870 }, -- Shadowburn
[18870] = { level=48, rank=5, next=18871 }, -- Shadowburn
[18871] = { level=56, rank=6, next=27263 }, -- Shadowburn
[18937] = { level=50, rank=2, next=18938 }, -- Dark Pact
[18938] = { level=60, rank=3, next=27265 }, -- Dark Pact
[19236] = { level=20, rank=1, next=19238 }, -- Desperate Prayer
[19238] = { level=26, rank=2, next=19240 }, -- Desperate Prayer
[19240] = { level=34, rank=3, next=19241 }, -- Desperate Prayer
[19241] = { level=42, rank=4, next=19242 }, -- Desperate Prayer
[19242] = { level=50, rank=5, next=19243 }, -- Desperate Prayer
[19243] = { level=58, rank=6, next=25437 }, -- Desperate Prayer
[19276] = { level=28, rank=2, next=19277 }, -- Devouring Plague
[19277] = { level=36, rank=3, next=19278 }, -- Devouring Plague
[19278] = { level=44, rank=4, next=19279 }, -- Devouring Plague
[19279] = { level=52, rank=5, next=19280 }, -- Devouring Plague
[19280] = { level=60, rank=6, next=25467 }, -- Devouring Plague
[19306] = { level=30, rank=1, next=20909 }, -- Counterattack
[19386] = { level=40, rank=1, next=24132 }, -- Wyvern Sting
[19434] = { level=20, rank=1, next=20900 }, -- Aimed Shot
[19740] = { level=4, rank=1, next=19834 }, -- Blessing of Might
[19742] = { level=14, rank=1, next=19850 }, -- Blessing of Wisdom
[19750] = { level=20, rank=1, next=19939 }, -- Flash of Light
[19834] = { level=12, rank=2, next=19835 }, -- Blessing of Might
[19835] = { level=22, rank=3, next=19836 }, -- Blessing of Might
[19836] = { level=32, rank=4, next=19837 }, -- Blessing of Might
[19837] = { level=42, rank=5, next=19838 }, -- Blessing of Might
[19838] = { level=52, rank=6, next=25291 }, -- Blessing of Might
[19850] = { level=24, rank=2, next=19852 }, -- Blessing of Wisdom
[19852] = { level=34, rank=3, next=19853 }, -- Blessing of Wisdom
[19853] = { level=44, rank=4, next=19854 }, -- Blessing of Wisdom
[19854] = { level=54, rank=5, next=25290 }, -- Blessing of Wisdom
[19876] = { level=28, rank=1, next=19895 }, -- Shadow Resistance Aura
[19888] = { level=32, rank=1, next=19897 }, -- Frost Resistance Aura
[19891] = { level=36, rank=1, next=19899 }, -- Fire Resistance Aura
[19895] = { level=40, rank=2, next=19896 }, -- Shadow Resistance Aura
[19896] = { level=52, rank=3, next=27151 }, -- Shadow Resistance Aura
[19897] = { level=44, rank=2, next=19898 }, -- Frost Resistance Aura
[19898] = { level=56, rank=3, next=27152 }, -- Frost Resistance Aura
[19899] = { level=48, rank=2, next=19900 }, -- Fire Resistance Aura
[19900] = { level=60, rank=3, next=27153 }, -- Fire Resistance Aura
[19939] = { level=26, rank=2, next=19940 }, -- Flash of Light
[19940] = { level=34, rank=3, next=19941 }, -- Flash of Light
[19941] = { level=42, rank=4, next=19942 }, -- Flash of Light
[19942] = { level=50, rank=5, next=19943 }, -- Flash of Light
[19943] = { level=58, rank=6, next=27137 }, -- Flash of Light
[20043] = { level=46, rank=1, next=20190 }, -- Aspect of the Wild
[20116] = { level=30, rank=2, next=20922 }, -- Consecration
[20190] = { level=56, rank=2, next=27045 }, -- Aspect of the Wild
[20243] = { level=50, rank=1, next=30016 }, -- Devastate
[20473] = { level=40, rank=1, next=20929 }, -- Holy Shock
[20484] = { level=20, rank=1, next=20739 }, -- Rebirth
[20569] = { level=60, rank=5, next=25231 }, -- Cleave
[20609] = { level=24, rank=2, next=20610 }, -- Ancestral Spirit
[20610] = { level=36, rank=3, next=20776 }, -- Ancestral Spirit
[20658] = { level=32, rank=2, next=20660 }, -- Execute
[20660] = { level=40, rank=3, next=20661 }, -- Execute
[20661] = { level=48, rank=4, next=20662 }, -- Execute
[20662] = { level=56, rank=5, next=25234 }, -- Execute
[20736] = { level=12, rank=1 }, -- Distracting Shot
[20739] = { level=30, rank=2, next=20742 }, -- Rebirth
[20742] = { level=40, rank=3, next=20747 }, -- Rebirth
[20747] = { level=50, rank=4, next=20748 }, -- Rebirth
[20748] = { level=60, rank=5, next=26994 }, -- Rebirth
[20752] = { level=30, rank=2, next=20755 }, -- Create Soulstone
[20755] = { level=40, rank=3, next=20756 }, -- Create Soulstone
[20756] = { level=50, rank=4, next=20757 }, -- Create Soulstone
[20757] = { level=60, rank=5, next=27238 }, -- Create Soulstone
[20770] = { level=58, rank=5, next=25435 }, -- Resurrection
[20772] = { level=48, rank=4, next=20773 }, -- Redemption
[20773] = { level=60, rank=5, next=48949 }, -- Redemption
[20776] = { level=48, rank=4, next=20777 }, -- Ancestral Spirit
[20777] = { level=60, rank=5, next=25590 }, -- Ancestral Spirit
[20900] = { level=28, rank=2, next=20901 }, -- Aimed Shot
[20901] = { level=36, rank=3, next=20902 }, -- Aimed Shot
[20902] = { level=44, rank=4, next=20903 }, -- Aimed Shot
[20903] = { level=52, rank=5, next=20904 }, -- Aimed Shot
[20904] = { level=60, rank=6, next=27065 }, -- Aimed Shot
[20909] = { level=42, rank=2, next=20910 }, -- Counterattack
[20910] = { level=54, rank=3, next=27067 }, -- Counterattack
[20922] = { level=40, rank=3, next=20923 }, -- Consecration
[20923] = { level=50, rank=4, next=20924 }, -- Consecration
[20924] = { level=60, rank=5, next=27173 }, -- Consecration
[20925] = { level=40, rank=1, next=20927 }, -- Holy Shield
[20927] = { level=50, rank=2, next=20928 }, -- Holy Shield
[20928] = { level=60, rank=3, next=27179 }, -- Holy Shield
[20929] = { level=48, rank=2, next=20930 }, -- Holy Shock
[20930] = { level=56, rank=3, next=27174 }, -- Holy Shock
[21551] = { level=48, rank=2, next=21552 }, -- Mortal Strike
[21552] = { level=54, rank=3, next=21553 }, -- Mortal Strike
[21553] = { level=60, rank=4, next=25248 }, -- Mortal Strike
[21562] = { level=48, rank=1, next=21564 }, -- Prayer of Fortitude
[21564] = { level=60, rank=2, next=25392 }, -- Prayer of Fortitude
[21849] = { level=50, rank=1, next=21850 }, -- Gift of the Wild
[21850] = { level=60, rank=2, next=26991 }, -- Gift of the Wild
[22568] = { level=32, rank=1, next=22827 }, -- Ferocious Bite
[22570] = { level=62, rank=1, next=49802 }, -- Maim
[22782] = { level=46, rank=2, next=22783 }, -- Mage Armor
[22783] = { level=58, rank=3, next=27125 }, -- Mage Armor
[22827] = { level=40, rank=2, next=22828 }, -- Ferocious Bite
[22828] = { level=48, rank=3, next=22829 }, -- Ferocious Bite
[22829] = { level=56, rank=4, next=31018 }, -- Ferocious Bite
[22842] = { level=36, rank=1 }, -- Frenzied Regeneration
[23028] = { level=56, rank=1, next=27127 }, -- Arcane Brilliance
[23922] = { level=40, rank=1, next=23923 }, -- Shield Slam
[23923] = { level=48, rank=2, next=23924 }, -- Shield Slam
[23924] = { level=54, rank=3, next=23925 }, -- Shield Slam
[23925] = { level=60, rank=4, next=25258 }, -- Shield Slam
[24132] = { level=50, rank=2, next=24133 }, -- Wyvern Sting
[24133] = { level=60, rank=3, next=27068 }, -- Wyvern Sting
[24239] = { level=60, rank=3, next=27180 }, -- Hammer of Wrath
[24248] = { level=63, rank=6, next=48576 }, -- Ferocious Bite
[24274] = { level=52, rank=2, next=24239 }, -- Hammer of Wrath
[24275] = { level=44, rank=1, next=24274 }, -- Hammer of Wrath
[24398] = { level=62, rank=7, next=33736 }, -- Water Shield
[24974] = { level=30, rank=2, next=24975 }, -- Insect Swarm
[24975] = { level=40, rank=3, next=24976 }, -- Insect Swarm
[24976] = { level=50, rank=4, next=24977 }, -- Insect Swarm
[24977] = { level=60, rank=5, next=27013 }, -- Insect Swarm
[25202] = { level=62, rank=6, next=25203 }, -- Demoralizing Shout
[25203] = { level=70, rank=7, next=47437 }, -- Demoralizing Shout
[25208] = { level=68, rank=8, next=46845 }, -- Rend
[25210] = { level=63, rank=6, next=25213 }, -- Greater Heal
[25213] = { level=68, rank=7, next=48062 }, -- Greater Heal
[25217] = { level=65, rank=11, next=25218 }, -- Power Word: Shield
[25218] = { level=70, rank=12, next=48065 }, -- Power Word: Shield
[25221] = { level=65, rank=11, next=25222 }, -- Renew
[25222] = { level=70, rank=12, next=48067 }, -- Renew
[25231] = { level=68, rank=6, next=47519 }, -- Cleave
[25233] = { level=61, rank=8, next=25235 }, -- Flash Heal
[25234] = { level=65, rank=6, next=25236 }, -- Execute
[25235] = { level=67, rank=9, next=48070 }, -- Flash Heal
[25236] = { level=70, rank=7, next=47470 }, -- Execute
[25241] = { level=61, rank=5, next=25242 }, -- Slam
[25242] = { level=69, rank=6, next=47474 }, -- Slam
[25248] = { level=66, rank=5, next=30330 }, -- Mortal Strike
[25258] = { level=66, rank=5, next=30356 }, -- Shield Slam
[25264] = { level=67, rank=7, next=47501 }, -- Thunder Clap
[25269] = { level=63, rank=7, next=30357 }, -- Revenge
[25286] = { level=60, rank=9, next=29707 }, -- Heroic Strike
[25288] = { level=60, rank=6, next=25269 }, -- Revenge
[25289] = { level=60, rank=7, next=2048 }, -- Battle Shout
[25290] = { level=60, rank=6, next=27142 }, -- Blessing of Wisdom
[25291] = { level=60, rank=7, next=27140 }, -- Blessing of Might
[25292] = { level=60, rank=9, next=27135 }, -- Holy Light
[25294] = { level=60, rank=5, next=27021 }, -- Multi-Shot
[25295] = { level=60, rank=9, next=27016 }, -- Serpent Sting
[25296] = { level=60, rank=7, next=27044 }, -- Aspect of the Hawk
[25297] = { level=60, rank=11, next=26978 }, -- Healing Touch
[25298] = { level=60, rank=7, next=26986 }, -- Starfire
[25299] = { level=60, rank=11, next=26981 }, -- Rejuvenation
[25300] = { level=60, rank=9, next=26863 }, -- Backstab
[25302] = { level=60, rank=5, next=27448 }, -- Feint
[25304] = { level=60, rank=11, next=27071 }, -- Frostbolt
[25306] = { level=62, rank=12, next=27070 }, -- Fireball
[25307] = { level=62, rank=10, next=27209 }, -- Shadow Bolt
[25308] = { level=68, rank=6, next=48072 }, -- Prayer of Healing
[25309] = { level=60, rank=8, next=27215 }, -- Immolate
[25311] = { level=60, rank=7, next=27216 }, -- Corruption
[25312] = { level=70, rank=5, next=48073 }, -- Divine Spirit
[25314] = { level=60, rank=5, next=25210 }, -- Greater Heal
[25315] = { level=60, rank=10, next=25221 }, -- Renew
[25316] = { level=60, rank=5, next=25308 }, -- Prayer of Healing
[25331] = { level=68, rank=7, next=48077 }, -- Holy Nova
[25345] = { level=60, rank=8, next=27075 }, -- Arcane Missiles
[25357] = { level=60, rank=10, next=25391 }, -- Healing Wave
[25361] = { level=60, rank=5, next=25528 }, -- Strength of Earth Totem
[25363] = { level=61, rank=9, next=25364 }, -- Smite
[25364] = { level=69, rank=10, next=48122 }, -- Smite
[25367] = { level=65, rank=9, next=25368 }, -- Shadow Word: Pain
[25368] = { level=70, rank=10, next=48124 }, -- Shadow Word: Pain
[25372] = { level=63, rank=10, next=25375 }, -- Mind Blast
[25375] = { level=69, rank=11, next=48126 }, -- Mind Blast
[25384] = { level=66, rank=9, next=48134 }, -- Holy Fire
[25387] = { level=68, rank=7, next=48155 }, -- Mind Flay
[25389] = { level=70, rank=7, next=48161 }, -- Power Word: Fortitude
[25391] = { level=63, rank=11, next=25396 }, -- Healing Wave
[25392] = { level=70, rank=3, next=48162 }, -- Prayer of Fortitude
[25396] = { level=70, rank=12, next=49272 }, -- Healing Wave
[25420] = { level=66, rank=7, next=49275 }, -- Lesser Healing Wave
[25422] = { level=61, rank=4, next=25423 }, -- Chain Heal
[25423] = { level=68, rank=5, next=55458 }, -- Chain Heal
[25431] = { level=69, rank=7, next=48040 }, -- Inner Fire
[25433] = { level=68, rank=4, next=48169 }, -- Shadow Protection
[25435] = { level=68, rank=6, next=48171 }, -- Resurrection
[25437] = { level=66, rank=7, next=48172 }, -- Desperate Prayer
[25439] = { level=63, rank=5, next=25442 }, -- Chain Lightning
[25442] = { level=70, rank=6, next=49270 }, -- Chain Lightning
[25448] = { level=62, rank=11, next=25449 }, -- Lightning Bolt
[25449] = { level=67, rank=12, next=49237 }, -- Lightning Bolt
[25454] = { level=69, rank=8, next=49230 }, -- Earth Shock
[25457] = { level=70, rank=7, next=49232 }, -- Flame Shock
[25464] = { level=68, rank=5, next=49235 }, -- Frost Shock
[25467] = { level=68, rank=7, next=48299 }, -- Devouring Plague
[25469] = { level=63, rank=8, next=25472 }, -- Lightning Shield
[25472] = { level=70, rank=9, next=49280 }, -- Lightning Shield
[25489] = { level=64, rank=7, next=58785 }, -- Flametongue Weapon
[25500] = { level=66, rank=6, next=58794 }, -- Frostbrand Weapon
[25505] = { level=68, rank=5, next=58801 }, -- Windfury Weapon
[25508] = { level=63, rank=7, next=25509 }, -- Stoneskin Totem
[25509] = { level=70, rank=8, next=58751 }, -- Stoneskin Totem
[25525] = { level=67, rank=7, next=58580 }, -- Stoneclaw Totem
[25528] = { level=65, rank=6, next=57622 }, -- Strength of Earth Totem
[25533] = { level=69, rank=7, next=58699 }, -- Searing Totem
[25546] = { level=61, rank=6, next=25547 }, -- Fire Nova Totem
[25547] = { level=70, rank=7, next=61649 }, -- Fire Nova Totem
[25552] = { level=65, rank=5, next=58731 }, -- Magma Totem
[25557] = { level=67, rank=5, next=58649 }, -- Flametongue Totem
[25560] = { level=67, rank=4, next=58741 }, -- Frost Resistance Totem
[25563] = { level=68, rank=4, next=58737 }, -- Fire Resistance Totem
[25567] = { level=69, rank=6, next=58755 }, -- Healing Stream Totem
[25570] = { level=65, rank=5, next=58771 }, -- Mana Spring Totem
[25574] = { level=69, rank=4, next=58746 }, -- Nature Resistance Totem
[25590] = { level=69, rank=6, next=49277 }, -- Ancestral Spirit
[25782] = { level=52, rank=1, next=25916 }, -- Greater Blessing of Might
[25894] = { level=54, rank=1, next=25918 }, -- Greater Blessing of Wisdom
[25916] = { level=60, rank=2, next=27141 }, -- Greater Blessing of Might
[25918] = { level=60, rank=2, next=27143 }, -- Greater Blessing of Wisdom
[26573] = { level=20, rank=1, next=20116 }, -- Consecration
[26669] = { level=50, rank=2 }, -- Evasion
[26679] = { level=64, rank=1, next=48673 }, -- Deadly Throw
[26839] = { level=61, rank=7, next=26884 }, -- Garrote
[26861] = { level=62, rank=9, next=26862 }, -- Sinister Strike
[26862] = { level=70, rank=10, next=48637 }, -- Sinister Strike
[26863] = { level=68, rank=10, next=48656 }, -- Backstab
[26864] = { level=70, rank=4, next=48660 }, -- Hemorrhage
[26865] = { level=64, rank=10, next=48667 }, -- Eviscerate
[26867] = { level=68, rank=7, next=48671 }, -- Rupture
[26884] = { level=70, rank=8, next=48675 }, -- Garrote
[26889] = { level=62, rank=3 }, -- Vanish
[26978] = { level=62, rank=12, next=26979 }, -- Healing Touch
[26979] = { level=69, rank=13, next=48377 }, -- Healing Touch
[26980] = { level=65, rank=10, next=48442 }, -- Regrowth
[26981] = { level=63, rank=12, next=26982 }, -- Rejuvenation
[26982] = { level=69, rank=13, next=48440 }, -- Rejuvenation
[26983] = { level=70, rank=5, next=48446 }, -- Tranquility
[26984] = { level=61, rank=9, next=26985 }, -- Wrath
[26985] = { level=69, rank=10, next=48459 }, -- Wrath
[26986] = { level=67, rank=8, next=48464 }, -- Starfire
[26987] = { level=63, rank=11, next=26988 }, -- Moonfire
[26988] = { level=70, rank=12, next=48462 }, -- Moonfire
[26989] = { level=68, rank=7, next=53308 }, -- Entangling Roots
[26990] = { level=70, rank=8, next=48469 }, -- Mark of the Wild
[26991] = { level=70, rank=3, next=48470 }, -- Gift of the Wild
[26992] = { level=64, rank=7, next=53307 }, -- Thorns
[26994] = { level=69, rank=6, next=48477 }, -- Rebirth
[26995] = { level=70, rank=4 }, -- Soothe Animal
[26996] = { level=67, rank=8, next=48479 }, -- Maul
[26997] = { level=64, rank=6, next=48561 }, -- Swipe (Bear)
[26998] = { level=62, rank=6, next=48559 }, -- Demoralizing Roar
[27000] = { level=67, rank=6, next=48569 }, -- Claw
[27001] = { level=61, rank=6, next=27002 }, -- Shred
[27002] = { level=70, rank=7, next=48571 }, -- Shred
[27003] = { level=64, rank=5, next=48573 }, -- Rake
[27004] = { level=69, rank=5, next=48575 }, -- Cower
[27005] = { level=66, rank=5, next=48578 }, -- Ravage
[27006] = { level=66, rank=4, next=49803 }, -- Pounce
[27008] = { level=67, rank=7, next=49799 }, -- Rip
[27009] = { level=68, rank=7, next=53312 }, -- Nature's Grasp
[27012] = { level=70, rank=4, next=48467 }, -- Hurricane
[27013] = { level=70, rank=6, next=48468 }, -- Insect Swarm
[27014] = { level=63, rank=9, next=48995 }, -- Raptor Strike
[27016] = { level=67, rank=10, next=49000 }, -- Serpent Sting
[27019] = { level=69, rank=9, next=49044 }, -- Arcane Shot
[27021] = { level=67, rank=6, next=49047 }, -- Multi-Shot
[27022] = { level=67, rank=4, next=58431 }, -- Volley
[27023] = { level=65, rank=6, next=49055 }, -- Immolation Trap
[27025] = { level=61, rank=4, next=49066 }, -- Explosive Trap
[27044] = { level=68, rank=8, next=61846 }, -- Aspect of the Hawk
[27045] = { level=68, rank=3, next=49071 }, -- Aspect of the Wild
[27046] = { level=68, rank=8, next=48989 }, -- Mend Pet
[27065] = { level=70, rank=7, next=49049 }, -- Aimed Shot
[27067] = { level=66, rank=4, next=48998 }, -- Counterattack
[27068] = { level=70, rank=4, next=49011 }, -- Wyvern Sting
[27070] = { level=66, rank=13, next=38692 }, -- Fireball
[27071] = { level=63, rank=12, next=27072 }, -- Frostbolt
[27072] = { level=69, rank=13, next=38697 }, -- Frostbolt
[27073] = { level=65, rank=8, next=27074 }, -- Scorch
[27074] = { level=70, rank=9, next=42858 }, -- Scorch
[27075] = { level=63, rank=9, next=38699 }, -- Arcane Missiles
[27078] = { level=61, rank=8, next=27079 }, -- Fire Blast
[27079] = { level=70, rank=9, next=42872 }, -- Fire Blast
[27080] = { level=62, rank=7, next=27082 }, -- Arcane Explosion
[27082] = { level=70, rank=8, next=42920 }, -- Arcane Explosion
[27085] = { level=68, rank=7, next=42939 }, -- Blizzard
[27086] = { level=64, rank=7, next=42925 }, -- Flamestrike
[27087] = { level=65, rank=6, next=42930 }, -- Cone of Cold
[27088] = { level=67, rank=5, next=42917 }, -- Frost Nova
[27090] = { level=70, rank=9, next=42955 }, -- Conjure Water
[27101] = { level=68, rank=5, next=42985 }, -- Conjure Mana Gem
[27124] = { level=69, rank=5, next=43008 }, -- Ice Armor
[27125] = { level=69, rank=4, next=43023 }, -- Mage Armor
[27126] = { level=70, rank=6, next=42995 }, -- Arcane Intellect
[27127] = { level=70, rank=2, next=43002 }, -- Arcane Brilliance
[27128] = { level=69, rank=6, next=43010 }, -- Fire Ward
[27130] = { level=63, rank=5, next=33946 }, -- Amplify Magic
[27131] = { level=68, rank=7, next=43019 }, -- Mana Shield
[27132] = { level=66, rank=9, next=33938 }, -- Pyroblast
[27133] = { level=65, rank=6, next=33933 }, -- Blast Wave
[27134] = { level=64, rank=5, next=33405 }, -- Ice Barrier
[27135] = { level=62, rank=10, next=27136 }, -- Holy Light
[27136] = { level=70, rank=11, next=48781 }, -- Holy Light
[27137] = { level=66, rank=7, next=48784 }, -- Flash of Light
[27138] = { level=68, rank=7, next=48800 }, -- Exorcism
[27139] = { level=69, rank=3, next=48816 }, -- Holy Wrath
[27140] = { level=70, rank=8, next=48931 }, -- Blessing of Might
[27141] = { level=70, rank=3, next=48933 }, -- Greater Blessing of Might
[27142] = { level=65, rank=7, next=48935 }, -- Blessing of Wisdom
[27143] = { level=65, rank=3, next=48937 }, -- Greater Blessing of Wisdom
[27149] = { level=70, rank=8, next=48941 }, -- Devotion Aura
[27150] = { level=66, rank=6, next=54043 }, -- Retribution Aura
[27151] = { level=63, rank=4, next=48943 }, -- Shadow Resistance Aura
[27152] = { level=68, rank=4, next=48945 }, -- Frost Resistance Aura
[27153] = { level=70, rank=4, next=48947 }, -- Fire Resistance Aura
[27154] = { level=69, rank=4, next=48788 }, -- Lay on Hands
[27173] = { level=70, rank=6, next=48818 }, -- Consecration
[27174] = { level=64, rank=4, next=33072 }, -- Holy Shock
[27179] = { level=70, rank=4, next=48951 }, -- Holy Shield
[27180] = { level=68, rank=4, next=48805 }, -- Hammer of Wrath
[27209] = { level=69, rank=11, next=47808 }, -- Shadow Bolt
[27210] = { level=65, rank=7, next=30459 }, -- Searing Pain
[27211] = { level=64, rank=3, next=30545 }, -- Soul Fire
[27212] = { level=69, rank=5, next=47819 }, -- Rain of Fire
[27213] = { level=68, rank=4, next=47823 }, -- Hellfire
[27215] = { level=69, rank=9, next=47810 }, -- Immolate
[27216] = { level=65, rank=8, next=47812 }, -- Corruption
[27217] = { level=67, rank=5, next=47855 }, -- Drain Soul
[27218] = { level=67, rank=7, next=47863 }, -- Curse of Agony
[27219] = { level=62, rank=7, next=27220 }, -- Drain Life
[27220] = { level=69, rank=8, next=47857 }, -- Drain Life
[27222] = { level=68, rank=7, next=57946 }, -- Life Tap
[27223] = { level=68, rank=4, next=47859 }, -- Death Coil
[27224] = { level=61, rank=7, next=30909 }, -- Curse of Weakness
[27228] = { level=69, rank=4, next=47865 }, -- Curse of the Elements
[27230] = { level=68, rank=6, next=47871 }, -- Create Healthstone
[27238] = { level=70, rank=6, next=47884 }, -- Create Soulstone
[27243] = { level=70, rank=1, next=47835 }, -- Seed of Corruption
[27250] = { level=66, rank=5, next=60219 }, -- Create Firestone
[27259] = { level=67, rank=8, next=47856 }, -- Health Funnel
[27260] = { level=70, rank=6, next=47793 }, -- Demon Armor
[27263] = { level=63, rank=7, next=30546 }, -- Shadowburn
[27265] = { level=70, rank=4, next=59092 }, -- Dark Pact
[27441] = { level=66, rank=7, next=48689 }, -- Ambush
[27448] = { level=64, rank=6, next=48658 }, -- Feint
[27681] = { level=60, rank=1, next=32999 }, -- Prayer of Spirit
[27683] = { level=56, rank=1, next=39374 }, -- Prayer of Shadow Protection
[27799] = { level=44, rank=4, next=27800 }, -- Holy Nova
[27800] = { level=52, rank=5, next=27801 }, -- Holy Nova
[27801] = { level=60, rank=6, next=25331 }, -- Holy Nova
[27841] = { level=60, rank=4, next=25312 }, -- Divine Spirit
[27870] = { level=50, rank=2, next=27871 }, -- Lightwell
[27871] = { level=60, rank=3, next=28275 }, -- Lightwell
[28172] = { level=66, rank=4, next=47886 }, -- Create Spellstone
[28176] = { level=62, rank=1, next=28189 }, -- Fel Armor
[28189] = { level=69, rank=2, next=47892 }, -- Fel Armor
[28275] = { level=70, rank=4, next=48086 }, -- Lightwell
[28609] = { level=60, rank=5, next=32796 }, -- Frost Ward
[28610] = { level=60, rank=4, next=47890 }, -- Shadow Ward
[28612] = { level=60, rank=7, next=33717 }, -- Conjure Food
[29228] = { level=60, rank=6, next=25457 }, -- Flame Shock
[29707] = { level=66, rank=10, next=30324 }, -- Heroic Strike
[29722] = { level=64, rank=1, next=32231 }, -- Incinerate
[29893] = { level=68, rank=1, next=58887 }, -- Ritual of Souls
[30016] = { level=60, rank=2, next=30022 }, -- Devastate
[30022] = { level=70, rank=3, next=47497 }, -- Devastate
[30108] = { level=50, rank=1, next=30404 }, -- Unstable Affliction
[30283] = { level=50, rank=1, next=30413 }, -- Shadowfury
[30324] = { level=70, rank=11, next=47449 }, -- Heroic Strike
[30330] = { level=70, rank=6, next=47485 }, -- Mortal Strike
[30356] = { level=70, rank=6, next=47487 }, -- Shield Slam
[30357] = { level=70, rank=8, next=57823 }, -- Revenge
[30404] = { level=60, rank=2, next=30405 }, -- Unstable Affliction
[30405] = { level=70, rank=3, next=47841 }, -- Unstable Affliction
[30413] = { level=60, rank=2, next=30414 }, -- Shadowfury
[30414] = { level=70, rank=3, next=47846 }, -- Shadowfury
[30451] = { level=64, rank=1, next=42894 }, -- Arcane Blast
[30455] = { level=66, rank=1, next=42913 }, -- Ice Lance
[30459] = { level=70, rank=8, next=47814 }, -- Searing Pain
[30482] = { level=62, rank=1, next=43045 }, -- Molten Armor
[30545] = { level=70, rank=4, next=47824 }, -- Soul Fire
[30546] = { level=70, rank=8, next=47826 }, -- Shadowburn
[30706] = { level=50, rank=1, next=57720 }, -- Totem of Wrath
[30909] = { level=69, rank=8, next=50511 }, -- Curse of Weakness
[30910] = { level=70, rank=2, next=47867 }, -- Curse of Doom
[31016] = { level=60, rank=9, next=26865 }, -- Eviscerate
[31018] = { level=60, rank=5, next=24248 }, -- Ferocious Bite
[31661] = { level=50, rank=1, next=33041 }, -- Dragon's Breath
[31709] = { level=60, rank=4, next=27004 }, -- Cower
[31935] = { level=50, rank=1, next=32699 }, -- Avenger's Shield
[32231] = { level=70, rank=2, next=47837 }, -- Incinerate
[32379] = { level=62, rank=1, next=32996 }, -- Shadow Word: Death
[32546] = { level=64, rank=1, next=48119 }, -- Binding Heal
[32593] = { level=60, rank=2, next=32594 }, -- Earth Shield
[32594] = { level=70, rank=3, next=49283 }, -- Earth Shield
[32645] = { level=62, rank=1, next=32684 }, -- Envenom
[32684] = { level=69, rank=2, next=57992 }, -- Envenom
[32699] = { level=60, rank=2, next=32700 }, -- Avenger's Shield
[32700] = { level=70, rank=3, next=48826 }, -- Avenger's Shield
[32796] = { level=70, rank=6, next=43012 }, -- Frost Ward
[32996] = { level=70, rank=2, next=48157 }, -- Shadow Word: Death
[32999] = { level=70, rank=2, next=48074 }, -- Prayer of Spirit
[33041] = { level=56, rank=2, next=33042 }, -- Dragon's Breath
[33042] = { level=64, rank=3, next=33043 }, -- Dragon's Breath
[33043] = { level=70, rank=4, next=42949 }, -- Dragon's Breath
[33072] = { level=70, rank=5, next=48824 }, -- Holy Shock
[33076] = { level=68, rank=1, next=48112 }, -- Prayer of Mending
[33357] = { level=65, rank=3 }, -- Dash
[33405] = { level=70, rank=6, next=43038 }, -- Ice Barrier
[33717] = { level=70, rank=8, next=42955 }, -- Conjure Food
[33736] = { level=69, rank=8, next=57960 }, -- Water Shield
[33745] = { level=66, rank=1, next=48567 }, -- Lacerate
[33763] = { level=64, rank=1, next=48450 }, -- Lifebloom
[33876] = { level=50, rank=1, next=33982 }, -- Mangle (Cat)
[33878] = { level=50, rank=1, next=33986 }, -- Mangle (Bear)
[33933] = { level=70, rank=7, next=42944 }, -- Blast Wave
[33938] = { level=70, rank=10, next=42890 }, -- Pyroblast
[33944] = { level=67, rank=6, next=43015 }, -- Dampen Magic
[33946] = { level=69, rank=6, next=43017 }, -- Amplify Magic
[33982] = { level=58, rank=2, next=33983 }, -- Mangle (Cat)
[33983] = { level=68, rank=3, next=48565 }, -- Mangle (Cat)
[33986] = { level=58, rank=2, next=33987 }, -- Mangle (Bear)
[33987] = { level=68, rank=3, next=48563 }, -- Mangle (Bear)
[34120] = { level=62, rank=2, next=49051 }, -- Steady Shot
[34411] = { level=50, rank=2, next=34412 }, -- Mutilate
[34412] = { level=60, rank=3, next=34413 }, -- Mutilate
[34413] = { level=70, rank=4, next=48663 }, -- Mutilate
[34861] = { level=50, rank=1, next=34863 }, -- Circle of Healing
[34863] = { level=56, rank=2, next=34864 }, -- Circle of Healing
[34864] = { level=60, rank=3, next=34865 }, -- Circle of Healing
[34865] = { level=65, rank=4, next=34866 }, -- Circle of Healing
[34866] = { level=70, rank=5, next=48088 }, -- Circle of Healing
[34914] = { level=50, rank=1, next=34916 }, -- Vampiric Touch
[34916] = { level=60, rank=2, next=34917 }, -- Vampiric Touch
[34917] = { level=70, rank=3, next=48159 }, -- Vampiric Touch
[36916] = { level=70, rank=5, next=53339 }, -- Mongoose Bite
[37420] = { level=65, rank=8, next=27090 }, -- Conjure Water
[38692] = { level=70, rank=14, next=42832 }, -- Fireball
[38697] = { level=70, rank=14, next=42841 }, -- Frostbolt
[38699] = { level=69, rank=10, next=38704 }, -- Arcane Missiles
[38704] = { level=70, rank=11, next=42843 }, -- Arcane Missiles
[39374] = { level=70, rank=2, next=48170 }, -- Prayer of Shadow Protection
[42832] = { level=74, rank=15, next=42833 }, -- Fireball
[42833] = { level=78, rank=16 }, -- Fireball
[42841] = { level=75, rank=15, next=42842 }, -- Frostbolt
[42842] = { level=79, rank=16 }, -- Frostbolt
[42843] = { level=75, rank=12, next=42846 }, -- Arcane Missiles
[42846] = { level=79, rank=13 }, -- Arcane Missiles
[42858] = { level=73, rank=10, next=42859 }, -- Scorch
[42859] = { level=78, rank=11 }, -- Scorch
[42872] = { level=74, rank=10, next=42873 }, -- Fire Blast
[42873] = { level=80, rank=11 }, -- Fire Blast
[42890] = { level=73, rank=11, next=42891 }, -- Pyroblast
[42891] = { level=77, rank=12 }, -- Pyroblast
[42894] = { level=71, rank=2, next=42896 }, -- Arcane Blast
[42896] = { level=76, rank=3, next=42897 }, -- Arcane Blast
[42897] = { level=80, rank=4 }, -- Arcane Blast
[42913] = { level=72, rank=2, next=42914 }, -- Ice Lance
[42914] = { level=78, rank=3 }, -- Ice Lance
[42917] = { level=75, rank=6 }, -- Frost Nova
[42920] = { level=76, rank=9, next=42921 }, -- Arcane Explosion
[42921] = { level=80, rank=10 }, -- Arcane Explosion
[42925] = { level=72, rank=8, next=42926 }, -- Flamestrike
[42926] = { level=79, rank=9 }, -- Flamestrike
[42930] = { level=72, rank=7, next=42931 }, -- Cone of Cold
[42931] = { level=79, rank=8 }, -- Cone of Cold
[42939] = { level=74, rank=8, next=42940 }, -- Blizzard
[42940] = { level=80, rank=9 }, -- Blizzard
[42944] = { level=75, rank=8, next=42945 }, -- Blast Wave
[42945] = { level=80, rank=9 }, -- Blast Wave
[42949] = { level=75, rank=5, next=42950 }, -- Dragon's Breath
[42950] = { level=80, rank=6 }, -- Dragon's Breath
[42955] = { level=75, rank=1, next=42956 }, -- Conjure Refreshment
[42956] = { level=80, rank=2 }, -- Conjure Refreshment
[42985] = { level=77, rank=6 }, -- Conjure Mana Gem
[42995] = { level=80, rank=7 }, -- Arcane Intellect
[43002] = { level=80, rank=3 }, -- Arcane Brilliance
[43008] = { level=79, rank=6 }, -- Ice Armor
[43010] = { level=78, rank=7 }, -- Fire Ward
[43012] = { level=79, rank=7 }, -- Frost Ward
[43015] = { level=76, rank=7 }, -- Dampen Magic
[43017] = { level=77, rank=7 }, -- Amplify Magic
[43019] = { level=73, rank=8, next=43020 }, -- Mana Shield
[43020] = { level=79, rank=9 }, -- Mana Shield
[43023] = { level=71, rank=5, next=43024 }, -- Mage Armor
[43024] = { level=79, rank=6 }, -- Mage Armor
[43038] = { level=75, rank=7, next=43039 }, -- Ice Barrier
[43039] = { level=80, rank=8 }, -- Ice Barrier
[43045] = { level=71, rank=2, next=43046 }, -- Molten Armor
[43046] = { level=79, rank=3 }, -- Molten Armor
[43265] = { level=60, rank=1, next=49936 }, -- Death and Decay
[43987] = { level=70, rank=1, next=58659 }, -- Ritual of Refreshment
[44425] = { level=60, rank=1, next=44780 }, -- Arcane Barrage
[44457] = { level=60, rank=1, next=55359 }, -- Living Bomb
[44614] = { level=75, rank=1, next=47610 }, -- Frostfire Bolt
[44780] = { level=70, rank=2, next=44781 }, -- Arcane Barrage
[44781] = { level=80, rank=3 }, -- Arcane Barrage
[45462] = { level=55, rank=1, next=49917 }, -- Plague Strike
[45463] = { level=70, rank=3, next=49923 }, -- Death Strike
[45477] = { level=55, rank=1, next=49896 }, -- Icy Touch
[45902] = { level=55, rank=1, next=49926 }, -- Blood Strike
[46845] = { level=71, rank=9, next=47465 }, -- Rend
[47436] = { level=78, rank=9 }, -- Battle Shout
[47437] = { level=79, rank=8 }, -- Demoralizing Shout
[47439] = { level=74, rank=2, next=47440 }, -- Commanding Shout
[47440] = { level=80, rank=3 }, -- Commanding Shout
[47449] = { level=72, rank=12, next=47450 }, -- Heroic Strike
[47450] = { level=76, rank=13 }, -- Heroic Strike
[47465] = { level=76, rank=10 }, -- Rend
[47470] = { level=73, rank=8, next=47471 }, -- Execute
[47471] = { level=80, rank=9 }, -- Execute
[47474] = { level=74, rank=7, next=47475 }, -- Slam
[47475] = { level=79, rank=8 }, -- Slam
[47485] = { level=75, rank=7, next=47486 }, -- Mortal Strike
[47486] = { level=80, rank=8 }, -- Mortal Strike
[47487] = { level=75, rank=7, next=47488 }, -- Shield Slam
[47488] = { level=80, rank=8 }, -- Shield Slam
[47497] = { level=75, rank=4, next=47498 }, -- Devastate
[47498] = { level=80, rank=5 }, -- Devastate
[47501] = { level=73, rank=8, next=47502 }, -- Thunder Clap
[47502] = { level=78, rank=9 }, -- Thunder Clap
[47519] = { level=72, rank=7, next=47520 }, -- Cleave
[47520] = { level=77, rank=8 }, -- Cleave
[47540] = { level=60, rank=1, next=53005 }, -- Penance
[47541] = { level=55, rank=1, next=49892 }, -- Death Coil
[47610] = { level=80, rank=2 }, -- Frostfire Bolt
[47793] = { level=76, rank=7, next=47889 }, -- Demon Armor
[47808] = { level=74, rank=12, next=47809 }, -- Shadow Bolt
[47809] = { level=79, rank=13 }, -- Shadow Bolt
[47810] = { level=75, rank=10, next=47811 }, -- Immolate
[47811] = { level=80, rank=11 }, -- Immolate
[47812] = { level=71, rank=9, next=47813 }, -- Corruption
[47813] = { level=77, rank=10 }, -- Corruption
[47814] = { level=74, rank=9, next=47815 }, -- Searing Pain
[47815] = { level=79, rank=10 }, -- Searing Pain
[47819] = { level=72, rank=6, next=47820 }, -- Rain of Fire
[47820] = { level=79, rank=7 }, -- Rain of Fire
[47823] = { level=78, rank=5 }, -- Hellfire
[47824] = { level=75, rank=5, next=47825 }, -- Soul Fire
[47825] = { level=80, rank=6 }, -- Soul Fire
[47826] = { level=75, rank=9, next=47827 }, -- Shadowburn
[47827] = { level=80, rank=10 }, -- Shadowburn
[47835] = { level=75, rank=2, next=47836 }, -- Seed of Corruption
[47836] = { level=80, rank=3 }, -- Seed of Corruption
[47837] = { level=74, rank=3, next=47838 }, -- Incinerate
[47838] = { level=80, rank=4 }, -- Incinerate
[47841] = { level=75, rank=4, next=47843 }, -- Unstable Affliction
[47843] = { level=80, rank=5 }, -- Unstable Affliction
[47846] = { level=75, rank=4, next=47847 }, -- Shadowfury
[47847] = { level=80, rank=5 }, -- Shadowfury
[47855] = { level=77, rank=6 }, -- Drain Soul
[47856] = { level=76, rank=9 }, -- Health Funnel
[47857] = { level=78, rank=9 }, -- Drain Life
[47859] = { level=73, rank=5, next=47860 }, -- Death Coil
[47860] = { level=78, rank=6 }, -- Death Coil
[47863] = { level=73, rank=8, next=47864 }, -- Curse of Agony
[47864] = { level=79, rank=9 }, -- Curse of Agony
[47865] = { level=78, rank=5 }, -- Curse of the Elements
[47867] = { level=80, rank=3 }, -- Curse of Doom
[47871] = { level=73, rank=7, next=47878 }, -- Create Healthstone
[47878] = { level=79, rank=8 }, -- Create Healthstone
[47884] = { level=76, rank=7 }, -- Create Soulstone
[47886] = { level=72, rank=5, next=47888 }, -- Create Spellstone
[47888] = { level=78, rank=6 }, -- Create Spellstone
[47889] = { level=80, rank=8 }, -- Demon Armor
[47890] = { level=72, rank=5, next=47891 }, -- Shadow Ward
[47891] = { level=78, rank=6 }, -- Shadow Ward
[47892] = { level=74, rank=3, next=47893 }, -- Fel Armor
[47893] = { level=79, rank=4 }, -- Fel Armor
[47897] = { level=75, rank=1, next=61290 }, -- Shadowflame
[48040] = { level=71, rank=8, next=48168 }, -- Inner Fire
[48045] = { level=75, rank=1, next=53023 }, -- Mind Sear
[48062] = { level=73, rank=8, next=48063 }, -- Greater Heal
[48063] = { level=78, rank=9 }, -- Greater Heal
[48065] = { level=75, rank=13, next=48066 }, -- Power Word: Shield
[48066] = { level=80, rank=14 }, -- Power Word: Shield
[48067] = { level=75, rank=13, next=48068 }, -- Renew
[48068] = { level=80, rank=14 }, -- Renew
[48070] = { level=73, rank=10, next=48071 }, -- Flash Heal
[48071] = { level=79, rank=11 }, -- Flash Heal
[48072] = { level=76, rank=7 }, -- Prayer of Healing
[48073] = { level=80, rank=6 }, -- Divine Spirit
[48074] = { level=80, rank=3 }, -- Prayer of Spirit
[48077] = { level=75, rank=8, next=48078 }, -- Holy Nova
[48078] = { level=80, rank=9 }, -- Holy Nova
[48086] = { level=75, rank=5, next=48087 }, -- Lightwell
[48087] = { level=80, rank=6 }, -- Lightwell
[48088] = { level=75, rank=6, next=48089 }, -- Circle of Healing
[48089] = { level=80, rank=7 }, -- Circle of Healing
[48112] = { level=74, rank=2, next=48113 }, -- Prayer of Mending
[48113] = { level=79, rank=3 }, -- Prayer of Mending
[48119] = { level=72, rank=2, next=48120 }, -- Binding Heal
[48120] = { level=78, rank=3 }, -- Binding Heal
[48122] = { level=74, rank=11, next=48123 }, -- Smite
[48123] = { level=79, rank=12 }, -- Smite
[48124] = { level=75, rank=11, next=48125 }, -- Shadow Word: Pain
[48125] = { level=80, rank=12 }, -- Shadow Word: Pain
[48126] = { level=74, rank=12, next=48127 }, -- Mind Blast
[48127] = { level=79, rank=13 }, -- Mind Blast
[48134] = { level=72, rank=10, next=48135 }, -- Holy Fire
[48135] = { level=78, rank=11 }, -- Holy Fire
[48155] = { level=74, rank=8, next=48156 }, -- Mind Flay
[48156] = { level=80, rank=9 }, -- Mind Flay
[48157] = { level=75, rank=3, next=48158 }, -- Shadow Word: Death
[48158] = { level=80, rank=4 }, -- Shadow Word: Death
[48159] = { level=75, rank=4, next=48160 }, -- Vampiric Touch
[48160] = { level=80, rank=5 }, -- Vampiric Touch
[48161] = { level=80, rank=8 }, -- Power Word: Fortitude
[48162] = { level=80, rank=4 }, -- Prayer of Fortitude
[48168] = { level=77, rank=9 }, -- Inner Fire
[48169] = { level=76, rank=5 }, -- Shadow Protection
[48170] = { level=77, rank=3 }, -- Prayer of Shadow Protection
[48171] = { level=78, rank=7 }, -- Resurrection
[48172] = { level=73, rank=8, next=48173 }, -- Desperate Prayer
[48173] = { level=80, rank=9 }, -- Desperate Prayer
[48181] = { level=60, rank=1, next=59161 }, -- Haunt
[48299] = { level=73, rank=8, next=48300 }, -- Devouring Plague
[48300] = { level=79, rank=9 }, -- Devouring Plague
[48377] = { level=74, rank=14, next=48378 }, -- Healing Touch
[48378] = { level=79, rank=15 }, -- Healing Touch
[48438] = { level=60, rank=1, next=53248 }, -- Wild Growth
[48440] = { level=75, rank=14, next=48441 }, -- Rejuvenation
[48441] = { level=80, rank=15 }, -- Rejuvenation
[48442] = { level=71, rank=11, next=48443 }, -- Regrowth
[48443] = { level=77, rank=12 }, -- Regrowth
[48446] = { level=75, rank=6, next=48447 }, -- Tranquility
[48447] = { level=80, rank=7 }, -- Tranquility
[48450] = { level=72, rank=2, next=48451 }, -- Lifebloom
[48451] = { level=80, rank=3 }, -- Lifebloom
[48459] = { level=74, rank=11, next=48461 }, -- Wrath
[48461] = { level=79, rank=12 }, -- Wrath
[48462] = { level=75, rank=13, next=48463 }, -- Moonfire
[48463] = { level=80, rank=14 }, -- Moonfire
[48464] = { level=72, rank=9, next=48465 }, -- Starfire
[48465] = { level=78, rank=10 }, -- Starfire
[48467] = { level=80, rank=5 }, -- Hurricane
[48468] = { level=80, rank=7 }, -- Insect Swarm
[48469] = { level=80, rank=9 }, -- Mark of the Wild
[48470] = { level=80, rank=4 }, -- Gift of the Wild
[48477] = { level=79, rank=7 }, -- Rebirth
[48479] = { level=73, rank=9, next=48480 }, -- Maul
[48480] = { level=79, rank=10 }, -- Maul
[48505] = { level=60, rank=1, next=53199 }, -- Starfall
[48559] = { level=71, rank=7, next=48560 }, -- Demoralizing Roar
[48560] = { level=77, rank=8 }, -- Demoralizing Roar
[48561] = { level=72, rank=7, next=48562 }, -- Swipe (Bear)
[48562] = { level=77, rank=8 }, -- Swipe (Bear)
[48563] = { level=75, rank=4, next=48564 }, -- Mangle (Bear)
[48564] = { level=80, rank=5 }, -- Mangle (Bear)
[48565] = { level=75, rank=4, next=48566 }, -- Mangle (Cat)
[48566] = { level=80, rank=5 }, -- Mangle (Cat)
[48567] = { level=73, rank=2, next=48568 }, -- Lacerate
[48568] = { level=80, rank=3 }, -- Lacerate
[48569] = { level=73, rank=7, next=48570 }, -- Claw
[48570] = { level=79, rank=8 }, -- Claw
[48571] = { level=75, rank=8, next=48572 }, -- Shred
[48572] = { level=80, rank=9 }, -- Shred
[48573] = { level=72, rank=6, next=48574 }, -- Rake
[48574] = { level=78, rank=7 }, -- Rake
[48575] = { level=76, rank=6 }, -- Cower
[48576] = { level=72, rank=7, next=48577 }, -- Ferocious Bite
[48577] = { level=78, rank=8 }, -- Ferocious Bite
[48578] = { level=73, rank=6, next=48579 }, -- Ravage
[48579] = { level=79, rank=7 }, -- Ravage
[48637] = { level=76, rank=11, next=48638 }, -- Sinister Strike
[48638] = { level=80, rank=12 }, -- Sinister Strike
[48656] = { level=74, rank=11, next=48657 }, -- Backstab
[48657] = { level=80, rank=12 }, -- Backstab
[48658] = { level=72, rank=7, next=48659 }, -- Feint
[48659] = { level=78, rank=8 }, -- Feint
[48660] = { level=80, rank=5 }, -- Hemorrhage
[48663] = { level=75, rank=5, next=48666 }, -- Mutilate
[48666] = { level=80, rank=6 }, -- Mutilate
[48667] = { level=73, rank=11, next=48668 }, -- Eviscerate
[48668] = { level=79, rank=12 }, -- Eviscerate
[48671] = { level=74, rank=8, next=48672 }, -- Rupture
[48672] = { level=79, rank=9 }, -- Rupture
[48673] = { level=70, rank=2, next=48674 }, -- Deadly Throw
[48674] = { level=76, rank=3 }, -- Deadly Throw
[48675] = { level=75, rank=9, next=48676 }, -- Garrote
[48676] = { level=80, rank=10 }, -- Garrote
[48689] = { level=70, rank=8, next=48690 }, -- Ambush
[48690] = { level=75, rank=9, next=48691 }, -- Ambush
[48691] = { level=80, rank=10 }, -- Ambush
[48721] = { level=58, rank=1, next=49939 }, -- Blood Boil
[48781] = { level=75, rank=12, next=48782 }, -- Holy Light
[48782] = { level=80, rank=13 }, -- Holy Light
[48784] = { level=74, rank=8, next=48785 }, -- Flash of Light
[48785] = { level=79, rank=9 }, -- Flash of Light
[48788] = { level=78, rank=5 }, -- Lay on Hands
[48800] = { level=73, rank=8, next=48801 }, -- Exorcism
[48801] = { level=79, rank=9 }, -- Exorcism
[48805] = { level=74, rank=5, next=48806 }, -- Hammer of Wrath
[48806] = { level=80, rank=6 }, -- Hammer of Wrath
[48816] = { level=72, rank=4, next=48817 }, -- Holy Wrath
[48817] = { level=78, rank=5 }, -- Holy Wrath
[48818] = { level=75, rank=7, next=48819 }, -- Consecration
[48819] = { level=80, rank=8 }, -- Consecration
[48824] = { level=75, rank=6, next=48825 }, -- Holy Shock
[48825] = { level=80, rank=7 }, -- Holy Shock
[48826] = { level=75, rank=4, next=48827 }, -- Avenger's Shield
[48827] = { level=80, rank=5 }, -- Avenger's Shield
[48931] = { level=73, rank=9, next=48932 }, -- Blessing of Might
[48932] = { level=79, rank=10 }, -- Blessing of Might
[48933] = { level=73, rank=4, next=48934 }, -- Greater Blessing of Might
[48934] = { level=79, rank=5 }, -- Greater Blessing of Might
[48935] = { level=71, rank=8, next=48936 }, -- Blessing of Wisdom
[48936] = { level=77, rank=9 }, -- Blessing of Wisdom
[48937] = { level=71, rank=4, next=48938 }, -- Greater Blessing of Wisdom
[48938] = { level=77, rank=5 }, -- Greater Blessing of Wisdom
[48941] = { level=74, rank=9, next=48942 }, -- Devotion Aura
[48942] = { level=79, rank=10 }, -- Devotion Aura
[48943] = { level=76, rank=5 }, -- Shadow Resistance Aura
[48945] = { level=77, rank=5 }, -- Frost Resistance Aura
[48947] = { level=78, rank=5 }, -- Fire Resistance Aura
[48949] = { level=72, rank=6, next=48950 }, -- Redemption
[48950] = { level=79, rank=7 }, -- Redemption
[48951] = { level=75, rank=5, next=48952 }, -- Holy Shield
[48952] = { level=80, rank=6 }, -- Holy Shield
[48989] = { level=74, rank=9, next=48990 }, -- Mend Pet
[48990] = { level=80, rank=10 }, -- Mend Pet
[48995] = { level=71, rank=10, next=48996 }, -- Raptor Strike
[48996] = { level=77, rank=11 }, -- Raptor Strike
[48998] = { level=72, rank=5, next=48999 }, -- Counterattack
[48999] = { level=78, rank=6 }, -- Counterattack
[49000] = { level=73, rank=11, next=49001 }, -- Serpent Sting
[49001] = { level=79, rank=12 }, -- Serpent Sting
[49011] = { level=75, rank=5, next=49012 }, -- Wyvern Sting
[49012] = { level=80, rank=6 }, -- Wyvern Sting
[49020] = { level=61, rank=1, next=51423 }, -- Obliterate
[49044] = { level=73, rank=10, next=49045 }, -- Arcane Shot
[49045] = { level=79, rank=11 }, -- Arcane Shot
[49047] = { level=74, rank=7, next=49048 }, -- Multi-Shot
[49048] = { level=80, rank=8 }, -- Multi-Shot
[49049] = { level=75, rank=8, next=49050 }, -- Aimed Shot
[49050] = { level=80, rank=9 }, -- Aimed Shot
[49051] = { level=71, rank=3, next=49052 }, -- Steady Shot
[49052] = { level=77, rank=4 }, -- Steady Shot
[49055] = { level=72, rank=7, next=49056 }, -- Immolation Trap
[49056] = { level=78, rank=8 }, -- Immolation Trap
[49066] = { level=71, rank=5, next=49067 }, -- Explosive Trap
[49067] = { level=77, rank=6 }, -- Explosive Trap
[49071] = { level=76, rank=4 }, -- Aspect of the Wild
[49143] = { level=50, rank=1, next=51416 }, -- Frost Strike
[49158] = { level=20, rank=1, next=51325 }, -- Corpse Explosion
[49184] = { level=60, rank=1, next=51409 }, -- Howling Blast
[49230] = { level=74, rank=9, next=49231 }, -- Earth Shock
[49231] = { level=79, rank=10 }, -- Earth Shock
[49232] = { level=75, rank=8, next=49233 }, -- Flame Shock
[49233] = { level=80, rank=9 }, -- Flame Shock
[49235] = { level=73, rank=6, next=49236 }, -- Frost Shock
[49236] = { level=78, rank=7 }, -- Frost Shock
[49237] = { level=73, rank=13, next=49238 }, -- Lightning Bolt
[49238] = { level=79, rank=14 }, -- Lightning Bolt
[49270] = { level=74, rank=7, next=49271 }, -- Chain Lightning
[49271] = { level=80, rank=8 }, -- Chain Lightning
[49272] = { level=75, rank=13, next=49273 }, -- Healing Wave
[49273] = { level=80, rank=14 }, -- Healing Wave
[49275] = { level=72, rank=8, next=49276 }, -- Lesser Healing Wave
[49276] = { level=77, rank=9 }, -- Lesser Healing Wave
[49277] = { level=80, rank=7 }, -- Ancestral Spirit
[49280] = { level=75, rank=10, next=49281 }, -- Lightning Shield
[49281] = { level=80, rank=11 }, -- Lightning Shield
[49283] = { level=75, rank=4, next=49284 }, -- Earth Shield
[49284] = { level=80, rank=5 }, -- Earth Shield
[49799] = { level=71, rank=8, next=49800 }, -- Rip
[49800] = { level=80, rank=9 }, -- Rip
[49802] = { level=74, rank=2 }, -- Maim
[49803] = { level=77, rank=5 }, -- Pounce
[49892] = { level=62, rank=2, next=49893 }, -- Death Coil
[49893] = { level=68, rank=3, next=49894 }, -- Death Coil
[49894] = { level=76, rank=4, next=49895 }, -- Death Coil
[49895] = { level=80, rank=5 }, -- Death Coil
[49896] = { level=61, rank=2, next=49903 }, -- Icy Touch
[49903] = { level=67, rank=3, next=49904 }, -- Icy Touch
[49904] = { level=73, rank=4, next=49909 }, -- Icy Touch
[49909] = { level=78, rank=5 }, -- Icy Touch
[49917] = { level=60, rank=2, next=49918 }, -- Plague Strike
[49918] = { level=65, rank=3, next=49919 }, -- Plague Strike
[49919] = { level=70, rank=4, next=49920 }, -- Plague Strike
[49920] = { level=75, rank=5, next=49921 }, -- Plague Strike
[49921] = { level=80, rank=6 }, -- Plague Strike
[49923] = { level=75, rank=4, next=49924 }, -- Death Strike
[49924] = { level=80, rank=5 }, -- Death Strike
[49926] = { level=59, rank=2, next=49927 }, -- Blood Strike
[49927] = { level=64, rank=3, next=49928 }, -- Blood Strike
[49928] = { level=69, rank=4, next=49929 }, -- Blood Strike
[49929] = { level=74, rank=5, next=49930 }, -- Blood Strike
[49930] = { level=80, rank=6 }, -- Blood Strike
[49936] = { level=67, rank=2, next=49937 }, -- Death and Decay
[49937] = { level=73, rank=3, next=49938 }, -- Death and Decay
[49938] = { level=80, rank=4 }, -- Death and Decay
[49939] = { level=66, rank=2, next=49940 }, -- Blood Boil
[49940] = { level=72, rank=3, next=49941 }, -- Blood Boil
[49941] = { level=78, rank=4 }, -- Blood Boil
[49998] = { level=56, rank=1, next=49999 }, -- Death Strike
[49999] = { level=63, rank=2, next=45463 }, -- Death Strike
[50212] = { level=71, rank=5, next=50213 }, -- Tiger's Fury
[50213] = { level=79, rank=6 }, -- Tiger's Fury
[50464] = { level=80, rank=1 }, -- Nourish
[50511] = { level=71, rank=9 }, -- Curse of Weakness
[50516] = { level=50, rank=1, next=53223 }, -- Typhoon
[50763] = { level=80, rank=7 }, -- Revive
[50764] = { level=69, rank=6, next=50763 }, -- Revive
[50765] = { level=60, rank=5, next=50764 }, -- Revive
[50766] = { level=48, rank=4, next=50765 }, -- Revive
[50767] = { level=36, rank=3, next=50766 }, -- Revive
[50768] = { level=24, rank=2, next=50767 }, -- Revive
[50769] = { level=12, rank=1, next=50768 }, -- Revive
[50796] = { level=60, rank=1, next=59170 }, -- Chaos Bolt
[51325] = { level=60, rank=2, next=51326 }, -- Corpse Explosion
[51326] = { level=70, rank=3, next=51327 }, -- Corpse Explosion
[51327] = { level=75, rank=4, next=51328 }, -- Corpse Explosion
[51328] = { level=80, rank=5 }, -- Corpse Explosion
[51409] = { level=70, rank=2, next=51410 }, -- Howling Blast
[51410] = { level=75, rank=3, next=51411 }, -- Howling Blast
[51411] = { level=80, rank=4 }, -- Howling Blast
[51416] = { level=60, rank=2, next=51417 }, -- Frost Strike
[51417] = { level=65, rank=3, next=51418 }, -- Frost Strike
[51418] = { level=70, rank=4, next=51419 }, -- Frost Strike
[51419] = { level=75, rank=5, next=55268 }, -- Frost Strike
[51423] = { level=67, rank=2, next=51424 }, -- Obliterate
[51424] = { level=73, rank=3, next=51425 }, -- Obliterate
[51425] = { level=79, rank=4 }, -- Obliterate
[51490] = { level=60, rank=1, next=59156 }, -- Thunderstorm
[51505] = { level=75, rank=1, next=60043 }, -- Lava Burst
[51724] = { level=71, rank=4 }, -- Sap
[51730] = { level=30, rank=1, next=51988 }, -- Earthliving Weapon
[51988] = { level=40, rank=2, next=51991 }, -- Earthliving Weapon
[51991] = { level=50, rank=3, next=51992 }, -- Earthliving Weapon
[51992] = { level=60, rank=4, next=51993 }, -- Earthliving Weapon
[51993] = { level=70, rank=5, next=51994 }, -- Earthliving Weapon
[51994] = { level=80, rank=6 }, -- Earthliving Weapon
[52127] = { level=20, rank=1, next=52129 }, -- Water Shield
[52129] = { level=28, rank=2, next=52131 }, -- Water Shield
[52131] = { level=34, rank=3, next=52134 }, -- Water Shield
[52134] = { level=41, rank=4, next=52136 }, -- Water Shield
[52136] = { level=48, rank=5, next=52138 }, -- Water Shield
[52138] = { level=55, rank=6, next=24398 }, -- Water Shield
[52610] = { level=75, rank=1 }, -- Savage Roar
[53005] = { level=70, rank=2, next=53006 }, -- Penance
[53006] = { level=75, rank=3, next=53007 }, -- Penance
[53007] = { level=80, rank=4 }, -- Penance
[53023] = { level=80, rank=2 }, -- Mind Sear
[53199] = { level=70, rank=2, next=53200 }, -- Starfall
[53200] = { level=75, rank=3, next=53201 }, -- Starfall
[53201] = { level=80, rank=4 }, -- Starfall
[53223] = { level=60, rank=2, next=53225 }, -- Typhoon
[53225] = { level=70, rank=3, next=53226 }, -- Typhoon
[53226] = { level=75, rank=4, next=61384 }, -- Typhoon
[53248] = { level=70, rank=2, next=53249 }, -- Wild Growth
[53249] = { level=75, rank=3, next=53251 }, -- Wild Growth
[53251] = { level=80, rank=4 }, -- Wild Growth
[53301] = { level=60, rank=1, next=60051 }, -- Explosive Shot
[53307] = { level=74, rank=8 }, -- Thorns
[53308] = { level=78, rank=8 }, -- Entangling Roots
[53312] = { level=78, rank=8 }, -- Nature's Grasp
[53338] = { level=76, rank=5 }, -- Hunter's Mark
[53339] = { level=80, rank=6 }, -- Mongoose Bite
[53351] = { level=71, rank=1, next=61005 }, -- Kill Shot
[53600] = { level=75, rank=1, next=61411 }, -- Shield of Righteousness
[53601] = { level=80, rank=1 }, -- Sacred Shield
[54043] = { level=76, rank=7 }, -- Retribution Aura
[55050] = { level=50, rank=1, next=55258 }, -- Heart Strike
[55090] = { level=50, rank=1, next=55265 }, -- Scourge Strike
[55258] = { level=59, rank=2, next=55259 }, -- Heart Strike
[55259] = { level=64, rank=3, next=55260 }, -- Heart Strike
[55260] = { level=69, rank=4, next=55261 }, -- Heart Strike
[55261] = { level=74, rank=5, next=55262 }, -- Heart Strike
[55262] = { level=80, rank=6 }, -- Heart Strike
[55265] = { level=67, rank=2, next=55270 }, -- Scourge Strike
[55268] = { level=80, rank=6 }, -- Frost Strike
[55270] = { level=73, rank=3, next=55271 }, -- Scourge Strike
[55271] = { level=79, rank=4 }, -- Scourge Strike
[55359] = { level=70, rank=2, next=55360 }, -- Living Bomb
[55360] = { level=80, rank=3 }, -- Living Bomb
[55458] = { level=74, rank=6, next=55459 }, -- Chain Heal
[55459] = { level=80, rank=7 }, -- Chain Heal
[56641] = { level=50, rank=1, next=34120 }, -- Steady Shot
[57330] = { level=65, rank=1, next=57623 }, -- Horn of Winter
[57622] = { level=75, rank=7, next=58643 }, -- Strength of Earth Totem
[57623] = { level=75, rank=2 }, -- Horn of Winter
[57720] = { level=60, rank=2, next=57721 }, -- Totem of Wrath
[57721] = { level=70, rank=3, next=57722 }, -- Totem of Wrath
[57722] = { level=80, rank=4 }, -- Totem of Wrath
[57823] = { level=80, rank=9 }, -- Revenge
[57946] = { level=80, rank=8 }, -- Life Tap
[57960] = { level=76, rank=9 }, -- Water Shield
[57992] = { level=74, rank=3, next=57993 }, -- Envenom
[57993] = { level=80, rank=4 }, -- Envenom
[58431] = { level=74, rank=5, next=58434 }, -- Volley
[58434] = { level=80, rank=6 }, -- Volley
[58580] = { level=71, rank=8, next=58581 }, -- Stoneclaw Totem
[58581] = { level=75, rank=9, next=58582 }, -- Stoneclaw Totem
[58582] = { level=78, rank=10 }, -- Stoneclaw Totem
[58643] = { level=80, rank=8 }, -- Strength of Earth Totem
[58649] = { level=71, rank=6, next=58652 }, -- Flametongue Totem
[58652] = { level=75, rank=7, next=58656 }, -- Flametongue Totem
[58656] = { level=80, rank=8 }, -- Flametongue Totem
[58659] = { level=80, rank=2 }, -- Ritual of Refreshment
[58699] = { level=71, rank=8, next=58703 }, -- Searing Totem
[58703] = { level=75, rank=9, next=58704 }, -- Searing Totem
[58704] = { level=80, rank=10 }, -- Searing Totem
[58731] = { level=73, rank=6, next=58734 }, -- Magma Totem
[58734] = { level=78, rank=7 }, -- Magma Totem
[58737] = { level=75, rank=5, next=58739 }, -- Fire Resistance Totem
[58739] = { level=80, rank=6 }, -- Fire Resistance Totem
[58741] = { level=75, rank=5, next=58745 }, -- Frost Resistance Totem
[58745] = { level=80, rank=6 }, -- Frost Resistance Totem
[58746] = { level=75, rank=5, next=58749 }, -- Nature Resistance Totem
[58749] = { level=80, rank=6 }, -- Nature Resistance Totem
[58751] = { level=73, rank=9, next=58753 }, -- Stoneskin Totem
[58753] = { level=78, rank=10 }, -- Stoneskin Totem
[58755] = { level=71, rank=7, next=58756 }, -- Healing Stream Totem
[58756] = { level=76, rank=8, next=58757 }, -- Healing Stream Totem
[58757] = { level=80, rank=9 }, -- Healing Stream Totem
[58771] = { level=71, rank=6, next=58773 }, -- Mana Spring Totem
[58773] = { level=76, rank=7, next=58774 }, -- Mana Spring Totem
[58774] = { level=80, rank=8 }, -- Mana Spring Totem
[58785] = { level=71, rank=8, next=58789 }, -- Flametongue Weapon
[58789] = { level=76, rank=9, next=58790 }, -- Flametongue Weapon
[58790] = { level=80, rank=10 }, -- Flametongue Weapon
[58794] = { level=71, rank=7, next=58795 }, -- Frostbrand Weapon
[58795] = { level=76, rank=8, next=58796 }, -- Frostbrand Weapon
[58796] = { level=80, rank=9 }, -- Frostbrand Weapon
[58801] = { level=71, rank=6, next=58803 }, -- Windfury Weapon
[58803] = { level=76, rank=7, next=58804 }, -- Windfury Weapon
[58804] = { level=80, rank=8 }, -- Windfury Weapon
[58887] = { level=80, rank=2 }, -- Ritual of Souls
[59092] = { level=80, rank=5 }, -- Dark Pact
[59156] = { level=70, rank=2, next=59158 }, -- Thunderstorm
[59158] = { level=75, rank=3, next=59159 }, -- Thunderstorm
[59159] = { level=80, rank=4 }, -- Thunderstorm
[59161] = { level=70, rank=2, next=59163 }, -- Haunt
[59163] = { level=75, rank=3, next=59164 }, -- Haunt
[59164] = { level=80, rank=4 }, -- Haunt
[59170] = { level=70, rank=2, next=59171 }, -- Chaos Bolt
[59171] = { level=75, rank=3, next=59172 }, -- Chaos Bolt
[59172] = { level=80, rank=4 }, -- Chaos Bolt
[60043] = { level=80, rank=2 }, -- Lava Burst
[60051] = { level=70, rank=2, next=60052 }, -- Explosive Shot
[60052] = { level=75, rank=3, next=60053 }, -- Explosive Shot
[60053] = { level=80, rank=4 }, -- Explosive Shot
[60192] = { level=80, rank=1 }, -- Freezing Arrow
[60219] = { level=74, rank=6, next=60220 }, -- Create Firestone
[60220] = { level=80, rank=7 }, -- Create Firestone
[61005] = { level=75, rank=2, next=61006 }, -- Kill Shot
[61006] = { level=80, rank=3 }, -- Kill Shot
[61024] = { level=80, rank=7 }, -- Dalaran Intellect
[61191] = { level=72, rank=4 }, -- Enslave Demon
[61290] = { level=80, rank=2 }, -- Shadowflame
[61295] = { level=60, rank=1, next=61299 }, -- Riptide
[61299] = { level=70, rank=2, next=61300 }, -- Riptide
[61300] = { level=75, rank=3, next=61301 }, -- Riptide
[61301] = { level=80, rank=4 }, -- Riptide
[61316] = { level=80, rank=3 }, -- Dalaran Brilliance
[61384] = { level=80, rank=5 }, -- Typhoon
[61411] = { level=80, rank=2 }, -- Shield of Righteousness
[61649] = { level=75, rank=8, next=61657 }, -- Fire Nova Totem
[61657] = { level=80, rank=9 }, -- Fire Nova Totem
[61846] = { level=74, rank=1, next=61847 }, -- Aspect of the Dragonhawk
[61847] = { level=80, rank=2 }, -- Aspect of the Dragonhawk
[62078] = { level=71, rank=1 }, -- Swipe (Cat)
[63668] = { level=57, rank=2, next=63669 }, -- Black Arrow
[63669] = { level=63, rank=3, next=63670 }, -- Black Arrow
[63670] = { level=69, rank=4, next=63671 }, -- Black Arrow
[63671] = { level=75, rank=5, next=63672 }, -- Black Arrow
[63672] = { level=80, rank=6 }, -- Black Arrow
[64843] = { level=80, rank=1 }, -- Divine Hymn
[26688] = { level=68, rank=1, next=57981 }, -- Anesthetic Poison
[26785] = { level=68, rank=1, next=57982 }, -- Anesthetic Poison
[57981] = { level=77, rank=2 }, -- Anesthetic Poison II
[57982] = { level=77, rank=2 }, -- Anesthetic Poison II
[2818] = { level=30, rank=1, next=2819 }, -- Deadly Poison
[2823] = { level=30, rank=1, next=2824 }, -- Deadly Poison
[2819] = { level=38, rank=2, next=11353 }, -- Deadly Poison II
[2824] = { level=38, rank=2, next=11355 }, -- Deadly Poison II
[11353] = { level=46, rank=3, next=11354 }, -- Deadly Poison III
[11355] = { level=46, rank=3, next=11356 }, -- Deadly Poison III
[11354] = { level=54, rank=4, next=25349 }, -- Deadly Poison IV
[11356] = { level=54, rank=4, next=25351 }, -- Deadly Poison IV
[25349] = { level=60, rank=5, next=26967 }, -- Deadly Poison V
[25351] = { level=60, rank=5, next=26968 }, -- Deadly Poison V
[26967] = { level=62, rank=6, next=27186 }, -- Deadly Poison VI
[26968] = { level=62, rank=6, next=27187 }, -- Deadly Poison VI
[27186] = { level=70, rank=7, next=57969 }, -- Deadly Poison VII
[27187] = { level=70, rank=7, next=57972 }, -- Deadly Poison VII
[57969] = { level=76, rank=8, next=57970 }, -- Deadly Poison VIII
[57972] = { level=76, rank=8, next=57973 }, -- Deadly Poison VIII
[57970] = { level=80, rank=9 }, -- Deadly Poison IX
[57973] = { level=80, rank=9 }, -- Deadly Poison IX
[8679] = { level=20, rank=1, next=8685 }, -- Instant Poison
[8680] = { level=20, rank=1, next=8686 }, -- Instant Poison
[8685] = { level=28, rank=2, next=8688 }, -- Instant Poison II
[8686] = { level=28, rank=2, next=8689 }, -- Instant Poison II
[8688] = { level=36, rank=3, next=11335 }, -- Instant Poison III
[8689] = { level=36, rank=3, next=11338 }, -- Instant Poison III
[11335] = { level=44, rank=4, next=11336 }, -- Instant Poison IV
[11338] = { level=44, rank=4, next=11339 }, -- Instant Poison IV
[11336] = { level=52, rank=5, next=11337 }, -- Instant Poison V
[11339] = { level=52, rank=5, next=11340 }, -- Instant Poison V
[11337] = { level=60, rank=6, next=26890 }, -- Instant Poison VI
[11340] = { level=60, rank=6, next=26891 }, -- Instant Poison VI
[26890] = { level=68, rank=7, next=57964 }, -- Instant Poison VII
[26891] = { level=68, rank=7, next=57967 }, -- Instant Poison VII
[57964] = { level=73, rank=8, next=57965 }, -- Instant Poison VIII
[57967] = { level=73, rank=8, next=57968 }, -- Instant Poison VIII
[57965] = { level=79, rank=9 }, -- Instant Poison IX
[57968] = { level=79, rank=9 }, -- Instant Poison IX
[13218] = { level=32, rank=1, next=13222 }, -- Wound Poison
[13219] = { level=32, rank=1, next=13225 }, -- Wound Poison
[13222] = { level=40, rank=2, next=13223 }, -- Wound Poison II
[13225] = { level=40, rank=2, next=13226 }, -- Wound Poison II
[13223] = { level=48, rank=3, next=13224 }, -- Wound Poison III
[13226] = { level=48, rank=3, next=13227 }, -- Wound Poison III
[13224] = { level=56, rank=4, next=27188 }, -- Wound Poison IV
[13227] = { level=56, rank=4, next=27189 }, -- Wound Poison IV
[27188] = { level=64, rank=5, next=57974 }, -- Wound Poison V
[27189] = { level=64, rank=5, next=57977 }, -- Wound Poison V
[57974] = { level=72, rank=6, next=57975 }, -- Wound Poison VI
[57977] = { level=72, rank=6, next=57978 }, -- Wound Poison VI
[57975] = { level=78, rank=7 }, -- Wound Poison VII
[57978] = { level=78, rank=7 }, -- Wound Poison VII
}
