-- GNU AFFERO GENERAL PUBLIC LICENSE Version 3, 19 November 2007

object_building_player_player_npc_cantina_tatooine = object_building_player_shared_player_npc_cantina_tatooine:new {
	lotSize = 8,
	baseMaintenanceRate = 90,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 5},
		{"private_safe_logout", 1}
	},
	childObjects = {
		{templateFile = "object/static/structure/tatooine/streetsign_upright_style_01.iff", x = 47.44, z = 0, y = -8.46, ox = 0, oy = 0.933966, oz = 0, ow = -0.357362, cellid = -1, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -17.11, z = -0.894, y = 16.13, ox = 0, oy = 1, oz = 0, ow = 0, cellid = 12, containmentType = -1},
	},
	shopSigns = {
		{templateFile = "object/static/structure/tatooine/streetsign_upright_style_01.iff", x = 47.44, z = 0, y = -8.46, ox = 0, oy = 0.933966, oz = 0, ow = -0.357362, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
		{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 47.44, z = 0, y = -8.46, ox = 0, oy = 0.933966, oz = 0, ow = -0.357362, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
		{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 47.44, z = 0, y = -8.46, ox = 0, oy = 0.933966, oz = 0, ow = -0.357362, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
		{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 47.44, z = 0, y = -8.46, ox = 0, oy = 0.933966, oz = 0, ow = -0.357362, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
		{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 47.44, z = 0, y = -8.46, ox = 0, oy = 0.933966, oz = 0, ow = -0.357362, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"},
	},
	constructionMarker = "object/building/player/construction/construction_player_house_tatooine_medium_style_01.iff",
	structureFootprintFileName = "footprint/building/player/shared_player_house_generic_medium_style_01.sfp",
	length = 3,
	width = 4
}

ObjectTemplates:addTemplate(object_building_player_player_npc_cantina_tatooine, "object/building/player/player_npc_cantina_tatooine.iff")
