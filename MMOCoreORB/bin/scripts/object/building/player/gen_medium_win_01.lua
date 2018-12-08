object_building_player_generic_medium_window_s01 = object_building_player_shared_generic_medium_window_s01:new {
	lotSize = 2,
	baseMaintenanceRate = 34,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 1,
	publicStructure = 0,
skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1}
	},
	childObjects = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 5.13, z = 2.25, y = 7.91, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 5.13192, z = 0.624998, y = 6.375, ow = -1.78814e-07, ox = 0, oz = 0, oy = -1, cellid = 1, containmentType = -1}
--			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -2.66109, z = -0.513074, y = 0.0544102, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1},
--			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -2.65908, z = 5.39344, y = -0.0155522, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1}
	},
shopSigns = {
		{templateFile = "object/tangible/sign/player/house_address.iff", x = 5.13, z = 2.25, y = 7.91, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
		{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 11.79, z = 0.5, y = 11.64, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
		{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 11.79, z = 0.5, y = 11.64, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
		{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 11.79, z = 0.5, y = 11.64, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
		{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 11.79, z = 0.5, y = 11.64, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"}
	}
}

ObjectTemplates:addTemplate(object_building_player_generic_medium_window_s01, "object/building/player/generic_medium_window_s01.iff")
