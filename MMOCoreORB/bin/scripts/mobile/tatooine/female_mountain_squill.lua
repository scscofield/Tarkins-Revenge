female_mountain_squill = Creature:new {
	objectName = "@mob/creature_names:female_mountain_squill",
	socialGroup = "squill",
	faction = "",
	level = 34,
	chanceHit = 0.4,
	damageMin = 305,
	damageMax = 320,
	baseXp = 3370,
	baseHAM = 8600,
	baseHAMmax = 10500,
	armor = 0,
	resists = {130,145,20,-1,20,20,20,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 45,
	hideType = "hide_leathery",
	hideAmount = 45,
	boneType = "bone_mammal",
	boneAmount = 34,
	milk = 0,
	tamingChance = 0,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/mountain_squill.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(female_mountain_squill, "female_mountain_squill")
