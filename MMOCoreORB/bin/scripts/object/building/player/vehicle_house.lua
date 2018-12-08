object_building_player_vehicle_house = object_building_player_shared_vehicle_house:new {
	lotSize = 5,
	baseMaintenanceRate = 50,
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
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -16.2494, z = 0.529974, y = 8.46622, ow = 0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -14.3417, z = 5.52997, y = 15.5785, ow = -1.49012e-07, ox = 0, oz = 0, oy = -1, cellid = -1, containmentType = -1}
	},
	shopSigns = {
		{templateFile = "object/tangible/sign/player/house_address.iff", x = -14.3417, z = 5.52997, y = 15.5785, ow = -1.49012e-07, ox = 0, oz = 0, oy = -1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},	
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -12.6249, z = 0.49, y = 20.2403, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -12.6249, z = 0.49, y = 20.2403, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -12.6249, z = 0.49, y = 20.2403, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -12.6249, z = 0.49, y = 20.2403, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"},	
	}

}

ObjectTemplates:addTemplate(object_building_player_vehicle_house, "object/building/player/vehicle_house.iff")
