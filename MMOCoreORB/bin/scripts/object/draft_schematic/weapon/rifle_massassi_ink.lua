object_draft_schematic_weapon_rifle_massassi_ink = object_draft_schematic_weapon_shared_rifle_massassi_ink:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Massassi Ink Rifle",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 17, 
   size = 2, 

   xpType = "crafting_weapons_general", 
   xp = 230, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n"},
   ingredientTitleNames = {"stock", "receiver_assembly", "grip_assembly", "powerhandler", "massassi_rifle_barrel"},
   ingredientSlotType = {0, 0, 0, 1, 1},
   resourceTypes = {"copper_mythra", "iron_doonium", "metal", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/loot/dungeon/tarkin_custom/shared_rifle_massassi_barrel.iff"},
   resourceQuantities = {60, 35, 10, 5, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/rifle/rifle_massassi_ink.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_rifle_massassi_ink, "object/draft_schematic/weapon/rifle_massassi_ink.iff")
