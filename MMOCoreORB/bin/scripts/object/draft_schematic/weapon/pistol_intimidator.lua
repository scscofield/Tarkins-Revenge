object_draft_schematic_weapon_pistol_intimidator = object_draft_schematic_weapon_shared_pistol_intimidator:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Intimidator Pistol Schematic",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 32, 
   size = 1, 

   xpType = "crafting_weapons_general", 
   xp = 360, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "scope", "inducer", "intimidator_barrel"},
   ingredientSlotType = {0, 0, 0, 1, 3, 0, 1},
   resourceTypes = {"iron_plumbum", "metal_ferrous", "metal", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_scope_weapon.iff", "copper_diatium", "object/tangible/loot/dungeon/tarkin_custom/shared_pistol_intimidator_barrel.iff"},
   resourceQuantities = {35, 18, 7, 2, 1, 10, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/pistol/pistol_intimidator.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_pistol_intimidator, "object/draft_schematic/weapon/pistol_intimidator.iff")
