--Star Tours Adventure Service is a custom method of travel to NPC cities, dungeons, caves, POIs, and other interesting destinations.

includeFile("tools/star_tours_table.lua")

star_tours = ScreenPlay:new {
	numberOfActs = 1,
	travelFee = 20000, -- This is the cost of travel using the Star Tours Adventure Service

	droidModel = "object/tangible/travel/ticket_collector/star_tours.iff",
	droids = {
		--Corellia
		{planetName = "corellia", x = -159.377, z = 28.0279, y = -4942.14, ow = 0.998257, oy = 0.0588108, cellID = 0}, --Coronet starport
		{planetName = "corellia", x = 3372.79, z = 308, y = 5623.05, ow = 0.290803, oy = -0.956783, cellID = 0}, --Doaba Guerfel starport
		{planetName = "corellia", x = -3147.2, z = 31, y = 2907.89, ow = -0.0561584, oy = 0.998422, cellID = 0}, --Kor Vella starport
		{planetName = "corellia", x = -4974.41, z = 21, y = -2211.71, ow = 0.346712, oy = -0.937972, cellID = 0},  --Tyrena starport

		--Naboo
		{planetName = "naboo", x = -13.5802, z = 7.9918, y = 14.2038, ow = 0.0270844, oy = 0.999633, cellID = 1692104}, --Theed starport
		{planetName = "naboo", x = 5310.75, z = -192, y = 6674.53, ow = -0.687696, oy = 0.725999, cellID = 0}, --Kaadara starport
		{planetName = "naboo", x = 1339.42, z = 13, y = 2755.31, ow = 0.725999, oy = 0.687696, cellID = 0}, --Keren starport
		{planetName = "naboo", x = 4708.84, z = 4.17, y = -4652, ow = 0.475684, oy = 0.879617, cellID = 0}, --Moenia starport

		--Rori
		{planetName = "rori", x = -5390.72, z = 80, y = -2160.53, ow = 0.5136, oy = 0.85803, cellID = 0}, --Narmle starport
		{planetName = "rori", x = 5351.81, z = 80, y = 5765.4, ow = 0.0270844, oy = 0.999633, cellID = 0}, --Restuss starport

		--Talus
		{planetName = "talus", x = 231.606, z = 6, y = -2943.15, ow = 0.718174, oy = 0.695864, cellID = 0}, --Dearic starport
		{planetName = "talus", x = 4472.12, z = 2, y = 5381.11, ow = -0.146912, oy = 0.98915, cellID = 0}, --Nashal starport

		--Tatooine
		{planetName = "tatooine", x = 1042.07, z = 6.51263, y = 2991.87, ow = 0.654793, oy = 0.75581, cellID = 0}, --Mos Entha
		{planetName = "tatooine", x = -2811.65, z = 5, y = 2082.73, ow = -0.852166, oy = 0.523273, cellID = 0}, --Mos Espa
		{planetName = "tatooine", x = -1390.49, z = 12, y = -3586.34, ow = 0.725999, oy = 0.687696, cellID = 0}, --Bestine
		{planetName = "tatooine", x = 3632.02, z = 5, y = -4788.63, ow = 0.695864, oy = -0.718174, cellID = 0}, --Mos Eisley
	}
}

registerScreenPlay("star_tours", true)

function star_tours:start()
	-- Spawn droids
	for i = 1, #self.droids, 1 do
		local pDroid = spawnSceneObject(self.droids[i].planetName, self.droidModel , self.droids[i].x, self.droids[i].z, self.droids[i].y, self.droids[i].cellID, self.droids[i].ow, 0, self.droids[i].oy, 0)
		if (pDroid ~= nil) then
			-- Add menu
			SceneObject(pDroid):setObjectMenuComponent("StarToursMenuComponent")
		end	
	end
end

function star_tours:openWindow(pPlayer)
	if (pPlayer == nil) then
		return
	end

	self:showCategories(pPlayer)
end

function star_tours:showCategories(pPlayer)

	if CreatureObject(pPlayer):isInCombat() then
		CreatureObject(pPlayer):sendSystemMessage("Travel services are not available while you are in combat.")
		return 0
	end

	local sui = SuiListBox.new("star_tours", "showSubCategories") -- calls showSubCategories on SUI window event

	sui.setTargetNetworkId(SceneObject(pPlayer):getObjectID())

	sui.setTitle("Star Tours Adventure Service")

	local promptText = "Using this droid will allow you to travel to various interesting destinations instantly, for a " .. tostring(self.travelFee) .. " credit fee.  No ticket required!" .. "\n\nPlease note, some of these destinations may be very dangerous, and Star Tours is not liable for any bodily damage incurred as a result of your travels."
	sui.setPrompt(promptText)

	for i = 1, #StarToursTable, 1 do
		sui.add(StarToursTable[i].catName, "")
	end

	sui.sendTo(pPlayer)
end

function star_tours:showSubCategories(pPlayer, pSui, eventIndex, args)
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end


	if (args == "-1") then
		CreatureObject(pPlayer):sendSystemMessage("No category was selected...")
		return
	end

	local selectedIndex = tonumber(args) + 1
	writeScreenPlayData(pPlayer, "star_tours", "categorySelected", selectedIndex) 

	local sui = SuiListBox.new("star_tours", "showDestinations") -- calls showDestinations on SUI window event

	sui.setTargetNetworkId(SceneObject(pPlayer):getObjectID())

	sui.setTitle("Star Tours Adventure Service")

	local promptText = "Using this droid will allow you to travel to various interesting destinations instantly, for a " .. tostring(self.travelFee) .. " credit fee.  No ticket required!" .. "\n\nPlease note, some of these destinations may be very dangerous, and Star Tours is not liable for any bodily damage incurred as a result of your travels."
	sui.setPrompt(promptText)

	for i = 1, #StarToursTable[selectedIndex].subCategory, 2 do
		sui.add(StarToursTable[selectedIndex].subCategory[i], StarToursTable[selectedIndex].subCategory[i+1])
	end

	sui.sendTo(pPlayer)
end

function star_tours:showDestinations(pPlayer, pSui, eventIndex, args)
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end


	if (args == "-1") then
		CreatureObject(pPlayer):sendSystemMessage("No category was selected...")
		return
	end

	local selectedSubCatIndex = tonumber(args) + 1

	local catIndex = tonumber(readScreenPlayData(pPlayer, "star_tours", "categorySelected"))

	local sui = SuiListBox.new("star_tours", "destinationSelection") -- calls destinationSelection on SUI window event

	sui.setTargetNetworkId(SceneObject(pPlayer):getObjectID())

	sui.setTitle("Star Tours Adventure Service")
	sui.setPrompt(StarToursTable[catIndex].catName .. "\n\n Press Cancel to return to the main menu.")

	local n = selectedSubCatIndex
	repeat 
		if (StarToursDestinationTable[n].subCatName ~= StarToursTable[catIndex].subCategory[selectedSubCatIndex*2]) then
		n = n +1;
		end
	until StarToursDestinationTable[n].subCatName == StarToursTable[catIndex].subCategory[selectedSubCatIndex*2]
	
	selectedSubCatIndex = n
	writeScreenPlayData(pPlayer, "star_tours", "subCategorySelected", selectedSubCatIndex) 

	for i = 1, #StarToursDestinationTable[selectedSubCatIndex].destinations, 6 do
		sui.add(StarToursDestinationTable[selectedSubCatIndex].destinations[i], StarToursDestinationTable[selectedSubCatIndex].destinations[i+1])
	end

	sui.sendTo(pPlayer)
end

function star_tours:destinationSelection(pPlayer, pSui, eventIndex, args)

	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return self:showCategories(pPlayer)
	end

	if (args == "-1") then
		CreatureObject(pPlayer):sendSystemMessage("No destination was selected...")
		return
	end

	local selectedDestinationIndex = tonumber(args) + 1
	local subCatIndex = tonumber(readScreenPlayData(pPlayer, "star_tours", "subCategorySelected"))

	local price = self.travelFee
	--First, determine whether player has enough money for the trip

	local cashCredits = CreatureObject(pPlayer):getCashCredits()
	local bankCredits = CreatureObject(pPlayer):getBankCredits()
	local playerCredits = cashCredits + bankCredits

	if playerCredits < price then
		CreatureObject(pPlayer):sendSystemMessage("Insufficient Funds: You require at least " .. tostring(price) .. " total credits in your bank or cash to travel to your destination.")
			return
	end

	--Use cash first
	if (price <= cashCredits) then
			CreatureObject(pPlayer):subtractCashCredits(price)

	--Pay remainder from bank
	else
		price = price - cashCredits
		CreatureObject(pPlayer):subtractCashCredits(cashCredits)
		CreatureObject(pPlayer):setBankCredits(bankCredits - price)
	end
	
	--Second, travel to selected destination
		SceneObject(pPlayer):switchZone(StarToursDestinationTable[subCatIndex].destinations[((selectedDestinationIndex*6)-4)], StarToursDestinationTable[subCatIndex].destinations[((selectedDestinationIndex*6)-3)], StarToursDestinationTable[subCatIndex].destinations[((selectedDestinationIndex*6)-2)], StarToursDestinationTable[subCatIndex].destinations[((selectedDestinationIndex*6)-1)], StarToursDestinationTable[subCatIndex].destinations[(selectedDestinationIndex*6)])
	
	-- Third, send system message to player to announce that they have paid
	createEvent(2*1000, "star_tours", "announcePayment", pPlayer, "")

end

function star_tours:announcePayment(pPlayer)
		CreatureObject(pPlayer):sendSystemMessage("You have paid the " .. tostring(self.travelFee) .. " credit travel fee.")

end

-- Radial Menu Functions
StarToursMenuComponent = { }

function StarToursMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)
	menuResponse:addRadialMenuItem(20, 3, "Travel")
	menuResponse:addRadialMenuItem(120, 3, "About Star Tours")
end

function StarToursMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end
	
	if CreatureObject(pPlayer):isInCombat() then
		CreatureObject(pPlayer):sendSystemMessage("Travel services are not available while you are in combat.")
		return 0
	end
	
	if (selectedID == 20) then
		star_tours:openWindow(pPlayer, pObject)
	elseif (selectedID == 120) then
		local suiManager = LuaSuiManager()
		local helpMessage = "This droid will assist you in travel, for a fee, to many varied destinations around the galaxy.  Just select your destination from the menu, pay your fee, and off you go!"

		suiManager:sendMessageBox(pObject, pPlayer, "About Star Tours", helpMessage, "@ok", "StarToursMenuComponent", "noCallback")
	end 
	
	return 0
end

function StarToursMenuComponent:noCallback(pPlayer, pSui, eventIndex)
	-- do nothing
end
