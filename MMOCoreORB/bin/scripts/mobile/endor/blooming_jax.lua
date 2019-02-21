blooming_jax = Creature:new {
	objectName = "@mob/creature_names:blooming_jax",
	socialGroup = "jax",
	faction = "",
	level = 27,
	chanceHit = 0.36,
	damageMin = 240,
	damageMax = 250,
	baseXp = 2730,
	baseHAM = 7200,
	baseHAMmax = 8800,
	armor = 0,
	resists = {135,135,150,-1,-1,-1,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 25,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 25,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/blooming_jax.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 48, 49, 50, 51, 56, 57, 58, 59, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 94, 95, 96, 97, 98, 99 },
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(blooming_jax, "blooming_jax")
