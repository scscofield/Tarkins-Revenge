dwarf_gronda = Creature:new {
	objectName = "@mob/creature_names:dwarf_gronda",
	socialGroup = "gronda",
	faction = "",
	level = 13,
	chanceHit = 0.29,
	damageMin = 130,
	damageMax = 140,
	baseXp = 514,
	baseHAM = 1200,
	baseHAMmax = 1400,
	armor = 0,
	resists = {120,120,0,0,0,0,0,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 450,
	hideType = "hide_leathery",
	hideAmount = 400,
	boneType = "bone_mammal",
	boneAmount = 390,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/dwarf_gronda.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 0.8,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(dwarf_gronda, "dwarf_gronda")
