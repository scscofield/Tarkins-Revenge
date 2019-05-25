/*
 				Copyright <SWGEmu>
		See file COPYING for copying conditions. */

#include "server/zone/managers/crafting/CraftingManager.h"
#include "server/zone/managers/crafting/labratories/SharedLabratory.h"
#include "server/zone/managers/crafting/labratories/ResourceLabratory.h"
#include "server/zone/managers/crafting/labratories/GeneticLabratory.h"
#include "server/zone/managers/crafting/labratories/DroidLabratory.h"

void CraftingManagerImplementation::initialize() {
	schematicMap = SchematicMap::instance();
	schematicMap->initialize(zoneServer.get());
	configureLabratories();
}

void CraftingManagerImplementation::stop() {
	schematicMap = NULL;
}

void CraftingManagerImplementation::awardSchematicGroup(PlayerObject* playerObject, Vector<String>& schematicgroups, bool updateClient) {
	schematicMap->addSchematics(playerObject, schematicgroups, updateClient);
}

void CraftingManagerImplementation::removeSchematicGroup(PlayerObject* playerObject, Vector<String>& schematicgroups, bool updateClient) {
	schematicMap->removeSchematics(playerObject, schematicgroups, updateClient);
}

void CraftingManagerImplementation::sendDraftSlotsTo(CreatureObject* player, uint32 schematicID) {
	schematicMap->sendDraftSlotsTo(player, schematicID);
}

void CraftingManagerImplementation::sendResourceWeightsTo(CreatureObject* player, uint32 schematicID) {
	schematicMap->sendResourceWeightsTo(player, schematicID);
}

int CraftingManagerImplementation::calculateAssemblySuccess(CreatureObject* player,	DraftSchematic* draftSchematic, float effectiveness) {
	SharedLabratory* lab = labs.get(draftSchematic->getLabratory());
	return lab->calculateAssemblySuccess(player,draftSchematic,effectiveness);
}


int CraftingManagerImplementation::calculateExperimentationFailureRate(CreatureObject* player,
		ManufactureSchematic* manufactureSchematic, int pointsUsed) {
	SharedLabratory* lab = labs.get(manufactureSchematic->getLabratory());
	// Get the Weighted value of MA
	float ma = lab->getWeightedValue(manufactureSchematic, MA);

	// Get Experimentation skill
	String expSkill = manufactureSchematic->getDraftSchematic()->getExperimentationSkill();
	float expPoints = player->getSkillMod(expSkill) / 10.0f;

	int failure = int((50.0f + (ma - 500.0f) / 40.0f + expPoints - 5.0f * float(pointsUsed)));

	return failure;
}

int CraftingManagerImplementation::getCreationCount(ManufactureSchematic* manufactureSchematic) {
	SharedLabratory* lab = labs.get(manufactureSchematic->getLabratory());
	return lab->getCreationCount(manufactureSchematic);
}

int CraftingManagerImplementation::calculateExperimentationSuccess(CreatureObject* player,
		DraftSchematic* draftSchematic, float effectiveness) {

	float cityBonus = player->getSkillMod("private_spec_experimentation");

	int experimentationSkill = player->getSkillMod(draftSchematic->getExperimentationSkill());
	int forceSkill = player->getSkillMod("force_experimentation");
	experimentationSkill += forceSkill;

	float experimentingPoints = ((float)experimentationSkill) / 10.0f;

	int failMitigate = (player->getSkillMod(draftSchematic->getAssemblySkill()) - 100 + cityBonus) / 7;
	failMitigate += player->getSkillMod("force_failure_reduction");

	if(failMitigate < 0)
		failMitigate = 0;
	if(failMitigate > 5)
		failMitigate = 5;

	// 0.85-1.15
	float toolModifier = 1.0f + (effectiveness / 100.0f);

	//Bespin Port
	float expbonus = 0;
	if (player->hasBuff(BuffCRC::FOOD_EXPERIMENT_BONUS)) {
		Buff* buff = player->getBuff(BuffCRC::FOOD_EXPERIMENT_BONUS);

		if (buff != NULL) {
			expbonus = buff->getSkillModifierValue("experiment_bonus");
			toolModifier *= 1.0f + (expbonus / 100.0f);
		}
	}

	/// Range 0-100
	int luckRoll = System::random(100) + cityBonus;

	if(luckRoll > ((95 - expbonus) - forceSkill))
		return AMAZINGSUCCESS;

	if(luckRoll < (5 - expbonus - failMitigate))
		luckRoll -= System::random(100);

	//if(luckRoll < 5)
	//	return CRITICALFAILURE;

	luckRoll += System::random(player->getSkillMod("luck") + player->getSkillMod("force_luck"));

	///
	int experimentRoll = (toolModifier * (luckRoll + (experimentingPoints * 4)));

	if (experimentRoll > 70)
		return GREATSUCCESS;

	if (experimentRoll > 60)
		return GOODSUCCESS;

	if (experimentRoll > 50)
		return MODERATESUCCESS;

	if (experimentRoll > 40)
		return SUCCESS;

	if (experimentRoll > 30)
		return MARGINALSUCCESS;

	if (experimentRoll > 20)
		return OK;

	return BARELYSUCCESSFUL;
}

String CraftingManagerImplementation::generateSerial() {

	StringBuffer ss;

	char a;

	ss << "(";

	for (int i = 0; i < 8; ++i) {

		a = (System::random(34));
		if (a < 9) {
			a = a + 48;
		} else {
			a -= 9;
			a = a + 97;
		}
		ss << a;
	}

	ss << ")";


	return ss.toString();
}

void CraftingManagerImplementation::experimentRow(ManufactureSchematic* schematic, CraftingValues* craftingValues,
		int rowEffected, int pointsAttempted, float failure, int experimentationResult) {
	int labratory = schematic->getLabratory();
	SharedLabratory* lab = labs.get(labratory);
	lab->experimentRow(craftingValues,rowEffected,pointsAttempted,failure,experimentationResult);
}

void CraftingManagerImplementation::configureLabratories() {
	ResourceLabratory* resLab = new ResourceLabratory();
	resLab->initialize(zoneServer.get());
	
	labs.put(static_cast<int>(DraftSchematicObjectTemplate::RESOURCE_LAB),resLab); //RESOURCE_LAB

	GeneticLabratory* genLab = new GeneticLabratory();
	genLab->initialize(zoneServer.get());
	labs.put(static_cast<int>(DraftSchematicObjectTemplate::GENETIC_LAB), genLab); //GENETIC_LAB

	DroidLabratory* droidLab = new DroidLabratory();
	droidLab->initialize(zoneServer.get());
	labs.put(static_cast<int>(DraftSchematicObjectTemplate::DROID_LAB), droidLab); //DROID_LAB

}
void CraftingManagerImplementation::setInitialCraftingValues(TangibleObject* prototype, ManufactureSchematic* manufactureSchematic, int assemblySuccess) {
	if(manufactureSchematic == NULL || manufactureSchematic->getDraftSchematic() == NULL)
		return;
	int labratory = manufactureSchematic->getLabratory();
	SharedLabratory* lab = labs.get(labratory);
	lab->setInitialCraftingValues(prototype,manufactureSchematic,assemblySuccess);
}

/* Originally from Legend of Hondo.
 * Chance for a reward while experimenting during crafting.
 * Designed as a way for crafters to earn rare loot schematics.
 * How-to: If the average value of 3 resource stat weights is +/-100 of the control stat, you win!
 */ 
 
String CraftingManagerImplementation::epiphany(CreatureObject* player, ManufactureSchematic* manufactureSchematic) {
	Reference<DraftSchematic*> draftSchematic = manufactureSchematic->getDraftSchematic();

	// Currently Bio Engineer is the only profession utilizing epiphany schematics, but leaving open the opportunity to add more
	String groupTable;

	if(draftSchematic->getCustomName().contains("Generic DNA Template"))
		groupTable = "beSchematicGroup";
	else
		groupTable = "";
	
	if(groupTable != "") {
		SharedLabratory* lab = labs.get(manufactureSchematic->getLabratory());
		// Get the resource values
		float cr = lab->getWeightedValue(manufactureSchematic, 1);
		float cd = lab->getWeightedValue(manufactureSchematic, 2);
		float dr = lab->getWeightedValue(manufactureSchematic, 3);
		float hr = lab->getWeightedValue(manufactureSchematic, 4);
		float fl = lab->getWeightedValue(manufactureSchematic, 5);	
		float ma = lab->getWeightedValue(manufactureSchematic, 6);
		float pe = lab->getWeightedValue(manufactureSchematic, 7);
		float oq = lab->getWeightedValue(manufactureSchematic, 8);	
		float sr = lab->getWeightedValue(manufactureSchematic, 9);
		float ut = lab->getWeightedValue(manufactureSchematic, 10);

		int group = 0;

		//1 in 10 chance to have a thought
		if(System::random(9) == 5){
			group = System::random(9) + 1; // Select reward group to try for		
		}

		// Generate thought
		int idea = 0;
		int control  = 0;
		String hint1 = "";
		String hint2 = "";
		
		if (group == 0){
			return "";
		}

		if (group == 1){
			idea = (ma + cd + fl) / 3;
			control = oq;
			hint1 = "OQ";
			hint2 = "MA, CD, and FL";
		} else if (group == 2){
			idea = (cd + sr + ma) / 3;
			control = ut;
			hint1 = "UT";
			hint2 = "CD, SR, and MA";
		} else if (group == 3){
			idea = (ut + oq + ma) / 3;
			control = dr;
			hint1 = "DR";
			hint2 = "UT, OQ, and MA";
		} else if (group == 4){
			idea = (pe + cr + sr) / 3;
			control = oq;
			hint1 = "OQ";
			hint2 = "PE, CR, and SR";
		} else if (group == 5){
			idea = (hr + oq + fl) / 3;
			control = ma;
			hint1 = "MA";
			hint2 = "HR, OQ, and FL";
		} else if (group == 6){
			idea = (sr + cd + pe) / 3;
			control = ut;
			hint1 = "UT";
			hint2 = "SR, CD, and PE";
		} else if (group == 7){
			idea = (hr + dr + cr) / 3;
			control = sr;
			hint1 = "SR";
			hint2 = "HR, DR, and CR";
		} else if (group == 8){
			idea = (sr + ma + cd) / 3;
			control = dr;
			hint1 = "DR";
			hint2 = "SR, MA, and CD";
		} else if (group == 9){
			idea = (fl + oq + hr) / 3;
			control = cr;
			hint1 = "CR";
			hint2 = "FL, OQ, and HR";
		} else if (group == 10){
			idea = (sr + cd + pe) / 3;
			control = fl;
			hint1 = "FL";
			hint2 = "SR, CD, and PE";
		}

		int thought = abs(idea - control);

		if(control < 300) // Must be using at least better than recycled
			return "";
		
		// Was it a good thought?
		if (thought > 100){
			// No joy, but provide hints if they were close		
			if (thought < 150){
				StringBuffer msg;
				msg << "You feel like you were on to something... " << hint1 << " seemed really important there.";

				if (thought < 120){
					msg << " Maybe tweaking the " << hint2 << " a bit will help next time...";
				}
				player->sendSystemMessage(msg.toString()); 
			}
			return "";
		}
		
		if (group > 0) { 

			Lua* lua = new Lua();
			lua->init();

			lua->runFile("scripts/screenplays/tools/epiphany_schematic_table.lua");

			String schematic = "";

			LuaObject schematicTable = lua->getGlobalObject(groupTable);

			if (schematicTable.isValidTable() && schematicTable.getTableSize() > 0) {
				int randomNum = System::random(schematicTable.getTableSize()) + 1;
				schematic = schematicTable.getStringAt(randomNum); // Choose a random schematic from that group as the reward
			}
	
			delete lua;
			return schematic;
		}
		return "";		
	}
	return "";
}
