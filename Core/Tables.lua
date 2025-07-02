-- Tables.lua
-- Contains all tables used by different files and modules.
local _, ns = ...
local L = ns.Locale
local Private = ns.Private
local setmetatable = setmetatable

-------------------------------------------------------------------------------
-- ingored spells
-- a table of spells that are ignored per module.
-- entries should be like so: [spellid] = true

local ignored_spells = {
	-- [[ absorbs modules ]] --
	-- absorb = {},

	-- [[ buffs module ]] --
	buff = {
		[57819] = true, -- Tabard of the Argent Crusade
		[57820] = true, -- Tabard of the Ebon Blade
		[57821] = true, -- Tabard of the Kirin Tor
		[57822] = true, -- Tabard of the Wyrmrest Accord
		[57940] = true, -- Essence of Wintergrasp
		[72968] = true, -- Precious's Ribbon

		-- uncertain about the follwing spells:
		-- [73816] = true, -- Hellscream's Warsong (ICC-Horde 5%)
		-- [73818] = true, -- Hellscream's Warsong (ICC-Horde 10%)
		-- [73819] = true, -- Hellscream's Warsong (ICC-Horde 15%)
		-- [73820] = true, -- Hellscream's Warsong (ICC-Horde 20%)
		-- [73821] = true, -- Hellscream's Warsong (ICC-Horde 25%)
		-- [73822] = true, -- Hellscream's Warsong (ICC-Horde 30%)
		-- [73762] = true, -- Hellscream's Warsong (ICC-Alliance 5%)
		-- [73824] = true, -- Hellscream's Warsong (ICC-Alliance 10%)
		-- [73825] = true, -- Hellscream's Warsong (ICC-Alliance 15%)
		-- [73826] = true, -- Hellscream's Warsong (ICC-Alliance 20%)
		-- [73827] = true, -- Hellscream's Warsong (ICC-Alliance 25%)
		-- [73828] = true, -- Hellscream's Warsong (ICC-Alliance 30%)
	},

	-- [[ debuffs module ]] --
	debuff = {
		[57723] = true, -- Exhaustion (Heroism)
		[57724] = true, -- Sated (Bloodlust)
	},

	-- [[ damage / enemy damage taken modules ]] --
	-- damage = {},

	-- [[ damage taken / enemy damage done modules ]] --
	-- damagetaken = {},

	-- [[ dispels module ]] --
	-- dispel = {},

	-- [[ fails module ]] --
	-- fail = {},

	-- [[ friendly fire module ]] --
	-- friendfire = {},

	-- [[ healing / enemy healing done modules ]] --
	-- heal = {},

	-- [[ interrupts module ]] --
	-- interrupt = {},

	-- [[ resources module ]] --
	-- power = {},

	-- [[ first hit ignored spells ]] --
	firsthit = {
		[1130] = true, -- Hunter's Mark
		[56190] = true, -- Shadow Jade Focusing Lens
		[56191] = true, -- Shadow Jade Focusing Lens
		[60122] = true, -- Baby Spice
	},

	-- [[ no active time spells ]] --
	time = {
		[13008] = true, -- Retribution Aura
		[26364] = true, -- Lightning Shield
		[35916] = true, -- Molten Armor
	}
}

-------------------------------------------------------------------------------
-- ignored creautre ids (use creature ID: [cretureID] = true)
-- a list of creature IDs of which CLEU <<DAMAGE>> events are ignored.

local ignored_creatures = {
	-- Vault of the Incarnates: Volatile Spark (10.0.0.46313)
	[194999] = true,

	-- Demon Hunter: Havoc Talent - Fodder of the Flame (10.0.0.46247)
	[168932] = true, -- Doomguard <Condemned Demon>
	[169421] = true, -- Felguard <Condemned Demon>
	[169425] = true, -- Felhound <Condemned Demon>
	[169426] = true, -- Infernal <Condemned Demon>
	[169428] = true, -- Wrathguard <Condemned Demon>
	[169429] = true, -- Shivarra <Condemned Demon>
	[169430] = true, -- Ur'zul <Condemned Demon>
}

-------------------------------------------------------------------------------
-- misc tables

-- resurrect spells
local ress_spells = {
	[3026] = 0x01, -- Use Soulstone
	[20484] = 0x08, -- Rebirth
	[20608] = 0x08, -- Reincarnation
}

-- list of crowd control spells
local cc_spells = {
	[118] = 0x40, -- Polymorph
	[339] = 0x08, -- Entangling Roots
	[676] = 0x01, -- Disarm
	[710] = 0x20, -- Banish
	[2637] = 0x08, -- Hibernate
	[3355] = 0x10, -- Freezing Trap Effect
	[6358] = 0x20, -- Seduction (Succubus)
	[6770] = 0x01, -- Sap
	[9484] = 0x02, -- Shackle Undead
	[20066] = 0x02, -- Repentance
	[28271] = 0x40, -- Polymorph: Turtle
	[28272] = 0x40, -- Polymorph: Pig
	[33786] = 0x08, -- Cyclone
	[45524] = 0x10, -- Chains of Ice
	[51514] = 0x08, -- Hex
	[51722] = 0x01, -- Dismantle
	[52719] = 0x01, -- Concussion Blow
	[96294] = 0x10, -- Chains of Ice
	[114404] = 0x10 -- Void Tendril's Grasp
}

-- extended list of crowd control spells
local extra_cc_spells = setmetatable({
	-- Warrior
	[5246] = 0x01, -- Initmidating Shout
	[6552] = 0x01, -- Pummel
	[7922] = 0x01, -- Charge
	[12323] = 0x01, -- Piercing Howl
	[46968] = 0x01, -- Shockwave
	[58357] = 0x01, -- Heroic Throw silence
	[107566] = 0x01, -- Staggering Shout
	[132168] = 0x01, -- Shockwave
	[132169] = 0x01, -- Storm Bolt
	-- Death Knight
	[47476] = 0x20, -- Strangulate
	[47481] = 0x01, -- Gnaw
	[47528] = 0x10, -- Mind Freeze
	[49560] = 0x01, -- Death Grip
	[79092] = 0x10, -- Hungering Cold
	[91807] = 0x01, -- Shambling Rush
	[108194] = 0x01, -- Asphyxiate
	[207167] = 0x10, -- Blinding Sleet
	[221562] = 0x01, -- Asphyxiate
	[334693] = 0x10, -- Absolute Zero
	-- Paladin
	[853] = 0x02, -- Hammer of Justice
	[2812] = 0x02, -- Holy Wrath
	[10326] = 0x02, -- Turn Evil
	[31935] = 0x02, -- Avengers Shield
	[96231] = 0x01, -- Rebuke
	[105421] = 0x02, -- Blinding Light
	[217824] = 0x02, -- Shield of Virtue
	-- Monk
	[107079] = 0x01, -- Quaking Palm
	[115078] = 0x01, -- Paralysis
	[116705] = 0x01, -- Spear Hand Strike
	[116706] = 0x01, -- Disable
	[119381] = 0x01, -- Leg Sweep
	[198909] = 0x08, -- Song of Chi-Ji
	-- Priest
	[605] = 0x20, -- Dominate Mind (Mind Control)
	[8122] = 0x20, -- Psychic Scream
	[15487] = 0x20, -- Silence
	[64044] = 0x20, -- Psychic Horror
	[200196] = 0x02, -- Holy Word: Chastise
	[200200] = 0x02, -- Holy Word: Chastise
	[205364] = 0x20, -- Dominate Mind
	[226943] = 0x20, -- Mind Bomb
	-- Shaman
	[3600] = 0x08, -- Earthbind (Earthbind Totem)
	[8034] = 0x10, -- Frostbrand Weapon
	[8056] = 0x10, -- Frost Shock
	[57994] = 0x08,  -- Wind Shear
	[64695] = 0x08, -- Earthgrab
	[118905] = 0x08, -- Static Charge
	[197214] = 0x05, -- Sundering
	[210873] = 0x08, -- Hex (Compy)
	[211004] = 0x08, -- Hex (Spider)
	[211010] = 0x08, -- Hex (Snake)
	[211015] = 0x08, -- Hex (Cockroach)
	[269352] = 0x08, -- Hex (Skeletal Hatchling)
	[277778] = 0x08, -- Hex (Zandalari Tendonripper)
	[277784] = 0x08, -- Hex (Wicker Mongrel)
	[309328] = 0x08, -- Hex (Living Honey)
	-- Druid
	[99] = 0x01, -- Incapacitating Roar
	[5211] = 0x01, -- Mighty Bash
	[16979] = 0x01, -- Feral Charge - Bear
	[19975] = 0x08, -- Entangling Roots (Nature's Grasp)
	[22570] = 0x01, -- Maim
	[45334] = 0x01, -- Feral Charge Effect
	[50259] = 0x01, -- Dazed
	[61391] = 0x08, -- Typhoon
	[66070] = 0x08, -- Entangling Roots (Force of Nature)
	[93985] = 0x01, -- Skull Bash
	[102359] = 0x08, -- Mass Entanglement
	[127797] = 0x08, -- Ursol's Vortex
	[163505] = 0x01, -- Rake
	[203123] = 0x01, -- Maim
	[209753] = 0x08, -- Cyclone
	[236748] = 0x01, -- Intimidating Roar
	-- Rogue
	[408] = 0x01, -- Kidney Shot
	[1330] = 0x01, -- Garrote - Silence
	[1766] = 0x01, -- Kick
	[1776] = 0x01, -- Gouge
	[1833] = 0x01, -- Cheap Shot
	[2094] = 0x01, -- Blind
	[427773] = 0x01, -- Blind
	-- Mage
	[122] = 0x10, -- Frost Nova
	[31661] = 0x04, -- Dragon's Breath
	[33395] = 0x10, -- Freeze (Frost Water Elemental)
	[44572] = 0x10, -- Deep Freeze
	[55021] = 0x40, -- Silenced - Improved Counterspell
	[61305] = 0x40, -- Polymorph Cat
	[61721] = 0x40, -- Polymorph Rabbit
	[61780] = 0x40, -- Polymorph Turkey
	[82691] = 0x10, -- Ring of Frost
	[82691] = 0x10, -- Ring of Frost
	[111340] = 0x10, -- Ice Ward
	[157981] = 0x04, -- Blast Wave
	[157997] = 0x10, -- Ice Nova
	-- Warlock
	[5484] = 0x20, -- Howl of Terror
	[6789] = 0x20, -- Death Coil
	[19647] = 0x20, -- Spell Lock
	[22703] = 0x04, -- Infernal Awakening
	[24259] = 0x20, -- Spell Lock
	[30283] = 0x20, -- Shadowfury
	[115268] = 0x20, -- Mesmerize
	[118699] = 0x20, -- Fear
	[212619] = 0x20, -- Call Felhunter
	-- Hunter
	[1513] = 0x08, -- Scare Beast
	[4167] = 0x01, -- Web (Spider)
	[5116] = 0x01, -- Concussive Shot
	[19386] = 0x08, -- Wyvern Sting
	[19503] = 0x01, -- Scatter Shot
	[19577] = 0x08, -- Intimidation (stun)
	[24394] = 0x01, -- Intimidation
	[26090] = 0x08, -- Pummel (Gorilla)
	[50541] = 0x01, -- Clench (Scorpid)
	[64803] = 0x01, -- Entrapment
	[117405] = 0x01, -- Binding Shot
	[117526] = 0x40, -- Binding Shot
	[136634] = 0x08, -- Narrow Escape
	[147362] = 0x01, -- Counter Shot
	[162480] = 0x01, -- Steel Trap
	[187707] = 0x01, -- Muzzle
	[190927] = 0x01, -- Harpoon
	-- Demon Hunter
	[179057] = 0x7c, -- Chaos Nova
	[183752] = 0x7c, -- Disrupt
	[200166] = 0x7c, -- Metamorphosis
	[207685] = 0x01, -- Sigil of Misery
	[211881] = 0x7c, -- Fel Eruption
	[217832] = 0x20, -- Imprison
	-- Evoker
	[360806] = 0x08, -- Sleep Walk
	[372245] = 0x04, -- Terror of the Skies
	-- Covenant / Venthyr
	[331866] = 0x20, -- Agent of Chaos
	-- Racials
	[20549] = 0x01, -- War Stomp (Tauren)
	[28730] = 0x40, -- Arcane Torrent (Bloodelf)
	[47779] = 0x40, -- Arcane Torrent (Bloodelf)
	[50613] = 0x40, -- Arcane Torrent (Bloodelf)
	-- Engineering
	[67890] = 0x04 -- Cobalt Frag Bomb
}, {__index = cc_spells})

-- deathlog tracked buffs.
local spellnames = ns.spellnames
local spell_to_spec = {}
local deathlog_tracked_buff = {
	-- Warrior
	[spellnames[871]] = true, -- Shield Wall
	[spellnames[2565]] = true, -- Shield Block
	[spellnames[12975]] = true, -- Last Stand
	[spellnames[23920]] = true, -- Spell Reflection
	-- Death Knight
	[spellnames[42650]] = true, -- Army of the Dead
	[spellnames[48707]] = true, -- Anti-Magic Shell
	[spellnames[48792]] = true, -- Icebound Fortitude
	[spellnames[49039]] = true, -- Lichborne
	[spellnames[51052]] = true, -- Anti-Magic Zone
	[spellnames[51271]] = true, -- Pillar of Frost
	[spellnames[55233]] = true, -- Vampiric Blood
	-- Paladin
	[spellnames[498]] = true, -- Divine Protection
	[spellnames[633]] = true, -- Lay on Hands
	[spellnames[642]] = true, -- Divine Shield
	[spellnames[1022]] = true, -- Hand of Protection
	[spellnames[1044]] = true, -- Hand of Freedom
	[spellnames[6940]] = true, -- Hand of Sacrifice
	[spellnames[20925]] = true, -- Sacred Shield
	[spellnames[31821]] = true, -- Devotion Aura
	[spellnames[31850]] = true, -- Ardent Defender
	[spellnames[31884]] = true, -- Avenging Wrath
	-- Priest
	[spellnames[17]] = true, -- Power Word: Shield
	[spellnames[586]] = true, -- Fade
	[spellnames[27827]] = true, -- Spirit of Redemption
	[spellnames[33206]] = true, -- Pain Suppression
	[spellnames[47585]] = true, -- Dispersion
	[spellnames[47788]] = true, -- Guardian Spirit
	-- Druid
	[spellnames[5487]] = true, -- Bear Form
	[spellnames[22812]] = true, -- Barkskin
	[spellnames[22842]] = true, -- Frenzied Regeneration
	[spellnames[61336]] = true, -- Survival Instincts
	-- Rogue
	[spellnames[1856]] = true, -- Vanish
	[spellnames[1966]] = true, -- Feint
	[spellnames[5277]] = true, -- Evasion
	[spellnames[31224]] = true, -- Cloak of Shadows
	-- Mage
	[spellnames[66]] = true, -- Invisibility
	[spellnames[1463]] = true, -- Incanter's Ward
	[spellnames[1953]] = true, -- Blink
	[spellnames[11426]] = true, -- Ice Barrier
	[spellnames[45438]] = true, -- Ice Block
	[spellnames[55342]] = true, -- Mirror Image
	-- Hunter
	[spellnames[781]] = true, -- Disengage
	[spellnames[5384]] = true, -- Feign Death
	[spellnames[19263]] = true, -- Deterrence
	-- Items
	[spellnames[54861]] = true, -- Nitro Boosts
	[spellnames[60180]] = true, -- Repelling Charge (Resolute)
	[spellnames[60286]] = true, -- Defender's Code
	[spellnames[64763]] = true, -- Heart of Iron
	[spellnames[65011]] = true, -- Furnace Stone
	[spellnames[65012]] = true, -- Royal Seal of King Llane
	[spellnames[67596]] = true, -- Battlemaster's PvP (Tremendous Fortitude)
	[spellnames[67631]] = true, -- The Black Heart (Aegis)
	[spellnames[67694]] = true, -- Glyph of Indomitability (Defensive Tactics)
	[spellnames[67753]] = true, -- Juggernaut's Vitality/Satrina's Impeding Scarab (Fortitude)
	[spellnames[68443]] = true, -- Brawler's Souvenir (Drunken Evasiveness)
	[spellnames[71569]] = true, -- Ick's Rotting Thumb (Increased Fortitude)
	[spellnames[71586]] = true, -- Corroded Skeleton Key (Hardened Skin)
	[spellnames[71638]] = true, -- Sindragosa's Flawless Fang (Aegis of Dalaran)
	[spellnames[71639]] = true, -- Corpse Tongue Coin (Thick Skin)
	[spellnames[75480]] = true, -- Petrified Twilight Scale (Scaly Nimbleness)
}

-------------------
-- classic wrath --
-------------------

if Private.IsWotLK() then -- classic wrath
	-- [[ first hit ignored spells ]] --

	ignored_spells.firsthit[14323] = true -- Hunter's Mark (rank 2)
	ignored_spells.firsthit[14324] = true -- Hunter's Mark (rank 3)
	ignored_spells.firsthit[14325] = true -- Hunter's Mark (rank 4)
	ignored_spells.firsthit[53338] = true -- Hunter's Mark (rank 5)

	-- [[ no active time spells ]] --

	-- Retribution Aura
	ignored_spells.time[7294] = true -- Rank 1
	ignored_spells.time[10298] = true -- Rank 2
	ignored_spells.time[10299] = true -- Rank 3
	ignored_spells.time[10300] = true -- Rank 4
	ignored_spells.time[10301] = true -- Rank 5
	ignored_spells.time[27150] = true -- Rank 6
	ignored_spells.time[54043] = true -- Rank 7
	-- Molten Armor
	ignored_spells.time[34913] = true -- Rank 1
	ignored_spells.time[43043] = true -- Rank 2
	ignored_spells.time[43044] = true -- Rank 3
	-- Lightning Shield
	ignored_spells.time[26365] = true -- Rank 2
	ignored_spells.time[26366] = true -- Rank 3
	ignored_spells.time[26367] = true -- Rank 5
	ignored_spells.time[26370] = true -- Rank 6
	ignored_spells.time[26363] = true -- Rank 7
	ignored_spells.time[26371] = true -- Rank 8
	ignored_spells.time[26372] = true -- Rank 9
	ignored_spells.time[49278] = true -- Rank 10
	ignored_spells.time[49279] = true -- Rank 11
	-- Fire Shield
	ignored_spells.time[2947] = true -- Rank 1
	ignored_spells.time[8316] = true -- Rank 2
	ignored_spells.time[8317] = true -- Rank 3
	ignored_spells.time[11770] = true -- Rank 4
	ignored_spells.time[11771] = true -- Rank 5
	ignored_spells.time[27269] = true -- Rank 6
	ignored_spells.time[47983] = true -- Rank 7

	-- [[ resurrect spells ]] --

	-- Rebirth
	ress_spells[20739] = 0x08
	ress_spells[20742] = 0x08
	ress_spells[20747] = 0x08
	ress_spells[20748] = 0x08
	ress_spells[26994] = 0x08
	ress_spells[48477] = 0x08
	-- Reincarnation
	ress_spells[16184] = 0x08
	ress_spells[16209] = 0x08
	ress_spells[21169] = 0x08
	-- Use Soulstone
	ress_spells[20758] = 0x01
	ress_spells[20759] = 0x01
	ress_spells[20760] = 0x01
	ress_spells[20761] = 0x01
	ress_spells[27240] = 0x01
	ress_spells[47882] = 0x01

	-- [[ list of crowd control spells ]] --

	cc_spells[9485] = 0x02 -- Shackle Undead (rank 2)
	cc_spells[2070] = 0x01 -- Sap (rank 2)
	cc_spells[10955] = 0x02 -- Shackle Undead (rank 3)
	cc_spells[11297] = 0x01 -- Sap (rank 3)
	cc_spells[12809] = 0x01 -- Concussion Blow
	cc_spells[12824] = 0x40 -- Polymorph (rank 2)
	cc_spells[12825] = 0x40 -- Polymorph (rank 3)
	cc_spells[12826] = 0x40 -- Polymorph (rank 4)
	cc_spells[14308] = 0x10 -- Freezing Trap Effect (rank 2)
	cc_spells[14309] = 0x10 -- Freezing Trap Effect (rank 3)
	cc_spells[18647] = 0x20 -- Banish (rank 2)
	cc_spells[18657] = 0x08 -- Hibernate (rank 2)
	cc_spells[18658] = 0x08 -- Hibernate (rank 3)
	cc_spells[53308] = 0x08 -- Entangling Roots
	cc_spells[60210] = 0x10 -- Freezing Arrow (rank 1)

	-- [[ extended list of crowd control spells ]] --

	-- Warrior
	extra_cc_spells[47995] = 0x01 -- Intercept (Stun)--needs review
	-- Death Knight
	extra_cc_spells[49203] = 0x10 -- Hungering Cold
	-- Paladin
	extra_cc_spells[5588] = 0x02 -- Hammer of Justice (rank 2)
	extra_cc_spells[5589] = 0x02 -- Hammer of Justice (rank 3)
	extra_cc_spells[10308] = 0x02 -- Hammer of Justice (rank 4)
	extra_cc_spells[10318] = 0x02 -- Holy Wrath (rank 2)
	extra_cc_spells[27319] = 0x02 -- Holy Wrath (rank 3)
	extra_cc_spells[48816] = 0x02 -- Holy Wrath (rank 4)
	extra_cc_spells[48817] = 0x02 -- Holy Wrath (rank 5)
	-- Priest
	extra_cc_spells[8124] = 0x20 -- Psychic Scream (rank 2)
	extra_cc_spells[10888] = 0x20 -- Psychic Scream (rank 3)
	extra_cc_spells[10890] = 0x20 -- Psychic Scream (rank 4)
	-- Shaman
	extra_cc_spells[8037] = 0x10 -- Frostbrand Weapon (rank 2)
	extra_cc_spells[8058] = 0x10 -- Frost Shock (rank 2)
	extra_cc_spells[10458] = 0x10 -- Frostbrand Weapon (rank 3)
	extra_cc_spells[10472] = 0x10 -- Frost Shock (rank 3)
	extra_cc_spells[10473] = 0x10 -- Frost Shock (rank 4)
	extra_cc_spells[16352] = 0x10 -- Frostbrand Weapon (rank 4)
	extra_cc_spells[16353] = 0x10 -- Frostbrand Weapon (rank 5)
	extra_cc_spells[25464] = 0x10 -- Frost Shock (rank 5)
	extra_cc_spells[25501] = 0x10 -- Frostbrand Weapon (rank 6)
	extra_cc_spells[39796] = 0x01 -- Stoneclaw Stun (Stoneclaw Totem)
	extra_cc_spells[49235] = 0x10 -- Frost Shock (rank 6)
	extra_cc_spells[49236] = 0x10 -- Frost Shock (rank 7)
	extra_cc_spells[58797] = 0x10 -- Frostbrand Weapon (rank 7)
	extra_cc_spells[58798] = 0x10 -- Frostbrand Weapon (rank 8)
	extra_cc_spells[58799] = 0x10 -- Frostbrand Weapon (rank 9)
	-- Druid
	extra_cc_spells[1062] = 0x08 -- Entangling Roots (rank 2)
	extra_cc_spells[5195] = 0x08 -- Entangling Roots (rank 3)
	extra_cc_spells[5196] = 0x08 -- Entangling Roots (rank 4)
	extra_cc_spells[8983] = 0x01 -- Bash
	extra_cc_spells[9852] = 0x08 -- Entangling Roots (rank 5)
	extra_cc_spells[9853] = 0x08 -- Entangling Roots (rank 6)
	extra_cc_spells[19970] = 0x08 -- Entangling Roots (Nature's Grasp rank 6)
	extra_cc_spells[19971] = 0x08 -- Entangling Roots (Nature's Grasp rank 5)
	extra_cc_spells[19972] = 0x08 -- Entangling Roots (Nature's Grasp rank 4)
	extra_cc_spells[19973] = 0x08 -- Entangling Roots (Nature's Grasp rank 3)
	extra_cc_spells[19974] = 0x08 -- Entangling Roots (Nature's Grasp rank 2)
	extra_cc_spells[26989] = 0x08 -- Entangling Roots (rank 7)
	extra_cc_spells[27010] = 0x08 -- Entangling Roots (Nature's Grasp rank 7)
	extra_cc_spells[49802] = 0x01 -- Maim (rank 2)
	extra_cc_spells[49803] = 0x01 -- Pounce
	extra_cc_spells[53313] = 0x08 -- Entangling Roots (Nature's Grasp)
	-- Rogue
	extra_cc_spells[8643] = 0x01 -- Kidney Shot (rank 2)
	extra_cc_spells[51724] = 0x01 -- Sap
	-- Mage
	extra_cc_spells[865] = 0x10 -- Frost Nova (rank 2)
	extra_cc_spells[6131] = 0x10 -- Frost Nova (rank 3)
	extra_cc_spells[10230] = 0x10 -- Frost Nova (rank 4)
	extra_cc_spells[27088] = 0x10 -- Frost Nova (rank 5)
	extra_cc_spells[42917] = 0x10 -- Frost Nova (rank 6)
	-- Warlock
	extra_cc_spells[6215] = 0x20 -- Fear
	extra_cc_spells[17925] = 0x20 -- Death Coil (rank 2)
	extra_cc_spells[17926] = 0x20 -- Death Coil (rank 3)
	extra_cc_spells[27223] = 0x20 -- Death Coil (rank 4)
	extra_cc_spells[47859] = 0x20 -- Death Coil (rank 5)
	extra_cc_spells[47860] = 0x20 -- Death Coil (rank 6)
	-- Hunter
	extra_cc_spells[24132] = 0x08 -- Wyvern Sting (rank 2)
	extra_cc_spells[24133] = 0x08 -- Wyvern Sting (rank 3)
	extra_cc_spells[27068] = 0x08 -- Wyvern Sting (rank 4)
	extra_cc_spells[49011] = 0x08 -- Wyvern Sting (rank 5)
	extra_cc_spells[49012] = 0x08 -- Wyvern Sting (rank 6)
	extra_cc_spells[53543] = 0x01 -- Snatch (Bird of Prey)
	extra_cc_spells[53548] = 0x01 -- Pin (Crab)
	extra_cc_spells[53562] = 0x01 -- Ravage (Ravager)
	extra_cc_spells[53568] = 0x08 -- Sonic Blast (Bat)
	extra_cc_spells[53575] = 0x01 -- Tendon Rip (Hyena)
	extra_cc_spells[53589] = 0x20 -- Nether Shock (Nether Ray)
	extra_cc_spells[55492] = 0x10 -- Froststorm Breath (Chimaera)
	extra_cc_spells[55509] = 0x08 -- Venom Web Spray (Silithid)

	-- [[ spells to spec table ]] --

	-- Mage (Arcane)
	spell_to_spec[12042] = 62 -- Arcane Power
	spell_to_spec[12043] = 62 -- Presence of Mind
	spell_to_spec[31579] = 62 -- Arcane Empowerment (rank 1)
	spell_to_spec[31582] = 62 -- Arcane Empowerment (rank 2)
	spell_to_spec[31583] = 62 -- Arcane Empowerment (rank 3)
	spell_to_spec[31589] = 62 -- Slow
	spell_to_spec[44425] = 62 -- Arcane Barrage (rank 1)
	spell_to_spec[44780] = 62 -- Arcane Barrage (rank 2)
	spell_to_spec[44781] = 62 -- Arcane Barrage (rank 3)
	-- Mage (Fire)
	spell_to_spec[2948] = 63 -- Scorch (rank 1)
	spell_to_spec[8444] = 63 -- Scorch (rank 2)
	spell_to_spec[8445] = 63 -- Scorch (rank 3)
	spell_to_spec[8446] = 63 -- Scorch (rank 4)
	spell_to_spec[10205] = 63 -- Scorch (rank 5)
	spell_to_spec[10206] = 63 -- Scorch (rank 6)
	spell_to_spec[10207] = 63 -- Scorch (rank 7)
	spell_to_spec[11113] = 63 -- Blast Wave (rank 1)
	spell_to_spec[13018] = 63 -- Blast Wave (rank 2)
	spell_to_spec[13019] = 63 -- Blast Wave (rank 3)
	spell_to_spec[13020] = 63 -- Blast Wave (rank 4)
	spell_to_spec[13021] = 63 -- Blast Wave (rank 5)
	spell_to_spec[27073] = 63 -- Scorch (rank 8)
	spell_to_spec[27074] = 63 -- Scorch (rank 9)
	spell_to_spec[27133] = 63 -- Blast Wave (rank 6)
	spell_to_spec[28682] = 63 -- Combustion
	spell_to_spec[31661] = 63 -- Dragon's Breath (rank 1)
	spell_to_spec[33041] = 63 -- Dragon's Breath (rank 2)
	spell_to_spec[33042] = 63 -- Dragon's Breath (rank 3)
	spell_to_spec[33043] = 63 -- Dragon's Breath (rank 4)
	spell_to_spec[33933] = 63 -- Blast Wave (rank 7)
	spell_to_spec[42858] = 63 -- Scorch (rank 10)
	spell_to_spec[42859] = 63 -- Scorch (rank 11)
	spell_to_spec[42944] = 63 -- Blast Wave (rank 8)
	spell_to_spec[42945] = 63 -- Blast Wave (rank 9)
	spell_to_spec[42949] = 63 -- Dragon's Breath (rank 5)
	spell_to_spec[42950] = 63 -- Dragon's Breath (rank 6)
	spell_to_spec[44457] = 63 -- Living Bomb (rank 1)
	spell_to_spec[48108] = 63 -- Hot Streak
	spell_to_spec[55359] = 63 -- Living Bomb (rank 2)
	spell_to_spec[55360] = 63 -- Living Bomb (rank 3)
	-- Mage (Frost)
	spell_to_spec[11426] = 64 -- Ice Barrier (rank 1)
	spell_to_spec[13031] = 64 -- Ice Barrier (rank 2)
	spell_to_spec[13032] = 64 -- Ice Barrier (rank 3)
	spell_to_spec[13033] = 64 -- Ice Barrier (rank 4)
	spell_to_spec[27134] = 64 -- Ice Barrier (rank 5)
	spell_to_spec[31687] = 64 -- Summon Water Elemental
	spell_to_spec[33405] = 64 -- Ice Barrier (rank 6)
	spell_to_spec[43038] = 64 -- Ice Barrier (rank 7)
	spell_to_spec[43039] = 64 -- Ice Barrier (rank 8)
	spell_to_spec[44544] = 64 -- Fingers of Frost
	spell_to_spec[44572] = 64 -- Deep Freeze
	spell_to_spec[57761] = 64 -- Fireball! (Trigger: Brain Freeze)

	-- Paladin (Holy)
	spell_to_spec[20473] = 65 -- Holy Shock (rank 1)
	spell_to_spec[20929] = 65 -- Holy Shock (rank 2)
	spell_to_spec[20930] = 65 -- Holy Shock (rank 3)
	spell_to_spec[27174] = 65 -- Holy Shock (rank 4)
	spell_to_spec[31842] = 65 -- Divine Illumination
	spell_to_spec[33072] = 65 -- Holy Shock (rank 5)
	spell_to_spec[48824] = 65 -- Holy Shock (rank 6)
	spell_to_spec[48825] = 65 -- Holy Shock (rank 7)
	spell_to_spec[53563] = 65 -- Beacon of Light
	-- Paladin (Protection)
	spell_to_spec[20925] = 66 -- Holy Shield (rank 1)
	spell_to_spec[20927] = 66 -- Holy Shield (rank 2)
	spell_to_spec[20928] = 66 -- Holy Shield (rank 3)
	spell_to_spec[27179] = 66 -- Holy Shield (rank 4)
	spell_to_spec[31935] = 66 -- Avenger's Shield (rank 1)
	spell_to_spec[32699] = 66 -- Avenger's Shield (rank 2)
	spell_to_spec[32700] = 66 -- Avenger's Shield (rank 3)
	spell_to_spec[48826] = 66 -- Avenger's Shield (rank 4)
	spell_to_spec[48827] = 66 -- Avenger's Shield (rank 5)
	spell_to_spec[48951] = 66 -- Holy Shield (rank 5)
	spell_to_spec[48952] = 66 -- Holy Shield (rank 6)
	spell_to_spec[53595] = 66 -- Hammer of the Righteous
	-- Paladin (Retribution)
	spell_to_spec[20066] = 70 -- Repentance
	spell_to_spec[35395] = 70 -- Crusader Strike
	spell_to_spec[53385] = 70 -- Divine Storm
	spell_to_spec[53489] = 70 -- The Art of War (rank 1)
	spell_to_spec[59578] = 70 -- The Art of War (rank 2)
	spell_to_spec[68020] = 70 -- Seal of Command

	-- Warrior (Arms)
	spell_to_spec[12294] = 71 -- Mortal Strike (rank 1)
	spell_to_spec[21551] = 71 -- Mortal Strike (rank 2)
	spell_to_spec[21552] = 71 -- Mortal Strike (rank 3)
	spell_to_spec[21553] = 71 -- Mortal Strike (rank 4)
	spell_to_spec[25248] = 71 -- Mortal Strike (rank 5)
	spell_to_spec[29623] = 71 -- Endless Rage
	spell_to_spec[30330] = 71 -- Mortal Strike (rank 6)
	spell_to_spec[46856] = 71 -- Trauma (rank 1)
	spell_to_spec[46857] = 71 -- Trauma (rank 2)
	spell_to_spec[46924] = 71 -- Bladestorm
	spell_to_spec[47485] = 71 -- Mortal Strike (rank 7)
	spell_to_spec[47486] = 71 -- Mortal Strike (rank 8)
	spell_to_spec[56636] = 71 -- Taste for Blood (rank 1)
	spell_to_spec[56637] = 71 -- Taste for Blood (rank 2)
	spell_to_spec[56638] = 71 -- Taste for Blood (rank 3)
	spell_to_spec[64976] = 71 -- Juggernaut (rank 1)
	-- Warrior (Fury)
	spell_to_spec[1464] = 72 -- Slam (rank 1)
	spell_to_spec[8820] = 72 -- Slam (rank 2)
	spell_to_spec[11604] = 72 -- Slam (rank 3)
	spell_to_spec[11605] = 72 -- Slam (rank 4)
	spell_to_spec[23881] = 72 -- Bloodthirst
	spell_to_spec[25241] = 72 -- Slam (rank 5)
	spell_to_spec[25242] = 72 -- Slam (rank 6)
	spell_to_spec[47474] = 72 -- Slam (rank 7)
	spell_to_spec[47475] = 72 -- Slam (rank 8)
	-- Warrior (Protection)
	spell_to_spec[12809] = 73 -- Concussion Blow
	spell_to_spec[20243] = 73 -- Devastate (rank 1)
	spell_to_spec[30016] = 73 -- Devastate (rank 2)
	spell_to_spec[30022] = 73 -- Devastate (rank 3)
	spell_to_spec[46968] = 73 -- Shockwave
	spell_to_spec[47497] = 73 -- Devastate (rank 4)
	spell_to_spec[47498] = 73 -- Devastate (rank 5)
	spell_to_spec[50227] = 73 -- Sword and Board
	spell_to_spec[50720] = 73 -- Vigilance

	-- Druid (Balance)
	spell_to_spec[24858] = 102 -- Moonkin Form
	spell_to_spec[24907] = 102 -- Moonkin Aura
	spell_to_spec[33831] = 102 -- Force of Nature
	spell_to_spec[48505] = 102 -- Starfall (rank 1)
	spell_to_spec[50516] = 102 -- Typhoon (rank 1)
	spell_to_spec[53199] = 102 -- Starfall (rank 2)
	spell_to_spec[53200] = 102 -- Starfall (rank 3)
	spell_to_spec[53201] = 102 -- Starfall (rank 4)
	spell_to_spec[53223] = 102 -- Typhoon (rank 2)
	spell_to_spec[53225] = 102 -- Typhoon (rank 3)
	spell_to_spec[53226] = 102 -- Typhoon (rank 4)
	spell_to_spec[61384] = 102 -- Typhoon (rank 5)
	-- Druid (Feral DPS)
	spell_to_spec[33876] = 103 -- Mangle Cat (rank 1)
	spell_to_spec[33982] = 103 -- Mangle Cat (rank 2)
	spell_to_spec[33983] = 103 -- Mangle Cat (rank 3)
	spell_to_spec[48565] = 103 -- Mangle Cat (rank 4)
	spell_to_spec[48566] = 103 -- Mangle Cat (rank 5)
	-- Druid (Feral Tank)
	spell_to_spec[33878] = 104 -- Mangle Bear (rank 1)
	spell_to_spec[33986] = 104 -- Mangle Bear (rank 2)
	spell_to_spec[33987] = 104 -- Mangle Bear (rank 3)
	spell_to_spec[48563] = 104 -- Mangle Bear (rank 4)
	spell_to_spec[48564] = 104 -- Mangle Bear (rank 5)
	-- Druid (Restoration)
	spell_to_spec[18562] = 105 -- Swiftmend
	spell_to_spec[33891] = 105 -- Tree of Life
	spell_to_spec[48438] = 105 -- Wild Growth (rank 1)
	spell_to_spec[53248] = 105 -- Wild Growth (rank 2)
	spell_to_spec[53249] = 105 -- Wild Growth (rank 3)
	spell_to_spec[53251] = 105 -- Wild Growth (rank 4)

	-- Death Knight (Blood)
	spell_to_spec[45902] = 250 -- Blood Strike (rank 1)
	spell_to_spec[49016] = 250 -- Hysteria
	spell_to_spec[49028] = 250 -- Dancing Rune Weapon
	spell_to_spec[49926] = 250 -- Blood Strike (rank 2)
	spell_to_spec[49927] = 250 -- Blood Strike (rank 3)
	spell_to_spec[49928] = 250 -- Blood Strike (rank 4)
	spell_to_spec[49929] = 250 -- Blood Strike (rank 5)
	spell_to_spec[49930] = 250 -- Blood Strike (rank 6)
	spell_to_spec[50452] = 250 -- Bloodworms
	spell_to_spec[53137] = 250 -- Abomination's Might (rank 1)
	spell_to_spec[53138] = 250 -- Abomination's Might (rank 2)
	spell_to_spec[55050] = 250 -- Heart Strike (rank 1)
	spell_to_spec[55233] = 250 -- Vampiric Blood
	spell_to_spec[55258] = 250 -- Heart Strike (rank 2)
	spell_to_spec[55259] = 250 -- Heart Strike (rank 3)
	spell_to_spec[55260] = 250 -- Heart Strike (rank 4)
	spell_to_spec[55261] = 250 -- Heart Strike (rank 5)
	spell_to_spec[55262] = 250 -- Heart Strike (rank 6)
	-- Death Knight (Frost)
	spell_to_spec[49143] = 251 -- Frost Strike (rank 1)
	spell_to_spec[49184] = 251 -- Howling Blast (rank 1)
	spell_to_spec[49203] = 251 -- Hungering Cold
	spell_to_spec[51271] = 251 -- Unbreakable Armor
	spell_to_spec[51409] = 251 -- Howling Blast (rank 2)
	spell_to_spec[51410] = 251 -- Howling Blast (rank 3)
	spell_to_spec[51411] = 251 -- Howling Blast (rank 4)
	spell_to_spec[51416] = 251 -- Frost Strike (rank 2)
	spell_to_spec[51417] = 251 -- Frost Strike (rank 3)
	spell_to_spec[51418] = 251 -- Frost Strike (rank 4)
	spell_to_spec[51419] = 251 -- Frost Strike (rank 5)
	spell_to_spec[55268] = 251 -- Frost Strike (rank 6)
	spell_to_spec[55610] = 251 -- Improved Icy Talons
	-- Death Knight (Unholy)
	spell_to_spec[49206] = 252 -- Summon Gargoyle
	spell_to_spec[49222] = 252 -- Bone Shield
	spell_to_spec[51052] = 252 -- Anti-Magic Zone
	spell_to_spec[51726] = 252 -- Ebon Plague (rank 1)
	spell_to_spec[51734] = 252 -- Ebon Plague (rank 2)
	spell_to_spec[51735] = 252 -- Ebon Plague (rank 3)
	spell_to_spec[55090] = 252 -- Scourge Strike (rank 1)
	spell_to_spec[55265] = 252 -- Scourge Strike (rank 2)
	spell_to_spec[55270] = 252 -- Scourge Strike (rank 3)
	spell_to_spec[55271] = 252 -- Scourge Strike (rank 4)
	spell_to_spec[63583] = 252 -- Desolation (rank 1)
	spell_to_spec[66800] = 252 -- Desolation (rank 2)
	spell_to_spec[66801] = 252 -- Desolation (rank 3)
	spell_to_spec[66802] = 252 -- Desolation (rank 4)
	spell_to_spec[66803] = 252 -- Desolation (rank 5)

	-- Hunter (Beast Mastery)
	spell_to_spec[19574] = 253 -- Bestial Wrath
	spell_to_spec[19577] = 253 -- Intimidation
	spell_to_spec[19578] = 253 -- Spirit Bond (rank 1)
	spell_to_spec[20895] = 253 -- Spirit Bond (rank 2)
	spell_to_spec[53257] = 253 -- Cobra Strikes
	-- Hunter (Marksmanship)
	spell_to_spec[19506] = 254 -- Trueshot Aura
	spell_to_spec[34490] = 254 -- Silecing Shot
	spell_to_spec[53209] = 254 -- Chimera Shot
	-- Hunter (Survival)
	spell_to_spec[3674] = 255 -- Black Arrow (rank 1)
	spell_to_spec[19386] = 255 -- Wyvern Sting (rank 1)
	spell_to_spec[24132] = 255 -- Wyvern Sting (rank 2)
	spell_to_spec[24133] = 255 -- Wyvern Sting (rank 3)
	spell_to_spec[27068] = 255 -- Wyvern Sting (rank 4)
	spell_to_spec[49011] = 255 -- Wyvern Sting (rank 5)
	spell_to_spec[49012] = 255 -- Wyvern Sting (rank 6)
	spell_to_spec[53301] = 255 -- Explosive Shot (rank 1)
	spell_to_spec[60051] = 255 -- Explosive Shot (rank 2)
	spell_to_spec[60052] = 255 -- Explosive Shot (rank 3)
	spell_to_spec[60053] = 255 -- Explosive Shot (rank 4)
	spell_to_spec[63668] = 255 -- Black Arrow (rank 2)
	spell_to_spec[63669] = 255 -- Black Arrow (rank 3)
	spell_to_spec[63670] = 255 -- Black Arrow (rank 4)
	spell_to_spec[63671] = 255 -- Black Arrow (rank 5)
	spell_to_spec[63672] = 255 -- Black Arrow (rank 6)

	-- Priest (Discipline)
	spell_to_spec[10060] = 256 -- Power Infusion
	spell_to_spec[33206] = 256 -- Pain Suppression
	spell_to_spec[47540] = 256 -- Penance (rank 1)
	spell_to_spec[52795] = 256 -- Borrowed Time (rank 1)
	spell_to_spec[52797] = 256 -- Borrowed Time (rank 2)
	spell_to_spec[52798] = 256 -- Borrowed Time (rank 3)
	spell_to_spec[52799] = 256 -- Borrowed Time (rank 4)
	spell_to_spec[52800] = 256 -- Borrowed Time (rank 5)
	spell_to_spec[53005] = 256 -- Penance (rank 2)
	spell_to_spec[53006] = 256 -- Penance (rank 3)
	spell_to_spec[53007] = 256 -- Penance (rank 4)
	-- Priest (Holy)
	spell_to_spec[724]   = 257 -- Lightwell (rank 1)
	spell_to_spec[20711] = 257 -- Spirit of Redemption
	spell_to_spec[27870] = 257 -- Lightwell (rank 2)
	spell_to_spec[27871] = 257 -- Lightwell (rank 3)
	spell_to_spec[27875] = 257 -- Lightwell (rank 4)
	spell_to_spec[34861] = 257 -- Circle of Healing (rank 1)
	spell_to_spec[34863] = 257 -- Circle of Healing (rank 2)
	spell_to_spec[34864] = 257 -- Circle of Healing (rank 3)
	spell_to_spec[34865] = 257 -- Circle of Healing (rank 4)
	spell_to_spec[34866] = 257 -- Circle of Healing (rank 5)
	spell_to_spec[47788] = 257 -- Guardian Spirit
	spell_to_spec[48086] = 257 -- Lightwell (rank 5)
	spell_to_spec[48087] = 257 -- Lightwell (rank 6)
	spell_to_spec[48088] = 257 -- Circle of Healing (rank 6)
	spell_to_spec[48089] = 257 -- Circle of Healing (rank 7)
	-- Priest (Shadow)
	spell_to_spec[15286] = 258 -- Vampiric Embrace
	spell_to_spec[15473] = 258 -- Shadowform
	spell_to_spec[15487] = 258 -- Silence
	spell_to_spec[34914] = 258 -- Vampiric Touch (rank 1)
	spell_to_spec[34916] = 258 -- Vampiric Touch (rank 2)
	spell_to_spec[34917] = 258 -- Vampiric Touch (rank 3)
	spell_to_spec[47585] = 258 -- Dispersion
	spell_to_spec[48159] = 258 -- Vampiric Touch (rank 4)
	spell_to_spec[48160] = 258 -- Vampiric Touch (rank 5)

	-- Rogue (Assassination)
	spell_to_spec[1329]  = 259 -- Mutilate (rank 1)
	spell_to_spec[34411] = 259 -- Mutilate (rank 2)
	spell_to_spec[34412] = 259 -- Mutilate (rank 3)
	spell_to_spec[34413] = 259 -- Mutilate (rank 4)
	spell_to_spec[48663] = 259 -- Mutilate (rank 5)
	spell_to_spec[48666] = 259 -- Mutilate (rank 6)
	spell_to_spec[51662] = 259 -- Hunger For Blood
	spell_to_spec[52910] = 259 -- Turn the Tables (rank 3)
	spell_to_spec[52914] = 259 -- Turn the Tables (rank 1)
	spell_to_spec[52915] = 259 -- Turn the Tables (rank 2)
	spell_to_spec[58427] = 259 -- Overkill
	-- Rogue (Combat)
	spell_to_spec[13750] = 260 -- Adrenaline Rush
	spell_to_spec[13877] = 260 -- Blade Flurry
	spell_to_spec[51690] = 260 -- Killing Spree
	spell_to_spec[58683] = 260 -- Savage Combat (rank 2)
	spell_to_spec[58684] = 260 -- Savage Combat (rank 1)
	-- Rogue (Subtlety)
	spell_to_spec[14183] = 261 -- Premeditation
	spell_to_spec[16511] = 261 -- Hemorrhage
	spell_to_spec[31221] = 261 -- Master of Subtlety (rank 1)
	spell_to_spec[31222] = 261 -- Master of Subtlety (rank 2)
	spell_to_spec[31223] = 261 -- Master of Subtlety (rank 3)
	spell_to_spec[36554] = 261 -- Shadowstep
	spell_to_spec[51713] = 261 -- Shadow Dance

	-- Shaman (Elemental)
	spell_to_spec[16166] = 262 -- Elemental Mastery
	spell_to_spec[30706] = 262 -- Totem of Wrath (rank 1)
	spell_to_spec[51466] = 262 -- Elemental Oath (rank 1)
	spell_to_spec[51470] = 262 -- Elemental Oath (rank 2)
	spell_to_spec[51490] = 262 -- Thunderstorm (rank 1)
	spell_to_spec[57720] = 262 -- Totem of Wrath (rank 2)
	spell_to_spec[57721] = 262 -- Totem of Wrath (rank 3)
	spell_to_spec[57722] = 262 -- Totem of Wrath (rank 4)
	spell_to_spec[59156] = 262 -- Thunderstorm (rank 2)
	spell_to_spec[59158] = 262 -- Thunderstorm (rank 3)
	spell_to_spec[59159] = 262 -- Thunderstorm (rank 4)
	-- Shaman (Enhancement)
	spell_to_spec[17364] = 263 -- Stormstrike
	spell_to_spec[30802] = 263 -- Unleashed Rage (rank 1)
	spell_to_spec[30808] = 263 -- Unleashed Rage (rank 2)
	spell_to_spec[30809] = 263 -- Unleashed Rage (rank 3)
	spell_to_spec[30823] = 263 -- Shamanistic Rage
	spell_to_spec[51533] = 263 -- Feral Spirit
	spell_to_spec[53817] = 263 -- Maelstrom Weapon
	spell_to_spec[60103] = 263 -- Lava Lash
	-- Shaman (Restoration)
	spell_to_spec[974]   = 264 -- Earth Shield (rank 1)
	spell_to_spec[16190] = 264 -- Mana Tide Totem
	spell_to_spec[32593] = 264 -- Earth Shield (rank 2)
	spell_to_spec[32594] = 264 -- Earth Shield (rank 3)
	spell_to_spec[49283] = 264 -- Earth Shield (rank 4)
	spell_to_spec[49284] = 264 -- Earth Shield (rank 5)
	spell_to_spec[51886] = 264 -- Cleanse Spirit
	spell_to_spec[61295] = 264 -- Riptide (rank 1)
	spell_to_spec[61299] = 264 -- Riptide (rank 2)
	spell_to_spec[61300] = 264 -- Riptide (rank 3)
	spell_to_spec[61301] = 264 -- Riptide (rank 4)

	-- Warlock (Affliction)
	spell_to_spec[18220] = 265 -- Dark Pact (rank 1)
	spell_to_spec[18937] = 265 -- Dark Pact (rank 2)
	spell_to_spec[18938] = 265 -- Dark Pact (rank 3)
	spell_to_spec[27265] = 265 -- Dark Pact (rank 4)
	spell_to_spec[30108] = 265 -- Unstable Affliction (rank 1)
	spell_to_spec[30404] = 265 -- Unstable Affliction (rank 2)
	spell_to_spec[30405] = 265 -- Unstable Affliction (rank 3)
	spell_to_spec[47841] = 265 -- Unstable Affliction (rank 4)
	spell_to_spec[47843] = 265 -- Unstable Affliction (rank 5)
	spell_to_spec[48181] = 265 -- Haunt (rank 1)
	spell_to_spec[59092] = 265 -- Dark Pact (rank 5)
	spell_to_spec[59161] = 265 -- Haunt (rank 2)
	spell_to_spec[59163] = 265 -- Haunt (rank 3)
	spell_to_spec[59164] = 265 -- Haunt (rank 4)
	-- Warlock (Demonology)
	spell_to_spec[30146] = 266 -- Summon Felguard
	spell_to_spec[47241] = 266 -- Metamorphosis
	spell_to_spec[47383] = 266 -- Molten Core (rank 1)
	spell_to_spec[48090] = 266 -- Demonic Pact
	spell_to_spec[59672] = 266 -- Metamorphosis
	spell_to_spec[63165] = 266 -- Decimation (rank 1)
	spell_to_spec[63167] = 266 -- Decimation (rank 2)
	spell_to_spec[71162] = 266 -- Molten Core (rank 2)
	spell_to_spec[71165] = 266 -- Molten Core (rank 3)
	-- Warlock (Destruction)
	spell_to_spec[17962] = 267 -- Conflagrate
	spell_to_spec[30283] = 267 -- Shadowfury (rank 1)
	spell_to_spec[30299] = 267 -- Nether Protection (rank 1)
	spell_to_spec[30301] = 267 -- Nether Protection (rank 2)
	spell_to_spec[30302] = 267 -- Nether Protection (rank 3)
	spell_to_spec[30413] = 267 -- Shadowfury (rank 2)
	spell_to_spec[30414] = 267 -- Shadowfury (rank 3)
	spell_to_spec[47846] = 267 -- Shadowfury (rank 4)
	spell_to_spec[47847] = 267 -- Shadowfury (rank 5)
	spell_to_spec[50796] = 267 -- Chaos Bolt (rank 1)
	spell_to_spec[59170] = 267 -- Chaos Bolt (rank 2)
	spell_to_spec[59171] = 267 -- Chaos Bolt (rank 3)
	spell_to_spec[59172] = 267 -- Chaos Bolt (rank 4)

	-- [[ deathlog tracked buffs ]] --

	-- Warrior
	deathlog_tracked_buff[spellnames[58374]] = true -- Glyph of Blocking
	-- Death Knight
	deathlog_tracked_buff[spellnames[45529]] = true -- Blood Tap
	deathlog_tracked_buff[spellnames[48982]] = true -- Rune Tap
	deathlog_tracked_buff[spellnames[49182]] = true -- Blade Barrier
	deathlog_tracked_buff[spellnames[49222]] = true -- Bone Shield
	deathlog_tracked_buff[spellnames[54223]] = true -- Shadow of Death
	deathlog_tracked_buff[spellnames[70654]] = true -- Blood Armor
	-- Paladin
	deathlog_tracked_buff[spellnames[1038]] = true -- Hand of Salvation
	deathlog_tracked_buff[spellnames[19752]] = true -- Divine Intervention
	deathlog_tracked_buff[spellnames[64205]] = true -- Divine Sacrifice
	deathlog_tracked_buff[spellnames[70940]] = true -- Divine Guardian
	-- Priest
	deathlog_tracked_buff[spellnames[14893]] = true -- Inspiration
	-- Shaman
	deathlog_tracked_buff[spellnames[16177]] = true -- Ancestral Fortitude
	deathlog_tracked_buff[spellnames[30823]] = true -- Shamanistic Rage
	-- Druid
	deathlog_tracked_buff[spellnames[8998]] = true -- Cower
	deathlog_tracked_buff[spellnames[9634]] = true  -- Dire Bear Form
	deathlog_tracked_buff[spellnames[62606]] = true -- Savage Defense
	deathlog_tracked_buff[spellnames[70725]] = true -- Enraged Defense
	-- Mage
	deathlog_tracked_buff[spellnames[543]] = true -- Fire Ward
	deathlog_tracked_buff[spellnames[6143]] = true -- Frost Ward
	-- Warlock
	deathlog_tracked_buff[spellnames[6229]] = true -- Twilight Ward
elseif Private.IsCata() then
	-- [[ first hit ignored spells ]] --

	ignored_spells.firsthit[1130] = true -- Hunter's Mark
	ignored_spells.firsthit[56190] = true -- Shadow Jade Focusing Lens
	ignored_spells.firsthit[56191] = true -- Shadow Jade Focusing Lens
	ignored_spells.firsthit[60122] = true -- Baby Spice

	-- [[ no active time spells ]] --

	ignored_spells.time[2947] = true -- Fire Shield
	ignored_spells.time[7294] = true -- Retribution Aura
	ignored_spells.time[26364] = true -- Lightning Shield
	ignored_spells.time[34913] = true -- Molten Armor

	-- [[ resurrect spells ]] --

	ress_spells[3026] = 0x01 -- Use Soulstone
	ress_spells[20484] = 0x08 -- Rebirth
	ress_spells[20608] = 0x08 -- Reincarnation

	-- [[ list of crowd control spells ]] --

	cc_spells[118] = 0x40 -- Polymorph
	cc_spells[339] = 0x08 -- Entangling Roots
	cc_spells[676] = 0x01 -- Disarm
	cc_spells[710] = 0x20 -- Banish
	cc_spells[2637] = 0x08 -- Hibernate
	cc_spells[3355] = 0x10 -- Freezing Trap Effect
	cc_spells[6358] = 0x20 -- Seduction (Succubus)
	cc_spells[6770] = 0x01 -- Sap
	cc_spells[9484] = 0x02 -- Shackle Undead
	cc_spells[12809] = 0x01 -- Concussion Blow
	cc_spells[20066] = 0x02 -- Repentance
	cc_spells[28271] = 0x40 -- Polymorph: Turtle
	cc_spells[28272] = 0x40 -- Polymorph: Pig
	cc_spells[33786] = 0x08 -- Cyclone
	cc_spells[45524] = 0x10 -- Chains of Ice
	cc_spells[51514] = 0x08 -- Hex
	cc_spells[51722] = 0x01 -- Dismantle
	cc_spells[52719] = 0x01 -- Concussion Blow
	cc_spells[96294] = 0x10 -- Chains of Ice

	-- [[ extended list of crowd control spells ]] --

	-- Warrior
	extra_cc_spells[5246] = 0x01 -- Initmidating Shout
	extra_cc_spells[6552] = 0x01 -- Pummel
	extra_cc_spells[7922] = 0x01 -- Charge
	extra_cc_spells[12323] = 0x01 -- Piercing Howl
	extra_cc_spells[46968] = 0x01 -- Shockwave
	extra_cc_spells[58357] = 0x01 -- Heroic Throw silence
	extra_cc_spells[107566] = 0x01 -- Staggering Shout
	extra_cc_spells[132168] = 0x01 -- Shockwave
	-- Death Knight
	extra_cc_spells[47476] = 0x20 -- Strangulate
	extra_cc_spells[47481] = 0x01 -- Gnaw
	extra_cc_spells[49203] = 0x10 -- Hungering Cold
	extra_cc_spells[47528] = 0x10 -- Mind Freeze
	extra_cc_spells[49560] = 0x01 -- Death Grip
	extra_cc_spells[79092] = 0x10 -- Hungering Cold
	extra_cc_spells[91807] = 0x01 -- Shambling Rush
	-- Paladin
	extra_cc_spells[853] = 0x02 -- Hammer of Justice
	extra_cc_spells[2812] = 0x02 -- Holy Wrath
	extra_cc_spells[10326] = 0x02 -- Turn Evil
	extra_cc_spells[31935] = 0x02 -- Avengers Shield
	extra_cc_spells[96231] = 0x01 -- Rebuke
	-- Priest
	extra_cc_spells[605] = 0x20 -- Dominate Mind (Mind Control)
	extra_cc_spells[8122] = 0x20 -- Psychic Scream
	extra_cc_spells[15487] = 0x20 -- Silence
	extra_cc_spells[64044] = 0x20 -- Psychic Horror
	-- Shaman
	extra_cc_spells[3600] = 0x08 -- Earthbind (Earthbind Totem)
	extra_cc_spells[8034] = 0x10 -- Frostbrand Weapon
	extra_cc_spells[8056] = 0x10 -- Frost Shock
	extra_cc_spells[39796] = 0x01 -- Stoneclaw Stun (Stoneclaw Totem)
	extra_cc_spells[57994] = 0x08  -- Wind Shear
	extra_cc_spells[64695] = 0x08 -- Earthgrab
	-- Druid
	extra_cc_spells[99] = 0x01 -- Incapacitating Roar
	extra_cc_spells[5211] = 0x01 -- Mighty Bash
	extra_cc_spells[16979] = 0x01 -- Feral Charge - Bear
	extra_cc_spells[19975] = 0x08 -- Entangling Roots (Nature's Grasp)
	extra_cc_spells[22570] = 0x01 -- Maim
	extra_cc_spells[45334] = 0x01 -- Feral Charge Effect
	extra_cc_spells[50259] = 0x01 -- Dazed
	extra_cc_spells[61391] = 0x08 -- Typhoon
	extra_cc_spells[66070] = 0x08 -- Entangling Roots (Force of Nature)
	extra_cc_spells[93985] = 0x01 -- Skull Bash
	extra_cc_spells[102359] = 0x08 -- Mass Entanglement
	-- Rogue
	extra_cc_spells[408] = 0x01 -- Kidney Shot
	extra_cc_spells[1330] = 0x01 -- Garrote - Silence
	extra_cc_spells[1766] = 0x01 -- Kick
	extra_cc_spells[1776] = 0x01 -- Gouge
	extra_cc_spells[1833] = 0x01 -- Cheap Shot
	extra_cc_spells[2094] = 0x01 -- Blind
	-- Mage
	extra_cc_spells[122] = 0x10 -- Frost Nova
	extra_cc_spells[31661] = 0x04 -- Dragon's Breath
	extra_cc_spells[33395] = 0x10 -- Freeze (Frost Water Elemental)
	extra_cc_spells[44572] = 0x10 -- Deep Freeze
	extra_cc_spells[55021] = 0x40 -- Silenced - Improved Counterspell
	extra_cc_spells[61305] = 0x40 -- Polymorph Cat
	extra_cc_spells[61721] = 0x40 -- Polymorph Rabbit
	extra_cc_spells[61780] = 0x40 -- Polymorph Turkey
	extra_cc_spells[82691] = 0x10 -- Ring of Frost
	extra_cc_spells[82691] = 0x10 -- Ring of Frost
	-- Warlock
	extra_cc_spells[5484] = 0x20 -- Howl of Terror
	extra_cc_spells[6789] = 0x20 -- Death Coil
	extra_cc_spells[19647] = 0x20 -- Spell Lock
	extra_cc_spells[22703] = 0x04 -- Infernal Awakening
	extra_cc_spells[24259] = 0x20 -- Spell Lock
	extra_cc_spells[30283] = 0x20 -- Shadowfury
	-- Hunter
	extra_cc_spells[1513] = 0x08 -- Scare Beast
	extra_cc_spells[4167] = 0x01 -- Web (Spider)
	extra_cc_spells[5116] = 0x01 -- Concussive Shot
	extra_cc_spells[19386] = 0x08 -- Wyvern Sting
	extra_cc_spells[19503] = 0x01 -- Scatter Shot
	extra_cc_spells[19577] = 0x08 -- Intimidation (stun)
	extra_cc_spells[24394] = 0x01 -- Intimidation
	extra_cc_spells[26090] = 0x08 -- Pummel (Gorilla)
	extra_cc_spells[50541] = 0x01 -- Clench (Scorpid)
	extra_cc_spells[64803] = 0x01 -- Entrapment
	-- Racials
	extra_cc_spells[20549] = 0x01 -- War Stomp (Tauren)
	extra_cc_spells[28730] = 0x40 -- Arcane Torrent (Bloodelf)
	extra_cc_spells[47779] = 0x40 -- Arcane Torrent (Bloodelf)
	extra_cc_spells[50613] = 0x40 -- Arcane Torrent (Bloodelf)
	-- Engineering
	extra_cc_spells[67890] = 0x04 -- Cobalt Frag Bomb

	-- [[ spells to spec table ]] --

	-- Mage (Arcane)
	spell_to_spec[12042] = 62 -- Arcane Power
	spell_to_spec[31589] = 62 -- Slow
	spell_to_spec[44425] = 62 -- Arcane Barrage
	spell_to_spec[82930] = 62 -- Arcane Tactics
	-- Mage (Fire)
	spell_to_spec[11366] = 63 -- Pyroblast
	spell_to_spec[31661] = 63 -- Dragon's Breath
	spell_to_spec[44457] = 63 -- Living Bomb (DoT)
	-- Mage (Frost)
	spell_to_spec[11426] = 64 -- Ice Barrier
	spell_to_spec[44544] = 64 -- Fingers of Frost
	spell_to_spec[44572] = 64 -- Deep Freeze

	-- Paladin (Holy)
	spell_to_spec[20053] = 65 -- Conviction
	spell_to_spec[25914] = 65 -- Holy Shock
	spell_to_spec[31842] = 65 -- Divine Favor
	spell_to_spec[54149] = 65 -- Infusion of Light
	spell_to_spec[85222] = 65 -- Light of Dawn
	spell_to_spec[86273] = 65 -- Illuminated Healing (Mastery)
	-- Paladin (Protection)
	spell_to_spec[20925] = 66 -- Holy Shield
	spell_to_spec[31850] = 66 -- Ardent Defender
	spell_to_spec[31935] = 66 -- Avenger's Shield
	spell_to_spec[53600] = 66 -- Shield of the Righteous
	spell_to_spec[88263] = 66 -- Hammer of the Righteous
	-- Paladin (Retribution)
	spell_to_spec[53385] = 70 -- Divine Storm
	spell_to_spec[85256] = 70 -- Templar's Verdict
	spell_to_spec[89906] = 70 -- Judgements of the Bold

	-- Warrior (Arms)
	spell_to_spec[12294] = 71 -- Mortal Strike
	spell_to_spec[12328] = 71 -- Sweeping Strikes
	spell_to_spec[60503] = 71 -- Taste for Blood
	spell_to_spec[76858] = 71 -- Opportunity Strike (mastery)
	-- Warrior (Fury)
	spell_to_spec[23588] = 72 -- Dual Wield Specialization
	spell_to_spec[23881] = 72 -- Bloodthirst
	spell_to_spec[29801] = 72 -- Rampage
	spell_to_spec[46917] = 72 -- Titan's Grip
	spell_to_spec[49152] = 72 -- Titan's Grip Effect
	-- Warrior (Protection)
	spell_to_spec[871] = 73 -- Shield Wall
	spell_to_spec[2565] = 73 -- Shield Block
	spell_to_spec[12975] = 73 -- Last Stand
	spell_to_spec[46953] = 73 -- Sword and Board
	spell_to_spec[47488] = 73 -- Shield Slam
	spell_to_spec[47498] = 73 -- Devastate
	spell_to_spec[50227] = 73 -- Sword and Board Trigger
	spell_to_spec[57823] = 73 -- Revenge

	-- Druid (Balance)
	spell_to_spec[24858] = 102 -- Moonkin Form
	spell_to_spec[50288] = 102 -- Starfall
	spell_to_spec[78674] = 102 -- Starsurge
	-- Druid (Feral DPS)
	spell_to_spec[1079] = 103 -- Rip
	spell_to_spec[1822] = 103 -- Rake
	spell_to_spec[5217] = 103 -- Tiger's Fury
	spell_to_spec[52610] = 103 -- Savage Roar
	-- Druid (Feral Tank)
	spell_to_spec[33745] = 104 -- Lacerate
	spell_to_spec[62606] = 104 -- Savage Defense
	spell_to_spec[6807] = 104 -- Maul
	-- Druid (Restoration)
	spell_to_spec[100977] = 105 -- Harmony
	spell_to_spec[18562] = 105 -- Swiftmend
	spell_to_spec[48438] = 105 -- Wild Growth

	-- Death Knight (Blood)
	spell_to_spec[53138] = 250 -- Abomination's Might
	spell_to_spec[55050] = 250 -- Heart Strike
	spell_to_spec[55233] = 250 -- Vampiric Blood
	-- Death Knight (Frost)
	spell_to_spec[49143] = 251 -- Frost Strike
	spell_to_spec[49184] = 251 -- Howling Blast
	spell_to_spec[66196] = 251 -- Frost Strike Off-Hand
	-- Death Knight (Unholy)
	spell_to_spec[49206] = 252 -- Summon Gargoyle
	spell_to_spec[55090] = 252 -- Scourge Strike (Physical)
	spell_to_spec[65142] = 252 -- Ebon Plague
	spell_to_spec[70890] = 252 -- Scourge Strike (Shadow)

	-- Hunter (Beast Mastery)
	spell_to_spec[34471] = 253 -- Bestial Wrath
	spell_to_spec[53257] = 253 -- Cobra Strikes
	-- Hunter (Marksmanship)
	spell_to_spec[19506] = 254 -- Trueshot Aura
	spell_to_spec[53209] = 254 -- Chimera Shot
	-- Hunter (Survival)
	spell_to_spec[3674] = 255 -- Black Arrow
	spell_to_spec[53290] = 255 -- Hunting Party
	spell_to_spec[53301] = 255 -- Explosive Shot
	spell_to_spec[56453] = 255 -- Lock and Load
	spell_to_spec[64420] = 255 -- Sniper Training

	-- Priest (Discipline)
	spell_to_spec[10060] = 256 -- Power Infusion
	spell_to_spec[33206] = 256 -- Pain Suppression
	spell_to_spec[47750] = 256 -- Penance
	spell_to_spec[47753] = 256 -- Divine Aegis
	spell_to_spec[47755] = 256 -- Rapture
	spell_to_spec[59888] = 256 -- Borrowed Time
	spell_to_spec[89485] = 256 -- Inner Focus
	-- Priest (Holy)
	spell_to_spec[34861] = 257 -- Circle of Healing
	spell_to_spec[47788] = 257 -- Guardian Spirit
	spell_to_spec[81206] = 257 -- Chakra: Sanctuary
	spell_to_spec[81208] = 257 -- Chakra: Serenity
	-- Priest (Shadow)
	spell_to_spec[15286] = 258 -- Vampiric Embrace
	spell_to_spec[15407] = 258 -- Mind Flay
	spell_to_spec[34914] = 258 -- Vampiric Touch

	-- Rogue (Assassination)
	spell_to_spec[1329] = 259 -- Mutilate
	spell_to_spec[5374] = 259 -- Mutilate
	spell_to_spec[14177] = 259 -- Cold Blood
	spell_to_spec[27576] = 259 -- Mutilate Off-Hand
	spell_to_spec[32645] = 259 -- Envenom
	spell_to_spec[51662] = 259 -- Hunger for Blood
	-- Rogue (Combat)
	spell_to_spec[13750] = 260 -- Adrenaline Rush
	spell_to_spec[13877] = 260 -- Blade Flurry
	spell_to_spec[14251] = 260 -- Riposte
	spell_to_spec[51690] = 260 -- Killing Spree
	-- Rogue (Subtlety)
	spell_to_spec[14183] = 261 -- Premeditation
	spell_to_spec[14185] = 261 -- Preparation
	spell_to_spec[14278] = 261 -- Ghostly Strike
	spell_to_spec[48660] = 261 -- Hemorrhage
	spell_to_spec[51713] = 261 -- Shadow Dance

	-- Shaman (Elemental)
	spell_to_spec[16166] = 262 -- Elemental Mastery
	spell_to_spec[51490] = 262 -- Thunderstorm
	spell_to_spec[64701] = 262 -- Elemental Mastery
	spell_to_spec[88767] = 262 -- Fulmination
	-- Shaman (Enhancement)
	spell_to_spec[51530] = 263 -- Maelstrom Weapon
	spell_to_spec[51533] = 263 -- Feral Spirit
	spell_to_spec[60103] = 263 -- Lava Lash
	-- Shaman (Restoration)
	spell_to_spec[974]   = 264 -- Earth Shield
	spell_to_spec[1064]  = 264 -- Chain Heal
	spell_to_spec[53390] = 264 -- Tidal Waves
	spell_to_spec[61295] = 264 -- Riptide

	-- Warlock (Affliction)
	spell_to_spec[30108] = 265 -- Unstable Affliction
	spell_to_spec[48181] = 265 -- Haunt
	-- Warlock (Demonology)
	spell_to_spec[30146] = 266 -- Summon Felguard
	spell_to_spec[47193] = 266 -- Demonic Empowerment
	spell_to_spec[47241] = 266 -- Metamorphosis
	spell_to_spec[71521] = 266 -- Hand of Gul'dan
	-- Warlock (Destruction)
	spell_to_spec[17962] = 267 -- Conflagrate
	spell_to_spec[50796] = 267 -- Chaos Bolt
	spell_to_spec[80240] = 267 -- Bane of Havoc

	-- [[ deathlog tracked buffs ]] --

	-- Warrior
	deathlog_tracked_buff[spellnames[871]] = true -- Shield Wall
	deathlog_tracked_buff[spellnames[2565]] = true -- Shield Block
	deathlog_tracked_buff[spellnames[12975]] = true -- Last Stand
	deathlog_tracked_buff[spellnames[23920]] = true -- Spell Reflection
	deathlog_tracked_buff[spellnames[58374]] = true -- Glyph of Blocking
	-- Death Knight
	deathlog_tracked_buff[spellnames[42650]] = true -- Army of the Dead
	deathlog_tracked_buff[spellnames[45529]] = true -- Blood Tap
	deathlog_tracked_buff[spellnames[48707]] = true -- Anti-Magic Shell
	deathlog_tracked_buff[spellnames[48792]] = true -- Icebound Fortitude
	deathlog_tracked_buff[spellnames[48982]] = true -- Rune Tap
	deathlog_tracked_buff[spellnames[49039]] = true -- Lichborne
	deathlog_tracked_buff[spellnames[49182]] = true -- Blade Barrier
	deathlog_tracked_buff[spellnames[49222]] = true -- Bone Shield
	deathlog_tracked_buff[spellnames[51052]] = true -- Anti-Magic Zone
	deathlog_tracked_buff[spellnames[51271]] = true -- Unbreakable Armor
	deathlog_tracked_buff[spellnames[54223]] = true -- Shadow of Death
	deathlog_tracked_buff[spellnames[55233]] = true -- Vampiric Blood
	deathlog_tracked_buff[spellnames[70654]] = true -- Blood Armor
	-- Paladin
	deathlog_tracked_buff[spellnames[498]] = true -- Divine Protection
	deathlog_tracked_buff[spellnames[633]] = true -- Lay on Hands
	deathlog_tracked_buff[spellnames[642]] = true -- Divine Shield
	deathlog_tracked_buff[spellnames[1022]] = true -- Hand of Protection
	deathlog_tracked_buff[spellnames[1038]] = true -- Hand of Salvation
	deathlog_tracked_buff[spellnames[1044]] = true -- Hand of Freedom
	deathlog_tracked_buff[spellnames[6940]] = true -- Hand of Sacrifice
	deathlog_tracked_buff[spellnames[20925]] = true -- Holy Shield
	deathlog_tracked_buff[spellnames[31821]] = true -- Aura Mastery
	deathlog_tracked_buff[spellnames[31850]] = true -- Ardent Defender
	deathlog_tracked_buff[spellnames[31884]] = true -- Avenging Wrath
	deathlog_tracked_buff[spellnames[64205]] = true -- Divine Sacrifice
	deathlog_tracked_buff[spellnames[70940]] = true -- Divine Guardian
	-- Priest
	deathlog_tracked_buff[spellnames[17]] = true -- Power Word: Shield
	deathlog_tracked_buff[spellnames[586]] = true -- Fade
	deathlog_tracked_buff[spellnames[14893]] = true -- Inspiration
	deathlog_tracked_buff[spellnames[27827]] = true -- Spirit of Redemption
	deathlog_tracked_buff[spellnames[33206]] = true -- Pain Suppression
	deathlog_tracked_buff[spellnames[47585]] = true -- Dispersion
	deathlog_tracked_buff[spellnames[47788]] = true -- Guardian Spirit
	deathlog_tracked_buff[spellnames[64843]] = true -- Divine Hymn
	-- Shaman
	deathlog_tracked_buff[spellnames[16177]] = true -- Ancestral Fortitude
	deathlog_tracked_buff[spellnames[30823]] = true -- Shamanistic Rage
	-- Druid
	deathlog_tracked_buff[spellnames[5487]] = true -- Bear Form
	deathlog_tracked_buff[spellnames[8998]] = true -- Cower
	deathlog_tracked_buff[spellnames[22812]] = true -- Barkskin
	deathlog_tracked_buff[spellnames[22842]] = true -- Frenzied Regeneration
	deathlog_tracked_buff[spellnames[61336]] = true -- Survival Instincts
	deathlog_tracked_buff[spellnames[62606]] = true -- Savage Defense
	deathlog_tracked_buff[spellnames[70725]] = true -- Enraged Defense
	-- Rogue
	deathlog_tracked_buff[spellnames[1856]] = true -- Vanish
	deathlog_tracked_buff[spellnames[1966]] = true -- Feint
	deathlog_tracked_buff[spellnames[5277]] = true -- Evasion
	deathlog_tracked_buff[spellnames[31224]] = true -- Cloak of Shadows
	-- Mage
	deathlog_tracked_buff[spellnames[66]] = true -- Invisibility
	deathlog_tracked_buff[spellnames[543]] = true -- Mage Ward
	deathlog_tracked_buff[spellnames[1463]] = true -- Mana shield
	deathlog_tracked_buff[spellnames[1953]] = true -- Blink
	deathlog_tracked_buff[spellnames[11426]] = true -- Ice Barrier
	deathlog_tracked_buff[spellnames[45438]] = true -- Ice Block
	deathlog_tracked_buff[spellnames[55342]] = true -- Mirror Image
	-- Warlock
	deathlog_tracked_buff[spellnames[6229]] = true -- Shadow Ward
	-- Hunter
	deathlog_tracked_buff[spellnames[781]] = true -- Disengage
	deathlog_tracked_buff[spellnames[5384]] = true -- Feign Death
	deathlog_tracked_buff[spellnames[19263]] = true -- Deterrence
	-- Items
	deathlog_tracked_buff[spellnames[54861]] = true -- Nitro Boosts
	deathlog_tracked_buff[spellnames[60180]] = true -- Repelling Charge (Resolute)
	deathlog_tracked_buff[spellnames[60286]] = true -- Defender's Code
	deathlog_tracked_buff[spellnames[64763]] = true -- Heart of Iron
	deathlog_tracked_buff[spellnames[65011]] = true -- Furnace Stone
	deathlog_tracked_buff[spellnames[65012]] = true -- Royal Seal of King Llane
	deathlog_tracked_buff[spellnames[67596]] = true -- Battlemaster's PvP (Tremendous Fortitude)
	deathlog_tracked_buff[spellnames[67631]] = true -- The Black Heart (Aegis)
	deathlog_tracked_buff[spellnames[67694]] = true -- Glyph of Indomitability (Defensive Tactics)
	deathlog_tracked_buff[spellnames[67753]] = true -- Juggernaut's Vitality/Satrina's Impeding Scarab (Fortitude)
	deathlog_tracked_buff[spellnames[68443]] = true -- Brawler's Souvenir (Drunken Evasiveness)
	deathlog_tracked_buff[spellnames[71569]] = true -- Ick's Rotting Thumb (Increased Fortitude)
	deathlog_tracked_buff[spellnames[71586]] = true -- Corroded Skeleton Key (Hardened Skin)
	deathlog_tracked_buff[spellnames[71638]] = true -- Sindragosa's Flawless Fang (Aegis of Dalaran)
	deathlog_tracked_buff[spellnames[71639]] = true -- Corpse Tongue Coin (Thick Skin)
	deathlog_tracked_buff[spellnames[75480]] = true -- Petrified Twilight Scale (Scaly Nimbleness)
else -- retail?

	-- [[ spells to spec table ]] --

	-- Mage (Arcane)
	spell_to_spec[759] = 62 -- Conjure Mana Gem
	spell_to_spec[5143] = 62 -- Arcane Missiles
	spell_to_spec[12051] = 62 -- Evocation
	spell_to_spec[30451] = 62 -- Arcane Blast
	spell_to_spec[44425] = 62 -- Arcane Barrage
	spell_to_spec[114923] = 62 -- Nether Tempest
	spell_to_spec[153626] = 62 -- Arcane Orb
	spell_to_spec[157980] = 62 -- Supernova
	spell_to_spec[205022] = 62 -- Arcane Familiar
	spell_to_spec[205025] = 62 -- Presence of Mind
	spell_to_spec[235450] = 62 -- Prismatic Barrier
	spell_to_spec[321507] = 62 -- Touch of the Magi
	spell_to_spec[365350] = 62 -- Arcane Surge
	spell_to_spec[376103] = 62 -- Radiant Spark
	-- Mage (Fire)
	spell_to_spec[133] = 63 -- Fireball
	spell_to_spec[2120] = 63 -- Flamestrike
	spell_to_spec[2948] = 63 -- Scorch
	spell_to_spec[11366] = 63 -- Pyroblast
	spell_to_spec[44457] = 63 -- Living Bomb
	spell_to_spec[190319] = 63 -- Combustion
	spell_to_spec[235313] = 63 -- Blazing Barrier
	spell_to_spec[257541] = 63 -- Phoenix Flames
	-- Mage (Frost)
	spell_to_spec[11426] = 64 -- Ice Barrier
	spell_to_spec[12472] = 64 -- Icy Veins
	spell_to_spec[30455] = 64 -- Ice Lance
	spell_to_spec[31687] = 64 -- Summon Water Elemental
	spell_to_spec[44614] = 64 -- Flurry
	spell_to_spec[84714] = 64 -- Frozen Orb
	spell_to_spec[153595] = 64 -- Comet Storm
	spell_to_spec[190356] = 64 -- Blizzard
	spell_to_spec[199786] = 64 -- Glacial Spike
	spell_to_spec[205021] = 64 -- Ray of Frost
	spell_to_spec[235219] = 64 -- Cold Snap
	spell_to_spec[257537] = 64 -- Ebonbolt

	-- Paladin (Holy)
	spell_to_spec[4987] = 65 -- Cleanse
	spell_to_spec[20473] = 65 -- Holy Shock
	spell_to_spec[31821] = 65 -- Aura Mastery
	spell_to_spec[53563] = 65 -- Beacon of Light
	spell_to_spec[82326] = 65 -- Holy Light
	spell_to_spec[85222] = 65 -- Light of Dawn
	spell_to_spec[114158] = 65 -- Light's Hammer
	spell_to_spec[114165] = 65 -- Holy Prism
	spell_to_spec[148039] = 65 -- Barrier of Faith
	spell_to_spec[156910] = 65 -- Beacon of Faith
	spell_to_spec[183998] = 65 -- Light of the Martyr
	spell_to_spec[200652] = 65 -- Tyr's Deliverance
	spell_to_spec[210294] = 65 -- Divine Favor
	spell_to_spec[212056] = 65 -- Absolution
	spell_to_spec[214202] = 65 -- Rule of Law
	spell_to_spec[223306] = 65 -- Bestow Faith
	spell_to_spec[388007] = 65 -- Blessing of Summer
	spell_to_spec[394088] = 65 -- Avenging Crusader
	-- Paladin (Protection)
	spell_to_spec[31850] = 66 -- Ardent Defender
	spell_to_spec[31935] = 66 -- Avenger's Shield
	spell_to_spec[86659] = 66 -- Guardian of Ancient Kings
	spell_to_spec[204018] = 66 -- Blessing of Spellwarding
	spell_to_spec[204019] = 66 -- Blessed Hammer
	spell_to_spec[327193] = 66 -- Moment of Glory
	spell_to_spec[378974] = 66 -- Bastion of Light
	spell_to_spec[386653] = 66 -- Bulwark of Righteous Fury
	spell_to_spec[387174] = 66 -- Eye of Tyr
	-- Paladin (Retribution)
	spell_to_spec[53385] = 70 -- Divine Storm
	spell_to_spec[85256] = 70 -- Templar's Verdict
	spell_to_spec[183218] = 70 -- Hand of Hindrance
	spell_to_spec[184575] = 70 -- Blade of Justice
	spell_to_spec[184662] = 70 -- Shield of Vengeance
	spell_to_spec[205191] = 70 -- Eye for an Eye
	spell_to_spec[215661] = 70 -- Justicar's Vengeance
	spell_to_spec[255937] = 70 -- Wake of Ashes
	spell_to_spec[326734] = 70 -- Healing Hands
	spell_to_spec[343527] = 70 -- Execution Sentence
	spell_to_spec[343721] = 70 -- Final Reckoning
	spell_to_spec[383185] = 70 -- Exorcism
	spell_to_spec[383327] = 70 -- Final Verdict
	spell_to_spec[384052] = 70 -- Radiant Decree
	spell_to_spec[384392] = 70 -- Crusade

	-- Warrior (Arms)
	spell_to_spec[772] = 71 -- Rend
	spell_to_spec[845] = 71 -- Cleave
	spell_to_spec[7384] = 71 -- Overpower
	spell_to_spec[12294] = 71 -- Mortal Strike
	spell_to_spec[118038] = 71 -- Die by the Sword
	spell_to_spec[167105] = 71 -- Colossus Smash
	spell_to_spec[227847] = 71 -- Bladestorm
	spell_to_spec[260643] = 71 -- Skullsplitter
	spell_to_spec[260708] = 71 -- Sweeping Strikes
	-- Warrior (Fury)
	spell_to_spec[1719] = 72 -- Recklessness
	spell_to_spec[5308] = 72 -- Execute
	spell_to_spec[23881] = 72 -- Bloodthirst
	spell_to_spec[85288] = 72 -- Raging Blow
	spell_to_spec[184364] = 72 -- Enraged Regeneration
	spell_to_spec[184367] = 72 -- Rampage
	spell_to_spec[190411] = 72 -- Whirlwind
	spell_to_spec[315720] = 72 -- Onslaught
	spell_to_spec[385059] = 72 -- Odyn's Fury
	-- Warrior (Protection)
	spell_to_spec[871] = 73 -- Shield Wall
	spell_to_spec[1160] = 73 -- Demoralizing Shout
	spell_to_spec[1161] = 73 -- Challenging Shout
	spell_to_spec[6572] = 73 -- Revenge
	spell_to_spec[12975] = 73 -- Last Stand
	spell_to_spec[20243] = 73 -- Devastate
	spell_to_spec[385952] = 73 -- Shield Charge
	spell_to_spec[392966] = 73 -- Spell Block
	spell_to_spec[394062] = 73 -- Rend

	-- Druid (Balance)
	spell_to_spec[24858] = 102 -- Moonkin Form
	spell_to_spec[78674] = 102 -- Starsurge
	spell_to_spec[78675] = 102 -- Solar Beam
	spell_to_spec[88747] = 102 -- Wild Mushroom
	spell_to_spec[102560] = 102 -- Incarnation: Chosen of Elune
	spell_to_spec[191034] = 102 -- Starfall
	spell_to_spec[194153] = 102 -- Starfire
	spell_to_spec[194223] = 102 -- Celestial Alignment
	spell_to_spec[202347] = 102 -- Stellar Flare
	spell_to_spec[202425] = 102 -- Warrior of Elune
	spell_to_spec[202770] = 102 -- Fury of Elune
	spell_to_spec[205636] = 102 -- Force of Nature
	spell_to_spec[274281] = 102 -- New Moon
	-- Druid (Feral)
	spell_to_spec[5217] = 103 -- Tiger's Fury
	spell_to_spec[5221] = 103 -- Shred
	spell_to_spec[106951] = 103 -- Berserk
	spell_to_spec[274837] = 103 -- Feral Frenzy
	spell_to_spec[285381] = 103 -- Primal Wrath
	-- Druid (Guardian)
	spell_to_spec[6807] = 104 -- Maul
	spell_to_spec[50334] = 104 -- Berserk
	spell_to_spec[80313] = 104 -- Pulverize
	spell_to_spec[102558] = 104 -- Incarnation: Guardian of Ursoc
	spell_to_spec[155835] = 104 -- Bristling Fur
	spell_to_spec[200851] = 104 -- Rage of the Sleeper
	spell_to_spec[343240] = 104 -- Berserk: Ravage
	spell_to_spec[377623] = 104 -- Berserk: Unchecked Aggression
	spell_to_spec[377779] = 104 -- Berserk: Persistence
	-- Druid (Restoration)
	spell_to_spec[740] = 105 -- Tranquility
	spell_to_spec[33763] = 105 -- Lifebloom
	spell_to_spec[33891] = 105 -- Incarnation: Tree of Life
	spell_to_spec[50464] = 105 -- Nourish
	spell_to_spec[88423] = 105 -- Nature's Cure
	spell_to_spec[102342] = 105 -- Ironbark
	spell_to_spec[102351] = 105 -- Cenarion Ward
	spell_to_spec[132158] = 105 -- Nature's Swiftness
	spell_to_spec[145205] = 105 -- Efflorescence
	spell_to_spec[197721] = 105 -- Flourish
	spell_to_spec[203651] = 105 -- Overgrowth
	spell_to_spec[212040] = 105 -- Revitalize
	spell_to_spec[392160] = 105 -- Invigorate

	-- Death Knight (Blood)
	spell_to_spec[49028] = 250 -- Dancing Rune Weapon
	spell_to_spec[50842] = 250 -- Blood Boil
	spell_to_spec[55233] = 250 -- Vampiric Blood
	spell_to_spec[108199] = 250 -- Gorefiend's Grasp
	spell_to_spec[194679] = 250 -- Rune Tap
	spell_to_spec[194844] = 250 -- Bonestorm
	spell_to_spec[195182] = 250 -- Marrowrend
	spell_to_spec[195292] = 250 -- Death's Caress
	spell_to_spec[206930] = 250 -- Heart Strike
	spell_to_spec[206931] = 250 -- Blooddrinker
	spell_to_spec[206940] = 250 -- Mark of Blood
	spell_to_spec[219809] = 250 -- Tombstone
	spell_to_spec[221699] = 250 -- Blood Tap
	spell_to_spec[274156] = 250 -- Consumption
	-- Death Knight (Frost)
	spell_to_spec[49020] = 251 -- Obliterate
	spell_to_spec[49143] = 251 -- Frost Strike
	spell_to_spec[49184] = 251 -- Howling Blast
	spell_to_spec[51271] = 251 -- Pillar of Frost
	spell_to_spec[57330] = 251 -- Horn of Winter
	spell_to_spec[152279] = 251 -- Breath of Sindragosa
	spell_to_spec[194913] = 251 -- Glacial Advance
	spell_to_spec[196770] = 251 -- Remorseless Winter
	spell_to_spec[207230] = 251 -- Frostscythe
	spell_to_spec[279302] = 251 -- Frostwyrm's Fury
	spell_to_spec[305392] = 251 -- Chill Streak
	-- Death Knight (Unholy)
	spell_to_spec[42650] = 252 -- Army of the Dead
	spell_to_spec[49206] = 252 -- Summon Gargoyle
	spell_to_spec[55090] = 252 -- Scourge Strike
	spell_to_spec[63560] = 252 -- Dark Transformation
	spell_to_spec[77575] = 252 -- Outbreak
	spell_to_spec[85948] = 252 -- Festering Strike
	spell_to_spec[115989] = 252 -- Unholy Blight
	spell_to_spec[207289] = 252 -- Unholy Assault
	spell_to_spec[207317] = 252 -- Epidemic
	spell_to_spec[275699] = 252 -- Apocalypse
	spell_to_spec[390175] = 252 -- Plaguebringer
	spell_to_spec[390279] = 252 -- Vile Contagion

	-- Hunter (Beast Mastery)
	spell_to_spec[2643] = 253 -- Multi-Shot
	spell_to_spec[19574] = 253 -- Bestial Wrath
	spell_to_spec[120679] = 253 -- Dire Beast
	spell_to_spec[131894] = 253 -- A Murder of Crows
	spell_to_spec[193455] = 253 -- Cobra Shot
	spell_to_spec[193530] = 253 -- Aspect of the Wild
	spell_to_spec[217200] = 253 -- Barbed Shot
	spell_to_spec[321530] = 253 -- Bloodshed
	spell_to_spec[359844] = 253 -- Call of the Wild
	-- Hunter (Marksmanship)
	spell_to_spec[19434] = 254 -- Aimed Shot
	spell_to_spec[186387] = 254 -- Bursting Shot
	spell_to_spec[257044] = 254 -- Rapid Fire
	spell_to_spec[257620] = 254 -- Multi-Shot
	spell_to_spec[260243] = 254 -- Volley
	spell_to_spec[260402] = 254 -- Double Tap
	spell_to_spec[288613] = 254 -- Trueshot
	-- Hunter (Survival)
	spell_to_spec[186270] = 255 -- Raptor Strike
	spell_to_spec[186289] = 255 -- Aspect of the Eagle
	spell_to_spec[187707] = 255 -- Muzzle -Survival Interrupt
	spell_to_spec[187708] = 255 -- Carve
	spell_to_spec[190925] = 255 -- Harpoon
	spell_to_spec[203415] = 255 -- Fury of the Eagle
	spell_to_spec[212436] = 255 -- Butchery
	spell_to_spec[259489] = 255 -- Kill Command
	spell_to_spec[259495] = 255 -- Wildfire Bomb
	spell_to_spec[269751] = 255 -- Flanking Strike
	spell_to_spec[320976] = 255 -- Kill Shot
	spell_to_spec[360952] = 255 -- Coordinated Assault
	spell_to_spec[360966] = 255 -- Spearhead

	-- Priest (Discipline)
	spell_to_spec[33206] = 256 -- Pain Suppression
	spell_to_spec[47536] = 256 -- Rapture
	spell_to_spec[47540] = 256 -- Penance
	spell_to_spec[62618] = 256 -- Power Word: Barrier
	spell_to_spec[129250] = 256 -- Power Word: Solace
	spell_to_spec[194509] = 256 -- Power Word: Radiance
	spell_to_spec[204197] = 256 -- Purge the Wicked
	spell_to_spec[214621] = 256 -- Schism
	spell_to_spec[246287] = 256 -- Evangelism
	spell_to_spec[314867] = 256 -- Shadow Covenant
	spell_to_spec[373178] = 256 -- Light's Wrath
	-- Priest (Holy)
	spell_to_spec[596] = 257 -- Prayer of Healing
	spell_to_spec[2050] = 257 -- Holy Word: Serenity
	spell_to_spec[2060] = 257 -- Heal
	spell_to_spec[14914] = 257 -- Holy Fire
	spell_to_spec[34861] = 257 -- Holy Word: Sanctify
	spell_to_spec[47788] = 257 -- Guardian Spirit
	spell_to_spec[64843] = 257 -- Divine Hymn
	spell_to_spec[64901] = 257 -- Symbol of Hope
	spell_to_spec[88625] = 257 -- Holy Word: Chastise
	spell_to_spec[204883] = 257 -- Circle of Healing
	spell_to_spec[372616] = 257 -- Empyreal Blaze
	spell_to_spec[372760] = 257 -- Divine Word
	spell_to_spec[372835] = 257 -- Lightwell
	spell_to_spec[392941] = 257 -- Apotheosis
	-- Priest (Shadow)
	spell_to_spec[15407] = 258 -- Mind Flay
	spell_to_spec[15487] = 258 -- Silence
	spell_to_spec[34914] = 258 -- Vampiric Touch
	spell_to_spec[47585] = 258 -- Dispersion
	spell_to_spec[48045] = 258 -- Mind Sear
	spell_to_spec[64044] = 258 -- Psychic Horror
	spell_to_spec[73510] = 258 -- Mind Spike
	spell_to_spec[205385] = 258 -- Shadow Crash
	spell_to_spec[228260] = 258 -- Void Eruption
	spell_to_spec[232698] = 258 -- Shadowform
	spell_to_spec[263165] = 258 -- Void Torrent
	spell_to_spec[263346] = 258 -- Dark Void
	spell_to_spec[335467] = 258 -- Devouring Plague
	spell_to_spec[341374] = 258 -- Damnation
	spell_to_spec[391109] = 258 -- Dark Ascension

	-- Rogue (Assassination)
	spell_to_spec[703] = 259 -- Garrote
	spell_to_spec[1329] = 259 -- Mutilate
	spell_to_spec[2823] = 259 -- Deadly Poison
	spell_to_spec[32645] = 259 -- Envenom
	spell_to_spec[51723] = 259 -- Fan of Knives
	spell_to_spec[121411] = 259 -- Crimson Tempest
	spell_to_spec[185565] = 259 -- Poisoned Knife
	spell_to_spec[200806] = 259 -- Exsanguinate
	spell_to_spec[360194] = 259 -- Deathmark
	spell_to_spec[381664] = 259 -- Amplifying Poison
	spell_to_spec[381802] = 259 -- Indiscriminate Carnage
	spell_to_spec[385424] = 259 -- Serrated Bone Spike
	spell_to_spec[385627] = 259 -- Kingsbane
	-- Rogue (Outlaw)
	spell_to_spec[2098] = 260 -- Dispatch
	spell_to_spec[13750] = 260 -- Adrenaline Rush
	spell_to_spec[13877] = 260 -- Blade Flurry
	spell_to_spec[51690] = 260 -- Killing Spree
	spell_to_spec[185763] = 260 -- Pistol Shot
	spell_to_spec[195457] = 260 -- Grappling Hook
	spell_to_spec[196937] = 260 -- Ghostly Strike
	spell_to_spec[271877] = 260 -- Blade Rush
	spell_to_spec[315341] = 260 -- Between the Eyes
	spell_to_spec[315508] = 260 -- Roll the Bones
	spell_to_spec[343142] = 260 -- Dreadblades
	spell_to_spec[381989] = 260 -- Keep It Rolling
	-- Rogue (Subtlety)
	spell_to_spec[53] = 261 -- Backstab
	spell_to_spec[114014] = 261 -- Shuriken Toss
	spell_to_spec[121471] = 261 -- Shadow Blades
	spell_to_spec[185438] = 261 -- Shadowstrike
	spell_to_spec[197835] = 261 -- Shuriken Storm
	spell_to_spec[212283] = 261 -- Symbols of Death
	spell_to_spec[277925] = 261 -- Shuriken Tornado
	spell_to_spec[280719] = 261 -- Secret Technique
	spell_to_spec[319175] = 261 -- Black Powder
	spell_to_spec[384631] = 261 -- Flagellation

	-- Shaman (Elemental)
	spell_to_spec[8042] = 262 -- Earth Shock
	spell_to_spec[61882] = 262 -- Earthquake
	spell_to_spec[114050] = 262 -- Ascendance
	spell_to_spec[191634] = 262 -- Stormkeeper
	spell_to_spec[192222] = 262 -- Liquid Magma Totem
	spell_to_spec[192249] = 262 -- Storm Elemental
	spell_to_spec[198067] = 262 -- Fire Elemental
	spell_to_spec[210714] = 262 -- Icefury
	-- Shaman (Enhancement)
	spell_to_spec[8512] = 263 -- Windfury Totem
	spell_to_spec[33757] = 263 -- Windfury Weapon
	spell_to_spec[51533] = 263 -- Feral Spirit
	spell_to_spec[60103] = 263 -- Lava Lash
	spell_to_spec[114051] = 263 -- Ascendance
	spell_to_spec[187874] = 263 -- Crash Lightning
	spell_to_spec[196884] = 263 -- Feral Lunge
	spell_to_spec[197214] = 263 -- Sundering
	spell_to_spec[333974] = 263 -- Fire Nova
	spell_to_spec[342240] = 263 -- Ice Strike
	spell_to_spec[384352] = 263 -- Doom Winds
	-- Shaman (Restoration)
	spell_to_spec[16191] = 264 -- Mana Tide Totem
	spell_to_spec[52127] = 264 -- Water Shield
	spell_to_spec[61295] = 264 -- Riptide
	spell_to_spec[73685] = 264 -- Unleash Life
	spell_to_spec[73920] = 264 -- Healing Rain
	spell_to_spec[77130] = 264 -- Purify Spirit
	spell_to_spec[77472] = 264 -- Healing Wave
	spell_to_spec[98008] = 264 -- Spirit Link Totem
	spell_to_spec[108280] = 264 -- Healing Tide Totem
	spell_to_spec[114052] = 264 -- Ascendance
	spell_to_spec[197995] = 264 -- Wellspring
	spell_to_spec[198838] = 264 -- Earthen Wall Totem
	spell_to_spec[207399] = 264 -- Ancestral Protection Totem
	spell_to_spec[207778] = 264 -- Downpour
	spell_to_spec[212048] = 264 -- Ancestral Vision
	spell_to_spec[382021] = 264 -- Earthliving Weapon
	spell_to_spec[382029] = 264 -- Ever-Rising Tide
	spell_to_spec[383009] = 264 -- Stormkeeper

	-- Warlock (Affliction)
	spell_to_spec[980] = 265 -- Agony
	spell_to_spec[27243] = 265 -- Seed of Corruption
	spell_to_spec[48181] = 265 -- Haunt
	spell_to_spec[63106] = 265 -- Siphon Life
	spell_to_spec[205179] = 265 -- Phantom Singularity
	spell_to_spec[205180] = 265 -- Summon Darkglare
	spell_to_spec[278350] = 265 -- Vile Taint
	spell_to_spec[316099] = 265 -- Unstable Affliction
	spell_to_spec[324536] = 265 -- Malefic Rapture
	spell_to_spec[386951] = 265 -- Soul Swap
	spell_to_spec[386997] = 265 -- Soul Rot
	spell_to_spec[387073] = 265 -- Soul Tap
	spell_to_spec[388667] = 265 -- Drain Soul
	-- Warlock (Demonology)
	spell_to_spec[603] = 266 -- Doom
	spell_to_spec[104316] = 266 -- Call Dreadstalkers
	spell_to_spec[105174] = 266 -- Hand of Gul'dan
	spell_to_spec[111898] = 266 -- Grimoire: Felguard
	spell_to_spec[196277] = 266 -- Implosion
	spell_to_spec[264057] = 266 -- Soul Strike
	spell_to_spec[264119] = 266 -- Summon Vilefiend
	spell_to_spec[264130] = 266 -- Power Siphon
	spell_to_spec[264178] = 266 -- Demonbolt
	spell_to_spec[265187] = 266 -- Summon Demonic Tyrant
	spell_to_spec[267171] = 266 -- Demonic Strength
	spell_to_spec[267211] = 266 -- Bilescourge Bombers
	spell_to_spec[267217] = 266 -- Nether Portal
	spell_to_spec[386833] = 266 -- Guillotine
	-- Warlock (Destruction)
	spell_to_spec[348] = 267 -- Immolate
	spell_to_spec[1122] = 267 -- Summon Infernal
	spell_to_spec[5740] = 267 -- Rain of Fire
	spell_to_spec[6353] = 267 -- Soul Fire
	spell_to_spec[17877] = 267 -- Shadowburn
	spell_to_spec[17962] = 267 -- Conflagrate
	spell_to_spec[29722] = 267 -- Incinerate
	spell_to_spec[80240] = 267 -- Havoc
	spell_to_spec[116858] = 267 -- Chaos Bolt
	spell_to_spec[152108] = 267 -- Cataclysm
	spell_to_spec[196447] = 267 -- Channel Demonfire
	spell_to_spec[387976] = 267 -- Dimensional Rift

	-- Monk (Brewmaster)
	spell_to_spec[115176] = 268 -- Zen Meditation
	spell_to_spec[115181] = 268 -- Breath of Fire
	spell_to_spec[115399] = 268 -- Black Ox Brew
	spell_to_spec[119582] = 268 -- Purifying Brew
	spell_to_spec[121253] = 268 -- Keg Smash
	spell_to_spec[132578] = 268 -- Invoke Niuzao, the Black Ox
	spell_to_spec[322507] = 268 -- Celestial Brew
	spell_to_spec[322960] = 268 -- Fortifying Brew
	spell_to_spec[324312] = 268 -- Clash
	spell_to_spec[325153] = 268 -- Exploding Keg
	spell_to_spec[387184] = 268 -- Weapons of Order
	-- Monk (Windwalker)
	spell_to_spec[101545] = 269 -- Flying Serpent Kick
	spell_to_spec[113656] = 269 -- Fists of Fury
	spell_to_spec[122470] = 269 -- Touch of Karma
	spell_to_spec[123904] = 269 -- Invoke Xuen, the White Tiger
	spell_to_spec[137639] = 269 -- Storm, Earth, and Fire
	spell_to_spec[152173] = 269 -- Serenity
	spell_to_spec[152175] = 269 -- Whirling Dragon Punch
	spell_to_spec[392983] = 269 -- Strike of the Windlord
	-- Monk (Mistweaver)
	spell_to_spec[115151] = 270 -- Renewing Mist
	spell_to_spec[115310] = 270 -- Revival
	spell_to_spec[115450] = 270 -- Detox
	spell_to_spec[116680] = 270 -- Thunder Focus Tea
	spell_to_spec[116849] = 270 -- Life Cocoon
	spell_to_spec[124081] = 270 -- Zen Pulse
	spell_to_spec[124682] = 270 -- Enveloping Mist
	spell_to_spec[191837] = 270 -- Essence Font
	spell_to_spec[196725] = 270 -- Refreshing Jade Wind
	spell_to_spec[197908] = 270 -- Mana Tea
	spell_to_spec[198898] = 270 -- Song of Chi-Ji
	spell_to_spec[212051] = 270 -- Reawaken
	spell_to_spec[322118] = 270 -- Invoke Yu'lon, the Jade Serpent
	spell_to_spec[325197] = 270 -- Invoke Chi-Ji, the Red Crane
	spell_to_spec[388615] = 270 -- Restoral

	-- Demon Hunter (Havoc)
	spell_to_spec[162243] = 577 -- Demon's Bite
	spell_to_spec[162794] = 577 -- Chaos Strike
	spell_to_spec[188499] = 577 -- Blade Dance
	spell_to_spec[195072] = 577 -- Fel Rush
	spell_to_spec[196555] = 577 -- Netherwalk
	spell_to_spec[198013] = 577 -- Eye Beam
	spell_to_spec[198589] = 577 -- Blur
	spell_to_spec[211881] = 577 -- Fel Eruption
	spell_to_spec[258860] = 577 -- Essence Break
	spell_to_spec[258925] = 577 -- Fel Barrage
	spell_to_spec[342817] = 577 -- Glaive Tempest
	-- Demon Hunter (Vengeance)
	spell_to_spec[189110] = 581 -- Infernal Strike
	spell_to_spec[202137] = 581 -- Sigil of Silence
	spell_to_spec[202138] = 581 -- Sigil of Chains
	spell_to_spec[203720] = 581 -- Demon Spikes
	spell_to_spec[203782] = 581 -- Shear
	spell_to_spec[204021] = 581 -- Fiery Brand
	spell_to_spec[207407] = 581 -- Soul Carver
	spell_to_spec[212084] = 581 -- Fel Devastation
	spell_to_spec[228477] = 581 -- Soul Cleave
	spell_to_spec[247454] = 581 -- Spirit Bomb
	spell_to_spec[263642] = 581 -- Fracture
	spell_to_spec[263648] = 581 -- Soul Barrier
	spell_to_spec[320341] = 581 -- Bulk Extraction

	-- Evoker (Devastation)
	spell_to_spec[357211] = 1467 -- Pyre
	spell_to_spec[357212] = 1467 -- Pyre
	spell_to_spec[359073] = 1467 -- Eternity Surge
	spell_to_spec[359077] = 1467 -- Eternity Surge
	spell_to_spec[368847] = 1467 -- Firestorm
	spell_to_spec[369374] = 1467 -- Firestorm
	spell_to_spec[370452] = 1467 -- Shattering Star
	spell_to_spec[375087] = 1467 -- Dragonrage
	spell_to_spec[382411] = 1467 -- Eternity Surge
	-- Evoker (Preservation)
	spell_to_spec[355936] = 1468 -- Dream Breath
	spell_to_spec[357170] = 1468 -- Time Dilation
	spell_to_spec[359816] = 1468 -- Dream Flight
	spell_to_spec[360823] = 1468 -- Naturalize
	spell_to_spec[361178] = 1468 -- Mass Return
	spell_to_spec[363534] = 1468 -- Rewind
	spell_to_spec[364343] = 1468 -- Echo
	spell_to_spec[366155] = 1468 -- Reversion
	spell_to_spec[367226] = 1468 -- Spiritbloom
	spell_to_spec[370537] = 1468 -- Stasis
	spell_to_spec[370960] = 1468 -- Emerald Communion
	spell_to_spec[373861] = 1468 -- Temporal Anomaly
	-- Evoker (Augmentation)
	spell_to_spec[395160] = 1473 -- Eruption
	spell_to_spec[396288] = 1473 -- Upheaval

	-- [[ deathlog tracked buffs ]] --

	-- Warrior
	-- deathlog_tracked_buff[spellnames[112048]] = true -- Shield Barrier
	-- deathlog_tracked_buff[spellnames[114028]] = true -- Mass Spell Reflection
	deathlog_tracked_buff[spellnames[114030]] = true -- Vigilance
	deathlog_tracked_buff[spellnames[114030]] = true -- Vigilance
	deathlog_tracked_buff[spellnames[118038]] = true -- Die by the Sword
	-- Paladin
	deathlog_tracked_buff[spellnames[86659]] = true -- Guardian of Ancient Kings
	-- Monk
	deathlog_tracked_buff[spellnames[115176]] = true -- Zen Meditation
	-- deathlog_tracked_buff[spellnames[115213]] = true -- Avert Harm
	deathlog_tracked_buff[spellnames[115295]] = true -- Guard
	deathlog_tracked_buff[spellnames[115308]] = true -- Elusive Brew
	deathlog_tracked_buff[spellnames[116844]] = true -- Ring of Peace
	deathlog_tracked_buff[spellnames[116849]] = true -- Life Cocoon
	deathlog_tracked_buff[spellnames[122278]] = true -- Dampen Harm
	deathlog_tracked_buff[spellnames[122470]] = true -- Touch of Karma
	deathlog_tracked_buff[spellnames[122783]] = true -- Diffuse Magic
	-- Priest
	deathlog_tracked_buff[spellnames[109964]] = true -- Spirit Shell
	-- Shaman
	deathlog_tracked_buff[spellnames[85838]] = true -- Ancestral Fortitude
	deathlog_tracked_buff[spellnames[108271]] = true -- Astral Shift
	deathlog_tracked_buff[spellnames[108281]] = true -- Ancestral Guidance
	-- Druid
	deathlog_tracked_buff[spellnames[102342]] = true -- Ironbark
	-- deathlog_tracked_buff[spellnames[106922]] = true -- Might of Ursoc
	-- Rogue
	deathlog_tracked_buff[spellnames[76577]] = true -- Smoke Bomb
	-- Warlock
	deathlog_tracked_buff[spellnames[104773]] = true -- Unending Resolve
	deathlog_tracked_buff[spellnames[108359]] = true -- Dark Regeneration
	deathlog_tracked_buff[spellnames[108416]] = true -- Sacrificial Pact
	-- deathlog_tracked_buff[spellnames[110913]] = true -- Dark Bargain
end

ns.ress_spells = ress_spells
ns.cc_spells = cc_spells
ns.extra_cc_spells = extra_cc_spells
ns.spell_to_spec = spell_to_spec
ns.deathlog_tracked_buff = deathlog_tracked_buff

-- table used to determine role from spec
ns.spec_to_role = {
	-- Mage
	[62] = "DAMAGER", -- Arcane
	[63] = "DAMAGER", -- Fire
	[64] = "DAMAGER", -- Frost
	-- Paladin
	[65] = "HEALER", -- Holy
	[66] = "TANK", -- Protection
	[70] = "DAMAGER", -- Retribution
	-- Warrior
	[71] = "DAMAGER", -- Arms
	[72] = "DAMAGER", -- Fury
	[73] = "TANK", -- Protection
	-- Druid
	[102] = "DAMAGER", -- Balance
	[103] = "DAMAGER", -- Feral DPS
	[104] = "TANK", -- Feral Tank
	[105] = "HEALER", -- Restoration
	-- Death Knight
	[250] = "TANK", -- Blood
	[251] = "DAMAGER", -- Frost
	[252] = "DAMAGER", -- Unholy
	-- Hunter
	[253] = "DAMAGER", -- Beast Mastery
	[254] = "DAMAGER", -- Markamnship
	[255] = "DAMAGER", -- Survival
	-- Priest
	[256] = "HEALER", -- Discipline
	[257] = "HEALER", -- Holy
	[258] = "DAMAGER", -- Shadow
	-- Rogue
	[259] = "DAMAGER", -- Assassination
	[260] = "DAMAGER", -- Combat
	[261] = "DAMAGER", -- Subtlety
	-- Shaman
	[262] = "DAMAGER", -- Elemental
	[263] = "DAMAGER", -- Enhancement
	[264] = "HEALER", -- Restoration
	-- Warlock
	[265] = "DAMAGER", -- Affliction
	[266] = "DAMAGER", -- Destruction
	[267] = "DAMAGER", -- Demonology
	-- Monk
	[268] = "TANK", -- Brewmaster
	[269] = "DAMAGER", -- Windwalker
	[270] = "HEALER", -- Mistweaver
	-- Demon Hunter
	[577] = "DAMAGER", -- Havoc
	[581] = "TANK", -- Vengeance
	-- Evoker
	[1467] = "DAMAGER", -- Devastation
	[1468] = "HEALER", -- Preservation
	[1473] = "DAMAGER" -- Augmentation
}

-------------------------------------------------------------------------------
-- grouped and custom units

do
	------------------------------------------------------
	-- grouped units (fake)
	------------------------------------------------------
	--
	-- holds the units to which the damage done is collected
	-- into a single standalone fake unit.
	--
	-- table structure:
	-- option #1:	[creature id] = "Group Name"
	-- option #2:	[creature name] = "Group Name"
	--

	local grouped_units = {
		-- EXPERIMENTAL: instance bosses and trash grouped units.
		-- IMPORTANT: only recorded to the total segment.
		BOSS = true,
		TRASH = true,

		-- Example: The Lich King - Important targets
		-- [36597] = L["Important targets"], -- The Lich King
		-- [36609] = L["Important targets"], -- Val'kyr Shadowguard
		-- [36633] = L["Important targets"], -- Ice Sphere
		-- [36701] = L["Important targets"], -- Raging Spirit
		-- [39190] = L["Important targets"], -- Wicked Spirit
	}

	------------------------------------------------------
	-- custom units (fake)
	------------------------------------------------------
	--
	-- holds units that should craete a fake unit at certain
	-- health or power percentage.
	-- Useful in case you want to collect stuff done to units
	-- at certain encounter phases for example.
	--
	-- table structure (all fields are optional and will be generated and cached by the addon)
	--	start: 		when to start collecting (0.01 = 1%, default: 100%)
	--	stop:		when to stop collecting (0.01 = 1%, default: 0%)
	--	power:		whether to track the speficied power or health
	--		0 - Mana
	--		1 - Rage
	--		2 - Focus
	--		3 - Energy
	--		4 - Happiness
	--		5 - Runes
	--		6 - Runic Power
	--
	-- 	name: 		name of the fake unit (optional)
	-- 	text: 		text to use *format()* with (optional)
	-- 	values: 	table of difficulties to max health (optional)
	-- 	diff: 		table of whitelisted difficulties (optional, default: all)
	--		{["10h"] = true, ["25h"] = true}
	--
	-- **optional** fields will be generated and cached by the addon.
	--

	local custom_units = {}

	------------------------------------------------------
	-- Wrath of the Lich King Classic
	------------------------------------------------------
	if Private.IsWotLK() then
		-- ------------- --
		-- custom groups
		-- ------------- --

		-- The Lich King: Important targets
		grouped_units[36597] = L["Important targets"] -- The Lich King
		grouped_units[36609] = L["Important targets"] -- Val'kyr Shadowguard
		grouped_units[36633] = L["Important targets"] -- Ice Sphere
		grouped_units[36701] = L["Important targets"] -- Raging Spirit
		grouped_units[39190] = L["Important targets"] -- Wicked Spirit
		-- Professor Putricide: Oozes
		grouped_units[37562] = L["Oozes"] -- Gas Cloud (Red Ooze)
		grouped_units[37697] = L["Oozes"] -- Volatile Ooze (Green Ooze)
		-- Blood Prince Council: Princes overkilling
		grouped_units[37970] = L["Princes overkilling"] -- Prince Valanar
		grouped_units[37972] = L["Princes overkilling"] -- Prince Keleseth
		grouped_units[37973] = L["Princes overkilling"] -- Prince Taldaram
		-- Lady Deathwhisper: Adds
		grouped_units[37949] = L["Adds"] -- Cult Adherent
		grouped_units[38136] = L["Adds"] -- Empowered Adherent
		grouped_units[38010] = L["Adds"] -- Reanimated Adherent
		grouped_units[37890] = L["Adds"] -- Cult Fanatic
		grouped_units[38135] = L["Adds"] -- Deformed Fanatic
		grouped_units[38009] = L["Adds"] -- Reanimated Fanatic
		grouped_units[38472] = L["Adds"] -- Darnavan
		-- Halion: Halion and Inferno
		grouped_units[39863] = L["Halion and Inferno"] -- Halion
		grouped_units[40681] = L["Halion and Inferno"] -- Living Inferno
		-- Anub'arak: Adds
		grouped_units[34605] = L["Adds"] -- Swarm Scarab
		grouped_units[34607] = L["Adds"] -- Nerubian Burrower

		-- ------------ --
		-- custom units --
		-- ------------ --

		-- Icecrown Citadel
		custom_units[36855] = { -- Lady Deathwhisper
			{text = L["%s - Phase 1"], start = 1, power = 0},
			{text = L["%s - Phase 2"], start = 0, power = 0}
		}
		custom_units[36678] = {text = L["%s - Phase 3"], start = 0.35} -- Professor Putricide
		custom_units[36853] = {text = L["%s - Phase 2"], start = 0.35} -- Sindragosa
		custom_units[36597] = {text = L["%s - Phase 3"], start = 0.4, stop = 0.1} -- The Lich King
		custom_units[36609] = {name = L["Valkyrs overkilling"], start = 0.5, useful = true, diff = {["10h"] = true, ["25h"] = true}} -- Valkyrs overkilling

		-- Trial of the Crusader
		custom_units[34564] = {text = L["%s - Phase 2"], start = 0.3} -- Anub'arak

		-- The Ruby Sanctum
		custom_units[39751] = {text = L["%s (Main Boss)"]} -- Baltharus the Warborn
	end

	------------------------------------------------------

	ns.grouped_units = grouped_units
	ns.custom_units = custom_units
end

-------------------------------------------------------------------------------
-- DO NOT EDIT THE CODE BELOW (unless you know what you're doing)
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- creature_to_fight
-- a table of creatures IDs used to fix segments names.

ns.creature_to_fight = {
	-- [[ Icecrown Citadel ]] --
	[36960] = L["Icecrown Gunship Battle"], -- Kor'kron Sergeant
	[36968] = L["Icecrown Gunship Battle"], -- Kor'kron Axethrower
	[36982] = L["Icecrown Gunship Battle"], -- Kor'kron Rocketeer
	[37117] = L["Icecrown Gunship Battle"], -- Kor'kron Battle-Mage
	[37215] = L["Icecrown Gunship Battle"], -- Orgrim's Hammer
	[36961] = L["Icecrown Gunship Battle"], -- Skybreaker Sergeant
	[36969] = L["Icecrown Gunship Battle"], -- Skybreaker Rifleman
	[36978] = L["Icecrown Gunship Battle"], -- Skybreaker Mortar Soldier
	[37116] = L["Icecrown Gunship Battle"], -- Skybreaker Sorcerer
	[37540] = L["Icecrown Gunship Battle"], -- The Skybreaker
	[37970] = L["Blood Prince Council"], -- Prince Valanar
	[37972] = L["Blood Prince Council"], -- Prince Keleseth
	[37973] = L["Blood Prince Council"], -- Prince Taldaram
	[36789] = L["Valithria Dreamwalker"], -- Valithria Dreamwalker
	[36791] = L["Valithria Dreamwalker"], -- Blazing Skeleton
	[37868] = L["Valithria Dreamwalker"], -- Risen Archmage
	[37886] = L["Valithria Dreamwalker"], -- Gluttonous Abomination
	[37934] = L["Valithria Dreamwalker"], -- Blistering Zombie
	[37985] = L["Valithria Dreamwalker"], -- Dream Cloud

	-- [[ Naxxramas ]] --
	[16062] = L["The Four Horsemen"], -- Highlord Mograine
	[16063] = L["The Four Horsemen"], -- Sir Zeliek
	[16064] = L["The Four Horsemen"], -- Thane Korth'azz
	[16065] = L["The Four Horsemen"], -- Lady Blaumeux
	[15930] = L["Thaddius"], -- Feugen
	[15929] = L["Thaddius"], -- Stalagg
	[15928] = L["Thaddius"], -- Thaddius

	-- [[ Trial of the Crusader ]] --
	[34796] = L["The Northrend Beasts"], -- Gormok
	[35144] = L["The Northrend Beasts"], -- Acidmaw
	[34799] = L["The Northrend Beasts"], -- Dreadscale
	[34797] = L["The Northrend Beasts"], -- Icehowl

	-- Champions of the Alliance
	[34461] = L["Faction Champions"], -- Tyrius Duskblade <Death Knight>
	[34460] = L["Faction Champions"], -- Kavina Grovesong <Druid>
	[34469] = L["Faction Champions"], -- Melador Valestrider <Druid>
	[34467] = L["Faction Champions"], -- Alyssia Moonstalker <Hunter>
	[34468] = L["Faction Champions"], -- Noozle Whizzlestick <Mage>
	[34465] = L["Faction Champions"], -- Velanaa <Paladin>
	[34471] = L["Faction Champions"], -- Baelnor Lightbearer <Paladin>
	[34466] = L["Faction Champions"], -- Anthar Forgemender <Priest>
	[34473] = L["Faction Champions"], -- Brienna Nightfell <Priest>
	[34472] = L["Faction Champions"], -- Irieth Shadowstep <Rogue>
	[34463] = L["Faction Champions"], -- Shaabad <Shaman>
	[34470] = L["Faction Champions"], -- Saamul <Shaman>
	[34474] = L["Faction Champions"], -- Serissa Grimdabbler <Warlock>
	[34475] = L["Faction Champions"], -- Shocuul <Warrior>
	[35465] = L["Faction Champions"], -- Zhaagrym <Harkzog's Minion / Serissa Grimdabbler's Minion>

	-- Champions of the Horde
	[34441] = L["Faction Champions"], -- Vivienne Blackwhisper <Priest>
	[34444] = L["Faction Champions"], -- Thrakgar <Shaman>
	[34445] = L["Faction Champions"], -- Liandra Suncaller <Paladin>
	[34447] = L["Faction Champions"], -- Caiphus the Stern <Priest>
	[34448] = L["Faction Champions"], -- Ruj'kah <Hunter>
	[34449] = L["Faction Champions"], -- Ginselle Blightslinger <Mage>
	[34450] = L["Faction Champions"], -- Harkzog <Warlock>
	[34451] = L["Faction Champions"], -- Birana Stormhoof <Druid>
	[34453] = L["Faction Champions"], -- Narrhok Steelbreaker <Warrior>
	[34454] = L["Faction Champions"], -- Maz'dinah <Rogue>
	[34455] = L["Faction Champions"], -- Broln Stouthorn <Shaman>
	[34456] = L["Faction Champions"], -- Malithas Brightblade <Paladin>
	[34458] = L["Faction Champions"], -- Gorgrim Shadowcleave <Death Knight>
	[34459] = L["Faction Champions"], -- Erin Misthoof <Druid>
	[35610] = L["Faction Champions"], -- Cat <Ruj'kah's Pet / Alyssia Moonstalker's Pet>

	[34496] = L["Twin Val'kyr"], -- Eydis Darkbane
	[34497] = L["Twin Val'kyr"], -- Fjola Lightbane

	-- [[ Ulduar ]] --
	[32857] = L["The Iron Council"], -- Stormcaller Brundir
	[32867] = L["The Iron Council"], -- Steelbreaker
	[32927] = L["The Iron Council"], -- Runemaster Molgeim
	[32930] = L["Kologarn"], -- Kologarn
	[32933] = L["Kologarn"], -- Left Arm
	[32934] = L["Kologarn"], -- Right Arm
	[33515] = L["Auriaya"], -- Auriaya
	[34014] = L["Auriaya"], -- Sanctum Sentry
	[34035] = L["Auriaya"], -- Feral Defender
	[32882] = L["Thorim"], -- Jormungar Behemoth
	[33288] = L["Yogg-Saron"], -- Yogg-Saron
	[33890] = L["Yogg-Saron"], -- Brain of Yogg-Saron
	[33136] = L["Yogg-Saron"], -- Guardian of Yogg-Saron
	[33350] = L["Mimiron"], -- Mimiron
	[33432] = L["Mimiron"], -- Leviathan Mk II
	[33651] = L["Mimiron"], -- VX-001
	[33670] = L["Mimiron"], -- Aerial Command Unit
}

-------------------------------------------------------------------------------
-- creature_to_boss
-- a table of adds used to deternmine the main boss in encounters.

ns.creature_to_boss = {
	-- [[ Icecrown Citadel ]] --
	[36960] = 37215, -- Kor'kron Sergeant > Orgrim's Hammer
	[36968] = 37215, -- Kor'kron Axethrower > Orgrim's Hammer
	[36982] = 37215, -- Kor'kron Rocketeer > Orgrim's Hammer
	[37117] = 37215, -- Kor'kron Battle-Mage > Orgrim's Hammer
	[36961] = 37540, -- Skybreaker Sergeant > The Skybreaker
	[36969] = 37540, -- Skybreaker Rifleman > The Skybreaker
	[36978] = 37540, -- Skybreaker Mortar Soldier > The Skybreaker
	[37116] = 37540, -- Skybreaker Sorcerer > The Skybreaker
	[36791] = 36789, -- Blazing Skeleton > Valithria Dreamwalker
	[37868] = 36789, -- Risen Archmage > Valithria Dreamwalker
	[37886] = 36789, -- Gluttonous Abomination > Valithria Dreamwalker
	[37934] = 36789, -- Blistering Zombie > Valithria Dreamwalker
	[37985] = 36789, -- Dream Cloud > Valithria Dreamwalker

	-- [[ Naxxramas ]] --
	[15930] = 15928, -- Feugen > Thaddius
	[15929] = 15928, -- Stalagg > Thaddius

	-- [[ Trial of the Crusader ]] --
	[34796] = 34797, -- Gormok > Icehowl
	[35144] = 34797, -- Acidmaw > Icehowl
	[34799] = 34797, -- Dreadscale > Icehowl

	-- [[ Ulduar ]] --
	[32933] = 32930, -- Left Arm > Kologarn
	[32934] = 32930, -- Right Arm > Kologarn
	[34014] = 33515, -- Sanctum Sentry > Auriaya
	[34035] = 33515, -- Feral Defender > Auriaya
	[32882] = 32865, -- Jormungar Behemoth > Thorim
	[33890] = 33288, -- Brain of Yogg-Saron > Yogg-Saron
	[33136] = 33288, -- Guardian of Yogg-Saron > Yogg-Saron
	[33432] = 33350, -- Leviathan Mk II > Mimiron
	[33651] = 33350, -- VX-001 > Mimiron
	[33670] = 33350, -- Aerial Command Unit > Mimiron
}

-- use LibBossIDs-1.0 as backup plan
local LBI = LibStub("LibBossIDs-1.0")
setmetatable(ns.creature_to_boss, {__index = LBI.BossIDs})
ns.BossIDs = LBI.BossIDs -- needed for some CLEU stuff.

-------------------------------------------------------------------------------

-- ignored spells table
local dummyTable = ns.dummyTable
ns.ignored_spells = setmetatable(ignored_spells, {__index = function(t, key)
	return dummyTable
end})

-- ignored creatures table
ns.ignored_creatures = ignored_creatures

-- miss type to table key
ns.missTypes = {
	ABSORB = "abs_n",
	BLOCK = "blo_n",
	DEFLECT = "def_n",
	DODGE = "dod_n",
	EVADE = "eva_n",
	IMMUNE = "imm_n",
	MISS = "mis_n",
	PARRY = "par_n",
	REFLECT = "ref_n",
	RESIST = "res_n",
}

-- list of combat events that we don't care about
ns.ignored_events = {
	ENCHANT_APPLIED = true,
	ENCHANT_REMOVED = true,
	PARTY_KILL = true,
	SPELL_AURA_REMOVED_DOSE = true,
	SPELL_CAST_FAILED = true,
	SPELL_CAST_START = true,
	SPELL_CAST_SUCCESS = true,
	SPELL_CREATE = true,
	SPELL_DISPEL_FAILED = true,
	SPELL_DRAIN = true,
	SPELL_DURABILITY_DAMAGE = true,
	SPELL_DURABILITY_DAMAGE_ALL = true,
	SPELL_PERIODIC_DRAIN = true
}

-- events used to start combat in aggressive combat detection
-- mode as well as boss encounter detection.
ns.trigger_events = {
	SWING_DAMAGE = true,
	SPELL_DAMAGE = true,
	RANGE_DAMAGE = true,
    DAMAGE_SHIELD = true,
	SPELL_BUILDING_DAMAGE = true
}

-- local segment types used for set tooltips.
ns.segment_types = {
	arena = L["Arena"],
	group = L["Group"],
	none = L["None"],
	party = L["Dungeon"],
	pvp = L["Battleground"],
	raid = L["Raid"]
}
