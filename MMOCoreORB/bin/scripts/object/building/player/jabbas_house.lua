object_building_player_jabbas_house = object_building_player_shared_jabbas_house:new {
	lotSize = 2,
	baseMaintenanceRate = 34,
	allowedZones = {"dantooine", "lok", "tatooine"},
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
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -1.1, z = 1.95, y = -3.61, ox = 0, oy = 0, oz = 0, ow = -1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -0.086052, z = 14.7621, y = 21.2083, ow = 0, ox = 0, oz = 0, oy = -1, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -0.150416, z = 0.40893, y = -0.349841, ow = -4.37114e-08, ox = 0, oz = 0, oy = 1, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = .6825, z = 15.6126, y = -0.462599, ow = .829038, ox = -0.559193, oz = 0, oy = 0, cellid = 1, containmentType = -1}
	},
shopSigns = {
		{templateFile = "object/tangible/sign/player/house_address.iff", x = -1.1, z = 1.95, y = -3.61, ox = 0, oy = 0, oz = 0, ow = -1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
		{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 1.4, z = 0.2, y = -4.91, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
		{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 1.4, z = 0.2, y = -4.91, ox = 0, oy = -1, oz = 0, ow =  0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
		{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 1.4, z = 0.2, y = -4.91, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
		{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 1.4, z = 0.13, y = -4.91, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"}
	}

}
ObjectTemplates:addTemplate(object_building_player_jabbas_house, "object/building/player/jabbas_house.iff")
