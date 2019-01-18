--Copyright (C) 2007 <SWGEmu>

--This File is part of Core3.

--This program is free software; you can redistribute
--it and/or modify it under the terms of the GNU Lesser
--General Public License as published by the Free Software
--Foundation; either version 2 of the License,
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules
--is making a combined work based on Engine3.
--Thus, the terms and conditions of the GNU Lesser General Public License
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3
--give you permission to combine Engine3 program with free software
--programs or libraries that are released under the GNU LGPL and with
--code included in the standard release of Core3 under the GNU LGPL
--license (or modified versions of such code, with unchanged license).
--You may copy and distribute such a system following the terms of the
--GNU LGPL for Engine3 and the licenses of the other code concerned,
--provided that you include the source code of that other code when
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated
--to grant this special exception for their modified versions;
--it is their choice whether to do so. The GNU Lesser General Public License
--gives permission to release a modified version without this exception;
--this exception also makes it possible to release a modified version
--which carries forward this exception.

-----------------------------------
--GENERAL PLAYER SETTINGS
-----------------------------------

onlineCharactersPerAccount = 3 --How many characters are allowed online from a single account.
allowSameAccountPvpRatingCredit = 0

--Blue frog / GM buff values
performanceBuff = 600
medicalBuff = 600
performanceDuration = 7200 -- in seconds
medicalDuration = 7200 -- in seconds

--Sets the experience multiplier while grouped
groupExpMultiplier = 1.0

--Sets a global experience multiplier
globalExpMultiplier = 2.0

--Sets the base number of control devices of each type that a player can have in their datapad at once
--For creature pets, A Creature Handler will have the base number + their stored pets skill mod as limit
baseStoredCreaturePets = 5
baseStoredFactionPets = 3
baseStoredDroids = 5
baseStoredVehicles = 6
baseStoredShips = 3

-----------------------------------
--VETERAN REWARDS CONFIG
-----------------------------------
veteranRewardMilestones = {90, 180, 270, 360, 450, 540, 630, 720, 810, 900, 990, 1080} --days, must be sorted low to high

veteranRewardAdditionalMilestones = 360 --frequency, in days, of additional milestones (beyond the established ones)

veteranRewards = {

		-- 90 Day Rewards
--		{templateFile = "object/tangible/veteran_reward/harvester.iff", milestone=90, oneTime=true, description="@veteran_new:poweredharvester"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s1.iff", milestone=90, oneTime=false, description="@veteran_new:dataterminal1"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s2.iff", milestone=90, oneTime=false, description="@veteran_new:dataterminal2"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s3.iff", milestone=90, oneTime=false, description="@veteran_new:dataterminal3"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s4.iff", milestone=90, oneTime=false, description="@veteran_new:dataterminal4"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_protocol_droid_toy.iff", milestone=90, oneTime=false, description="@veteran_new:mini_protocoldroid"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_r2_toy.iff", milestone=90, oneTime=false, description="@veteran_new:mini_r2"},

		-- 180 Day Rewards
		{templateFile = "object/tangible/veteran_reward/resource.iff", milestone=180, oneTime=false, description="A Crate of Free Resources"},
		{templateFile = "object/tangible/veteran_reward/frn_couch_falcon_corner_s01.iff", milestone=180, oneTime=false, description="@veteran_new:falconcouch"},
		{templateFile = "object/tangible/veteran_reward/frn_couch_falcon_section_s01.iff", milestone=180, oneTime=false, description="@veteran_new:falconchair"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_tie_fighter_toy.iff", milestone=180, oneTime=false, description="@veteran_new:mini_tiefighter"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_x_wing_toy.iff", milestone=180, oneTime=false, description="@veteran_new:mini_xwing"},
		{templateFile = "object/tangible/furniture/all/event_flag_game_imp_banner.iff", milestone=180, oneTime=false, description="Imperial Banner"},
		{templateFile = "object/tangible/furniture/all/event_flag_game_neut_banner.iff", milestone=180, oneTime=false, description="Neutral Banner"},
		{templateFile = "object/tangible/furniture/all/event_flag_game_reb_banner.iff", milestone=180, oneTime=false, description="Rebel Banner"},
		{templateFile = "object/tangible/deed/player_house_deed/atat_house_deed.iff", milestone=180, oneTime=true, description="A Fallen AT-AT"},

		-- 270 Day Rewards
		{templateFile = "object/tangible/deed/vehicle_deed/speederbike_flash_deed.iff", milestone=270, oneTime=true},
		{templateFile = "object/tangible/wearables/goggles/goggles_s01.iff", milestone=270, oneTime=false, description="Special Edition Goggles Style 1"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s02.iff", milestone=270, oneTime=false, description="Special Edition Goggles Style 2"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s03.iff", milestone=270, oneTime=false, description="Special Edition Goggles Style 3"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s04.iff", milestone=270, oneTime=false, description="Special Edition Goggles Style 4"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s05.iff", milestone=270, oneTime=false, description="Special Edition Goggles Style 5"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s06.iff", milestone=270, oneTime=false, description="Special Edition Goggles Style 6"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_darth_vader_toy.iff", milestone=270, oneTime=false, description="@veteran_new:mini_darthvader"},
		{templateFile = "object/tangible/deed/player_house_deed/vehicle_house_deed.iff", milestone=270, oneTime=true, description="Vehicle Barn"},

		-- 360 Day Rewards
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_a.iff", milestone=360, oneTime=false, description="@veteran_new:techconsole_a"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_b.iff", milestone=360, oneTime=false, description="@veteran_new:techconsole_b"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_c.iff", milestone=360, oneTime=false, description="@veteran_new:techconsole_c"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", milestone=360, oneTime=false, description="@veteran_new:techconsole_d"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_jabba_toy.iff", milestone=360, oneTime=false, description="@veteran_new:mini_jabba"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_stormtrooper_toy.iff", milestone=360, oneTime=false, description="@veteran_new:mini_stormtrooper"},
--		{templateFile = "object/tangible/veteran_reward/antidecay.iff", milestone=360, oneTime=true, description="@veteran_new:antidecay"},
		{templateFile = "object/tangible/deed/player_house_deed/vipbunker_house_deed.iff", milestone=360, oneTime=true, description="VIP Bunker"},

		-- 450 Day Rewards
		{templateFile = "object/tangible/camp/camp_spit_s2.iff", milestone=450, oneTime=false, description="Camp Center (Small)"},
		{templateFile = "object/tangible/camp/camp_spit_s3.iff", milestone=450, oneTime=false, description="Camp Center (Large)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_vase_style_01.iff", milestone=450, oneTime=false, description="Gold Ornamental Vase (Style 1)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_vase_style_02.iff", milestone=450, oneTime=false, description="Gold Ornamental Vase (Style 2)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", milestone=450, oneTime=false, description="@frn_n:frn_tato_cafe_parasol"},
		{templateFile = "object/tangible/loot/misc/loot_skull_bith.iff", milestone=450, oneTime=false, description="A Bith Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_human.iff", milestone=450, oneTime=false, description="A Human Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_ithorian.iff", milestone=450, oneTime=false, description="A Ithorian Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_thune.iff", milestone=450, oneTime=false, description="A Thune Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_voritor.iff", milestone=450, oneTime=false, description="A Voritor Lizard Skull"},

		-- 540 Day Rewards
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_01.iff", milestone=540, oneTime=false, description="Painting: Cast Wing in Flight"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_02.iff", milestone=540, oneTime=false, description="Painting: Decimator"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_03.iff", milestone=540, oneTime=false, description="Painting: Tatooine Dune Speeder"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_04.iff", milestone=540, oneTime=false, description="Painting: Weapon of War"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_05.iff", milestone=540, oneTime=false, description="Painting: Fighter Study"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_06.iff", milestone=540, oneTime=false, description="Painting: Hutt Greed"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_07.iff", milestone=540, oneTime=false, description="Painting: Smuggler's Run"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_08.iff", milestone=540, oneTime=false, description="Painting: Imperial Oppression (TIE Oppressor)"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_09.iff", milestone=540, oneTime=false, description="Painting: Emperor's Eyes (TIE Sentinel)"},

		-- 630 Day Rewards
		{templateFile = "object/tangible/veteran_reward/data_terminal_s1.iff", milestone=630, oneTime=false, description="@veteran_new:dataterminal1"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s2.iff", milestone=630, oneTime=false, description="@veteran_new:dataterminal2"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s3.iff", milestone=630, oneTime=false, description="@veteran_new:dataterminal3"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s4.iff", milestone=630, oneTime=false, description="@veteran_new:dataterminal4"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_protocol_droid_toy.iff", milestone=630, oneTime=false, description="@veteran_new:mini_protocoldroid"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_r2_toy.iff", milestone=630, oneTime=false, description="@veteran_new:mini_r2"},

		-- 720 Day Rewards
		{templateFile = "object/tangible/veteran_reward/resource.iff", milestone=720, oneTime=false, description="A Crate of Free Resources"},
		{templateFile = "object/tangible/veteran_reward/frn_couch_falcon_corner_s01.iff", milestone=720, oneTime=false, description="@veteran_new:falconcouch"},
		{templateFile = "object/tangible/veteran_reward/frn_couch_falcon_section_s01.iff", milestone=720, oneTime=false, description="@veteran_new:falconchair"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_tie_fighter_toy.iff", milestone=720, oneTime=false, description="@veteran_new:mini_tiefighter"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_x_wing_toy.iff", milestone=720, oneTime=false, description="@veteran_new:mini_xwing"},
		{templateFile = "object/tangible/furniture/all/event_flag_game_imp_banner.iff", milestone=720, oneTime=false, description="Imperial Banner"},
		{templateFile = "object/tangible/furniture/all/event_flag_game_neut_banner.iff", milestone=720, oneTime=false, description="Neutral Banner"},
		{templateFile = "object/tangible/furniture/all/event_flag_game_reb_banner.iff", milestone=720, oneTime=false, description="Rebel Banner"},
		{templateFile = "object/tangible/deed/player_house_deed/atat_house_deed.iff", milestone=720, oneTime=true, description="A Fallen AT-AT"},

		-- 810 Day Rewards
		{templateFile = "object/tangible/deed/vehicle_deed/speederbike_flash_deed.iff", milestone=810, oneTime=true},
		{templateFile = "object/tangible/wearables/goggles/goggles_s01.iff", milestone=810, oneTime=false, description="Special Edition Goggles Style 1"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s02.iff", milestone=810, oneTime=false, description="Special Edition Goggles Style 2"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s03.iff", milestone=810, oneTime=false, description="Special Edition Goggles Style 3"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s04.iff", milestone=810, oneTime=false, description="Special Edition Goggles Style 4"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s05.iff", milestone=810, oneTime=false, description="Special Edition Goggles Style 5"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s06.iff", milestone=810, oneTime=false, description="Special Edition Goggles Style 6"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_darth_vader_toy.iff", milestone=810, oneTime=false, description="@veteran_new:mini_darthvader"},
		{templateFile = "object/tangible/deed/player_house_deed/vehicle_house_deed.iff", milestone=810, oneTime=true, description="Vehicle Barn"},

		-- 900 Day Rewards
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_a.iff", milestone=900, oneTime=false, description="@veteran_new:techconsole_a"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_b.iff", milestone=900, oneTime=false, description="@veteran_new:techconsole_b"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_c.iff", milestone=900, oneTime=false, description="@veteran_new:techconsole_c"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", milestone=900, oneTime=false, description="@veteran_new:techconsole_d"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_jabba_toy.iff", milestone=900, oneTime=false, description="@veteran_new:mini_jabba"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_stormtrooper_toy.iff", milestone=900, oneTime=false, description="@veteran_new:mini_stormtrooper"},
		{templateFile = "object/tangible/deed/player_house_deed/vipbunker_house_deed.iff", milestone=900, oneTime=true, description="VIP Bunker"},

		-- 990 Day Rewards
		{templateFile = "object/tangible/camp/camp_spit_s2.iff", milestone=990, oneTime=false, description="Camp Center (Small)"},
		{templateFile = "object/tangible/camp/camp_spit_s3.iff", milestone=990, oneTime=false, description="Camp Center (Large)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_vase_style_01.iff", milestone=990, oneTime=false, description="Gold Ornamental Vase (Style 1)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_vase_style_02.iff", milestone=990, oneTime=false, description="Gold Ornamental Vase (Style 2)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", milestone=990, oneTime=false, description="@frn_n:frn_tato_cafe_parasol"},
		{templateFile = "object/tangible/loot/misc/loot_skull_bith.iff", milestone=990, oneTime=false, description="A Bith Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_human.iff", milestone=990, oneTime=false, description="A Human Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_ithorian.iff", milestone=990, oneTime=false, description="A Ithorian Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_thune.iff", milestone=990, oneTime=false, description="A Thune Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_voritor.iff", milestone=990, oneTime=false, description="A Voritor Lizard Skull"},

		-- 1080 Day Rewards
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_01.iff", milestone=1080, oneTime=false, description="Painting: Cast Wing in Flight"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_02.iff", milestone=1080, oneTime=false, description="Painting: Decimator"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_03.iff", milestone=1080, oneTime=false, description="Painting: Tatooine Dune Speeder"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_04.iff", milestone=1080, oneTime=false, description="Painting: Weapon of War"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_05.iff", milestone=1080, oneTime=false, description="Painting: Fighter Study"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_06.iff", milestone=1080, oneTime=false, description="Painting: Hutt Greed"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_07.iff", milestone=1080, oneTime=false, description="Painting: Smuggler's Run"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_08.iff", milestone=1080, oneTime=false, description="Painting: Imperial Oppression (TIE Oppressor)"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_09.iff", milestone=1080, oneTime=false, description="Painting: Emperor's Eyes (TIE Sentinel)"},

}

-- { "stringId", "songFilePath" }
jukeboxSongs = {
	{ "@event_perk_jukebox_songs:emperors_theme", "sound/music_emperor_theme_loop.snd" },
	{ "@event_perk_jukebox_songs:chamber_music", "sound/music_starport_a_loop.snd" },
	{ "@event_perk_jukebox_songs:hard_rock", "sound/music_starport_b_loop.snd" },
	{ "@event_perk_jukebox_songs:theed_palace", "sound/music_theed_palace_loop.snd" },
	{ "@event_perk_jukebox_songs:medley", "sound/music_autorun_loop.snd" },
	{ "@event_perk_jukebox_songs:otoh_gunga", "sound/music_otoh_gunga_loop.snd" },
	{ "@event_perk_jukebox_songs:star_wars_intro", "sound/music_intro_loop.snd" },
	{ "@event_perk_jukebox_songs:celeb_phantom_menace", "sound/music_celebration_a_loop.snd" },
	{ "@event_perk_jukebox_songs:celeb_rotj", "sound/music_celebration_b_loop.snd" },
	{ "@event_perk_jukebox_songs:pod_race", "sound/music_combat_bfield_loop.snd" },
	{ "@event_perk_jukebox_songs:figrin_dan_1", "sound/music_figrin_dan_1_loop.snd" },
	{ "@event_perk_jukebox_songs:figrin_dan_2", "sound/music_figrin_dan_2_loop.snd" },
	{ "@event_perk_jukebox_songs:soothing_corellia", "sound/music_id_tent_corellia_loop.snd" },
	{ "@event_perk_jukebox_songs:soothing_naboo", "sound/music_id_tent_naboo_loop.snd" },
	{ "@event_perk_jukebox_songs:soothing_tatooine", "sound/music_id_tent_tatooine_loop.snd" },
	{ "@event_perk_jukebox_songs:max_rebo_1", "sound/music_max_rebo_1_loop.snd" },
	{ "@event_perk_jukebox_songs:max_rebo_2", "sound/music_max_rebo_2_loop.snd" },
	{ "@event_perk_jukebox_songs:romance_1", "sound/music_romance_a_loop.snd" },
	{ "@event_perk_jukebox_songs:romance_2", "sound/music_romance_b_loop.snd" },
	{ "@event_perk_jukebox_songs:romance_3", "sound/music_romance_c_loop.snd" },
	{ "@event_perk_jukebox_songs:satisfaction_1", "sound/music_satisfaction_a_loop.snd" },
	{ "@event_perk_jukebox_songs:satisfaction_2", "sound/music_satisfaction_b_loop.snd" },
	{ "@event_perk_jukebox_songs:exar_theme", "sound/music_exar_theme_loop.snd" },
	{ "@event_perk_jukebox_songs:exploration", "sound/music_explore_a_loop.snd" },
	{ "@event_perk_jukebox_songs:humor_1", "sound/music_humor_a_loop.snd" },
	{ "@event_perk_jukebox_songs:humor_2", "sound/music_humor_b_loop.snd" },
	{ "@event_perk_jukebox_songs:leia_theme", "sound/music_leia_theme_loop.snd" },
	{ "@event_perk_jukebox_songs:evil_ambiance", "sound/music_underground_loop.snd" },
	{ "@event_perk_jukebox_songs:eerie_ambiance", "sound/music_underwater_loop.snd" },
	{ "@event_perk_jukebox_songs:lok_theme", "sound/music_gloom_a_loop.snd" }
}
