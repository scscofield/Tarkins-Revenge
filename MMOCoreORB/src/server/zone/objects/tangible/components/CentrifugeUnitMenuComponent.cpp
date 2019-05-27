/*
 * CentrifugeUnitMenuComponent.cpp
 * Tarkin's Revenge
 * May 2019
 */

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "CentrifugeUnitMenuComponent.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"

void CentrifugeUnitMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	if (sceneObject == NULL || !sceneObject->isTangibleObject() || player == NULL)
		return;
	
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	if (player->hasSkill("outdoors_bio_engineer_novice")) {
		menuResponse->addRadialMenuItem(115, 3, "Start Centrifuge");
	}
}

int CentrifugeUnitMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!player->isPlayerCreature())
		return 0;	

	if (selectedID == 115) {	

		if (!sceneObject->isASubChildOf(player)) {
			player->sendSystemMessage("Enzyme Centrifuge must be in your inventory to use.");
			return 0;
		}	

		SceneObject* inventory = player->getSlottedObject("inventory");

		if (inventory == NULL)
			return 0;

		if (inventory->isContainerFullRecursive()){
			player->sendSystemMessage("Not enough room in your inventory to process enzymes.");
			return 0;
		}

		//Populate with centrifuge function
	}
	
	return 1;
}
