object_building_player_atat_house = object_building_player_shared_atat_house:new {
	lotSize = 2,
	baseMaintenanceRate = 16,
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
--			{templateFile = "object/tangible/sign/player/house_address.iff", x = 4.34, z = 3.4, y = 18.40, ox = 0, oy = 0.707107, oz = 0, ow = 0.707107, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -7.63883, z = 15.5055, y = 25.5973, ow = 0.522499, ox = 0, oz = 0, oy = 0.85264, cellid = 2, containmentType = -1},
--			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -2.66109, z = -0.513074, y = 0.0544102, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1},
--			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -2.65908, z = 5.39344, y = -0.0155522, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1},
		{templateFile = "object/tangible/sign/player/house_address_corellia.iff", x = -3.8, z = 3.9, y = 14.4, ox = 0, oy = 0.707107, oz = 0, ow = -0.707107, cellid = -1, containmentType = -1},
	},
	shopSigns = {
		{templateFile = "object/tangible/sign/player/house_address_corellia.iff", x = -3.8, z = 3.9, y = 14.4, ox = 0, oy = 0.707107, oz = 0, ow = -0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
           		 {templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 3, z = .9, y = 13.5, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 3, z = .9, y = 13.5, ox = 0, oy = -0.707107, oz = 0, ow =  0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 3, z = .9, y = 13.5, ox = 0, oy = 0.707107, oz = 0, ow =  0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 3, z = .9, y = 13.5, ox = 0, oy = 0.707107, oz = 0, ow =  0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"},				
	},
}

ObjectTemplates:addTemplate(object_building_player_atat_house, "object/building/player/atat_house.iff")
