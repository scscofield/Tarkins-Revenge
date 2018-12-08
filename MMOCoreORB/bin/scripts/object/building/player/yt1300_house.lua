object_building_player_yt1300_house = object_building_player_shared_yt1300_house:new {
	lotSize = 2,
	baseMaintenanceRate = 34,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	publicStructure = 0,
	length = 1,
	width = 1,
	skillMods = {
		{"private_medical_rating", 300},
		{"private_buff_mind", 300},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1}
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -4.21371, z = 5.2302, y = -1.99222, ox = 0, oy = 1, oz = 0, ow = -1.899e-07, cellid = 5, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -2.65908, z = -0.365625, y = -0.0155522, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -2.65908, z = 5.79344, y = -0.0155522, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1},
		{templateFile = "object/tangible/sign/player/house_address.iff", x = -6.3, z = 1.0, y = 0.9, ox = 0, oy = -0.707107, oz = 0, ow = -0.707107, cellid = -1, containmentType = -1},
	},
	shopSigns = {
		{templateFile = "object/tangible/sign/player/house_address.iff", x = -6.3, z = 1.0, y = 0.9, ox = 0, oy = -0.707107, oz = 0, ow = -0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
           		 {templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -6.0, z = -1, y = 1.45, ox = 0, oy = 0.707107, oz = 0, ow =  0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -6.0, z = -1, y = 1.45, ox = 0, oy = -0.707107, oz = 0, ow = 0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -6.0, z = -1, y = 1.45, ox = 0, oy = -0.707107, oz = 0, ow =  0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -6.0, z = -1, y = 1.47, ox = 0, oy = -0.707107, oz = 0, ow =  0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"},				
	},
}

ObjectTemplates:addTemplate(object_building_player_yt1300_house, "object/building/player/yt1300_house.iff")
