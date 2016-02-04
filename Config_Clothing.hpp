/*
	ARRAY FORMAT:
		0: STRING (Classname)
		1: STRING (Display Name, leave as "" for default)
		2: SCALAR (Price)
		4: ARRAY (This is for limiting items to certain things)
			0: Variable to read from
			1: Variable Value Type
			2: What to compare to
*/
class Clothing {
	class bruce {
		title = "STR_Shops_C_Bruce";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_C_Poloshirt_blue", "Poloshirt Blue", 5, { "", "", -1 } },
			{ "U_C_Poloshirt_burgundy", "Poloshirt Burgundy", 5, { "", "", -1 } },
			{ "U_C_Poloshirt_redwhite", "Poloshirt Red/White", 5, { "", "", -1 } },
			{ "U_C_Poloshirt_salmon", "Poloshirt Salmon", 5, { "", "", -1 } },
			{ "U_C_Poloshirt_stripped", "Poloshirt stripped", 5, { "", "", -1 } },
			{ "U_Competitor", "Competitor Suit", 5, { "", "", -1 } },
			{ "U_C_Poor_2", "Rag tagged clothes", 5, { "", "", -1 } },
			{ "U_IG_Guerilla2_2", "Green stripped shirt & Pants", 5, { "", "", -1 } },
			{ "U_IG_Guerilla3_1", "Brown Jacket & Pants", 15, { "", "", -1 } },
			{ "U_IG_Guerilla2_3", "The Outback Rangler", 20, { "", "", -1 } },
			{ "U_C_HunterBody_grn", "The Hunters Look", 20, { "", "", -1 } },
			{ "U_C_WorkerCoveralls", "Mechanic Coveralls", 25, { "", "", -1 } },
			{ "U_OrestesBody", "Surfing On Land", 30, { "", "", -1 } },
			{ "U_IG_Guerilla2_1", "Guerilla Outfit (Plain, Dark)", 30, { "", "", -1 } },
			{ "U_I_CombatUniform", "Mafia suit", 100, { "life_donator", "SCALAR", 2 } },
			{ "U_B_Protagonist_VR", "VR Suit Blue", 100, { "life_donator", "SCALAR", 3 } },
			{ "U_O_Protagonist_VR", "VR Suit Red", 100, { "life_donator", "SCALAR", 3 } },
			{ "U_I_Protagonist_VR", "VR Suit Green", 100, { "life_donator", "SCALAR", 1 } },
			{ "U_C_Scientist", "Scientist Clothes", 30, { "", "", -1 } },
			{ "U_C_Journalist", "Journalist Clothes", 30, { "", "", -1 } },
			{ "U_NikosAgedBody", "Casual Wears", 55, { "", "", -1 } },
			{ "U_Marshal", "", 55, { "", "", -1 } },
			{ "U_NikosBody", "", 55, { "", "", -1 } },
			{ "U_C_Poor_1", "", 55, { "", "", -1 } },
			{ "U_C_Driver_1_black", "", 50, { "", "", -1 } },
			{ "U_C_Driver_1_blue", "", 50, { "", "", -1 } },
			{ "U_C_Driver_1_red", "", 50, { "", "", -1 } },
			{ "U_C_Driver_1_orange", "", 50, { "", "", -1 } },
			{ "U_C_Driver_1_green", "", 50, { "", "", -1 } },
			{ "U_C_Driver_1_white", "", 50, { "", "", -1 } },
			{ "U_C_Driver_1_yellow", "", 50, { "", "", -1 } },
			{ "U_C_Driver_2", "", 50, { "", "", -1 } },
			{ "U_C_Driver_1", "", 50, { "", "", -1 } },
			{ "U_C_Driver_3", "", 50, { "", "", -1 } },
			{ "U_C_Driver_4", "", 50, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_Bandanna_camo", "Camo Bandanna", 5, { "", "", -1 } },
			{ "H_Bandanna_surfer", "Surfer Bandanna", 5, { "", "", -1 } },
			{ "H_Bandanna_gry", "Grey Bandanna", 5, { "", "", -1 } },
			{ "H_Bandanna_cbr", "", 5, { "", "", -1 } },
			{ "H_Bandanna_surfer", "", 5, { "", "", -1 } },
			{ "H_Bandanna_khk", "Khaki Bandanna", 5, { "", "", -1 } },
			{ "H_Bandanna_sgg", "Sage Bandanna", 5, { "", "", -1 } },
			{ "H_StrawHat", "Straw Fedora", 5, { "", "", -1 } },
			{ "H_BandMask_blk", "Hat & Bandanna", 5, { "", "", -1 } },
			{ "H_Booniehat_tan", "", 5, { "", "", -1 } },
			{ "H_Hat_blue", "", 5, { "", "", -1 } },
			{ "H_Hat_brown", "", 5, { "", "", -1 } },
			{ "H_Hat_checker", "", 10, { "", "", -1 } },
			{ "H_Hat_grey", "", 10, { "", "", -1 } },
			{ "H_Hat_tan", "", 10, { "", "", -1 } },
			{ "H_Cap_blu", "", 10, { "", "", -1 } },
			{ "H_Cap_grn", "", 10, { "", "", -1 } },
			{ "H_Cap_grn_BI", "", 10, { "", "", -1 } },
			{ "H_Cap_oli", "", 10, { "", "", -1 } },
			{ "H_Cap_red", "", 10, { "", "", -1 } },
			{ "H_Cap_tan", "", 10, { "", "", -1 } },
			{ "H_Cap_usblack", "", 10, { "", "", -1 } },
			{ "H_Cap_surfer", "", 10, { "", "", -1 } },
			{ "H_RacingHelmet_1_black_F", "", 100, { "", "", -1 } },
			{ "H_RacingHelmet_1_red_F", "", 100, { "", "", -1 } },
			{ "H_RacingHelmet_1_white_F", "", 100, { "", "", -1 } },
			{ "H_RacingHelmet_1_blue_F", "", 100, { "", "", -1 } },
			{ "H_RacingHelmet_1_yellow_F", "", 100, { "", "", -1 } },
			{ "H_RacingHelmet_1_green_F", "", 100, { "", "", -1 } },
			{ "H_RacingHelmet_1_F", "", 100, { "", "", -1 } },
			{ "H_RacingHelmet_2_F", "", 100, { "", "", -1 } },
			{ "H_RacingHelmet_3_F", "", 100, { "", "", -1 } },
			{ "H_RacingHelmet_4_F", "", 100, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 5, { "", "", -1 } },
			{ "G_Shades_Blue", "", 5, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 5, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 5, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 5, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 10, { "", "", -1 } },
			{ "G_Squares", "", 15, { "", "", -1 } },
			{ "G_Aviator", "", 35, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 20, { "", "", -1 } },
			{ "G_Lady_Dark", "", 20, { "", "", -1 } },
			{ "G_Lady_Blue", "", 20, { "", "", -1 } },
			{ "G_Lowprofile", "", 30, { "", "", -1 } },
			{ "G_Combat", "", 55, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_Rangemaster_belt", "", 1000, { "", "", -1 } },
			{ "V_BandollierB_khk", "", 1000, { "", "", -1 } },
			{ "V_BandollierB_cbr", "", 1000, { "", "", -1 } },
			{ "V_BandollierB_rgr", "", 1000, { "", "", -1 } },
			{ "V_BandollierB_blk", "", 1000, { "", "", -1 } },
			{ "V_BandollierB_oli", "", 1000, { "", "", -1 } },
			{ "V_Chestrig_khk", "", 1000, { "", "", -1 } },
			{ "V_Chestrig_rgr", "", 1000, { "", "", -1 } },
			{ "V_Chestrig_blk", "", 1000, { "", "", -1 } },
			{ "V_Chestrig_oli", "", 1000, { "", "", -1 } },
			{ "V_HarnessO_brn", "", 1000, { "", "", -1 } },
			{ "V_HarnessO_gry", "", 1000, { "", "", -1 } },
			{ "V_HarnessOSpec_brn", "", 1000, { "", "", -1 } },
			{ "V_HarnessOSpec_gry", "", 1000, { "", "", -1 } },
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "B_AssaultPack_cbr", "", 100, { "", "", -1 } },
			{ "B_Kitbag_mcamo", "", 100, { "", "", -1 } },
			{ "B_TacticalPack_oli", "", 200, { "", "", -1 } },
			{ "B_FieldPack_ocamo", "", 250, { "", "", -1 } },
			{ "B_Bergen_sgg", "", 300, { "", "", -1 } },
			{ "B_Bergen_blk", "", 300, { "", "", -1 } },
			{ "B_Bergen_rgr", "", 300, { "", "", -1 } },
			{ "B_Bergen_mcamo", "", 300, { "", "", -1 } },
			{ "B_Kitbag_cbr", "", 300, { "", "", -1 } },
			{ "B_Carryall_oli", "", 350, { "", "", -1 } },
			{ "B_Carryall_khk", "", 350, { "", "", -1 } },
			{ "B_Carryall_ocamo", "", 350, { "", "", -1 } },
			{ "B_Carryall_oucamo", "Invisible Backpack", 500, { "life_donator", "SCALAR", 3 } },
			{ "B_Carryall_mcamo", "", 350, { "", "", -1 } },
			{ "B_Carryall_oli", "", 350, { "", "", -1 } },
			{ "B_Carryall_cbr", "", 350, { "", "", -1 } }
		};
	};

	class cop {
		title = "STR_Shops_C_Police";
		license = "";
		side = "cop";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_Rangemaster", "Basic Uniform", 25, { "", "", -1 } },
			{ "U_B_CombatUniform_mcam", "Senior Uniform", 25, { "life_coplevel", "SCALAR", 4 } },
			{ "U_I_CombatUniform", "Daddy Uniform", 25, { "life_coplevel", "SCALAR", 6 } },
			{ "U_B_CombatUniform_mcam_worn", "Donator Uniform", 25, { "life_donator", "SCALAR", 6 } },
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_MilCap_gry", "", 25, { "life_coplevel", "SCALAR", 1 } },
			{ "H_Cap_police", "", 25, { "life_coplevel", "SCALAR", 2 } },
			{ "H_MilCap_blue", "", 25, { "life_coplevel", "SCALAR", 2 } },
			{ "H_Beret_blk_POLICE", "", 25, { "life_coplevel", "SCALAR", 3 } },
			{ "H_Beret_Colonel", "", 25, { "life_coplevel", "SCALAR", 4 } },
			{ "H_CrewHelmetHeli_B", "", 25, { "life_coplevel", "SCALAR", 4 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } },
			{ "G_Aviator", "", 100, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 40, { "", "", -1 } },
			{ "G_Lady_Dark", "", 40, { "", "", -1 } },
			{ "G_Lady_Blue", "", 40, { "", "", -1 } },
			{ "G_Lowprofile", "", 30, { "", "", -1 } },
			{ "G_Combat", "", 55, { "", "", -1 } },
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_TacVest_blk", "", 500, { "life_coplevel", "SCALAR", 1 } },
			{ "V_PlateCarrier1_blk", "", 1000, { "life_coplevel", "SCALAR", 5 } },
			{ "V_TacVest_blk_POLICE", "", 2000, { "life_coplevel", "SCALAR", 2 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "B_Carryall_oucamo", "Invisible Backpack", 100, { "", "", -1 } }
		};
	};

	class dive {
		title = "STR_Shops_C_Diving";
		license = "dive";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_B_Wetsuit", "", 500, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Diving", "", 15, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_RebreatherB", "", 150, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } }
		};
	};

	class arms {
		title = "STR_Shops_C_Rebel";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_B_CombatUniform_mcam", "", 500, {"", "", -1} },
			{ "U_B_CombatUniform_mcam_tshirt", "", 500, {"", "", -1} },
			{ "U_B_CombatUniform_mcam_vest", "", 500, {"", "", -1} },
			{ "U_B_CombatUniform_mcam_worn", "", 500, {"", "", -1} },
			{ "U_B_GhillieSuit", "", 700, {"", "", -1} },
			{ "U_O_GhillieSuit", "", 700, {"", "", -1} },
			{ "U_I_GhillieSuit", "", 700, {"", "", -1} },
			{ "U_O_SpecopsUniform_ocamo", "", 500, {"", "", -1} },
			{ "U_O_PilotCoveralls", "", 500, {"", "", -1} },
			{ "U_O_CombatUniform_oucamo", "", 500, {"", "", -1} },
			{ "U_O_OfficerUniform_ocamo", "", 500, {"", "", -1} },
			{ "U_I_CombatUniform", "", 500, {"", "", -1} },
			{ "U_I_CombatUniform_shortsleeve", "", 500, {"", "", -1} },
			{ "U_IG_Guerilla1_1", "", 500, {"", "", -1} },
			{ "U_IG_Guerilla2_1", "", 500, {"", "", -1} },
			{ "U_IG_leader", "", 500, {"", "", -1} },
			{ "U_B_CTRG_1", "", 500, {"", "", -1} },
			{ "U_B_CTRG_2", "", 500, {"", "", -1} },
			{ "U_B_CTRG_3", "", 500, {"", "", -1} },
			{ "U_B_survival_uniform", "", 500, {"", "", -1} },
			{ "U_I_G_Story_Protagonist_F", "", 500, {"", "", -1} },
			{ "U_I_G_resistanceLeader_F", "", 500, {"", "", -1} },
			{ "U_I_Wetsuit", "", 500, {"", "", -1} },
			{ "U_O_Wetsuit", "", 500, {"", "", -1} },
			{ "U_BG_Guerilla1_1", "", 500, {"", "", -1} },
			{ "U_B_HeliPilotCoveralls", "", 500, {"", "", -1} },
			{ "U_I_CombatUniform", "Mafia suit", 50, { "life_donator", "SCALAR", 2 } },
			{ "U_B_Protagonist_VR", "VR Suit Blue", 50, { "life_donator", "SCALAR", 3 } },
			{ "U_O_Protagonist_VR", "VR Suit Red", 50, { "life_donator", "SCALAR", 3 } },
			{ "U_I_Protagonist_VR", "VR Suit Green", 50, { "life_donator", "SCALAR", 1 } },
			{ "U_B_FullGhillie_lsh", "", 1000, {"", "", -1} },
			{ "U_B_FullGhillie_ard", "", 1000, {"", "", -1} },
			{ "U_O_FullGhillie_lsh", "", 1000, {"", "", -1} },
			{ "U_O_FullGhillie_sard", "", 1000, {"", "", -1} },
			{ "U_O_FullGhillie_ard", "", 1000, {"", "", -1} },
			{ "U_I_FullGhillie_lsh", "", 1000, {"", "", -1} },
			{ "U_I_FullGhillie_sard", "", 1000, {"", "", -1} },
			{ "U_I_FullGhillie_ard", "", 1000, {"", "", -1} },
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_CrewHelmetHeli_I", "", 150, { "", "", -1 } },
			{ "H_CrewHelmetHeli_O", "", 150, { "", "", -1 } },
			{ "H_CrewHelmetHeli_B", "", 150, { "", "", -1 } },
			{ "H_PilotHelmetHeli_I", "", 150, { "", "", -1 } },
			{ "H_PilotHelmetHeli_B", "", 150, { "", "", -1 } },
			{ "H_PilotHelmetHeli_O", "", 150, { "", "", -1 } },
			{ "H_HelmetCrew_I", "", 150, { "", "", -1 } },
			{ "H_HelmetB_light_grass", "", 150, { "", "", -1 } },
			{ "H_HelmetB_light_snakeskin", "", 150, { "", "", -1 } },
			{ "H_HelmetB_light_desert", "", 150, { "", "", -1 } },
			{ "H_HelmetB_light_sand", "", 150, { "", "", -1 } },
			{ "H_Helmet_Kerry", "", 150, { "", "", -1 } },
			{ "H_HelmetB_grass", "", 150, { "", "", -1 } },
			{ "H_HelmetB_snakeskin", "", 150, { "", "", -1 } },
			{ "H_HelmetB", "", 150, { "", "", -1 } },
			{ "H_HelmetB_camo", "", 150, { "", "", -1 } },
			{ "H_HelmetB_light", "", 150, { "", "", -1 } },
			{ "H_HelmetIA", "", 150, { "", "", -1 } },
			{ "H_HelmetIA_camo", "", 150, { "", "", -1 } },
			{ "H_HelmetIA_net", "", 150, { "", "", -1 } },
			{ "H_HelmetB_plain_blk", "", 150, { "", "", -1 } },
			{ "H_HelmetSpecB", "", 150, { "", "", -1 } },
			{ "H_HelmetB_desert", "", 150, { "", "", -1 } },
			{ "H_HelmetB_black", "", 150, { "", "", -1 } },
			{ "H_HelmetB_sand", "", 150, { "", "", -1 } },
			{ "H_Booniehat_khk", "", 150, { "", "", -1 } },
			{ "H_Booniehat_mcamo", "", 150, { "", "", -1 } },
			{ "H_Booniehat_dirty", "", 150, { "", "", -1 } },
			{ "H_Booniehat_khk_hs", "", 150, { "", "", -1 } },
			{ "H_TurbanO_blk", "", 150, { "", "", -1 } },
			{ "H_Booniehat_oli", "", 150, { "", "", -1 } },
            { "H_MilCap_dgtl", "", 150, { "", "", -1 } },
			{ "H_Cap_headphones", "", 150, { "", "", -1 } },
			{ "H_Cap_tan", "", 150, { "", "", -1 } },
			{ "H_Cap_blk_CMMG", "", 150, { "", "", -1 } },
			{ "H_Cap_tan_specops_US", "", 150, { "", "", -1 } },
			{ "H_Cap_khaki_specops_UK", "", 150, { "", "", -1 } },
			{ "H_Shemag_khk", "", 150, { "", "", -1 } },
			{ "H_Shemag_tan", "", 150, { "", "", -1 } },		
			{ "H_Shemag_olive", "", 150, { "", "", -1 } },	
			{ "H_Shemag_olive_hs", "", 150, { "", "", -1 } },	
			{ "H_ShemagOpen_khk", "", 150, { "", "", -1 } },	
			{ "H_ShemagOpen_tan", "", 150, { "", "", -1 } },	
			{ "H_Bandanna_gry", "", 150, { "", "", -1 } },	
			{ "H_Bandanna_camo", "", 150, { "", "", -1 } },	
			{ "H_Watchcap_blk", "", 150, { "", "", -1 } },	
			{ "H_Watchcap_khk", "", 150, { "", "", -1 } },	
			{ "H_Watchcap_camo", "", 150, { "", "", -1 } },
			{ "H_Watchcap_cbr", "", 150, { "", "", -1 } },	
			{ "H_Cap_usblack", "", 150, { "", "", -1 } },
			{ "H_Cap_surfer", "", 150, { "", "", -1 } },
			{ "H_Beret_brn_SF", "", 150, { "", "", -1 } },
			{ "H_Beret_grn_SF", "", 150, { "", "", -1 } },
			{ "H_Beret_grn", "", 150, { "", "", -1 } },
			{ "H_Beret_red", "", 150, { "", "", -1 } },
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } },
			{ "G_Aviator", "", 35, { "", "", -1 } },
			{ "G_Lowprofile", "", 30, { "", "", -1 } },
			{ "G_Combat", "", 55, { "", "", -1 } },
			{ "G_Bandanna_blk", "", 55, { "", "", -1 } },
			{ "G_Bandanna_oli", "", 55, { "", "", -1 } },
			{ "G_Bandanna_khk", "", 55, { "", "", -1 } },
			{ "G_Bandanna_tan", "", 55, { "", "", -1 } },
			{ "G_Bandanna_beast", "", 55, { "", "", -1 } },
			{ "G_Bandanna_aviator", "", 55, { "", "", -1 } },
			{ "G_Bandanna_shades", "", 55, { "", "", -1 } },
			{ "G_Balaclava_oli", "", 55, { "", "", -1 } },
			{ "G_Balaclava_lowprofile", "", 55, { "", "", -1 } },
			{ "G_Balaclava_combat", "", 55, { "", "", -1 } },
			{ "G_Balaclava_blk", "", 55, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_TacVest_khk", "", 3500, { "", "", -1 } },
			{ "V_TacVest_brn", "", 3500, { "", "", -1 } },
			{ "V_TacVest_oli", "", 3500, { "", "", -1 } },
			{ "V_TacVest_camo", "", 3500, { "", "", -1 } },
			{ "V_TacVestIR_blk", "", 2000, { "", "", -1 } },
			{ "V_PlateCarrier1_rgr", "", 6000, { "", "", -1 } },
			{ "V_PlateCarrier1_blk", "", 6000, { "", "", -1 } },
			{ "V_PlateCarrier2_rgr", "", 9000, { "", "", -1 } },
			{ "V_PlateCarrier2_blk", "", 9000, { "", "", -1 } },
			{ "V_PlateCarrierIA1_dgtl", "", 9000, { "", "", -1 } },
			{ "V_PlateCarrierL_CTRG", "", 9000, { "", "", -1 } },
			{ "V_RebreatherB", "", 1500, { "", "", -1 } },
			{ "V_HarnessOGL_gry", "Suicide Vest", 120000, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "B_AssaultPack_cbr", "", 100, { "", "", -1 } },
			{ "B_Kitbag_mcamo", "", 100, { "", "", -1 } },
			{ "B_TacticalPack_oli", "", 200, { "", "", -1 } },
			{ "B_FieldPack_ocamo", "", 250, { "", "", -1 } },
			{ "B_Bergen_sgg", "", 300, { "", "", -1 } },
			{ "B_Bergen_blk", "", 300, { "", "", -1 } },
			{ "B_Bergen_rgr", "", 300, { "", "", -1 } },
			{ "B_Bergen_mcamo", "", 300, { "", "", -1 } },
			{ "B_Kitbag_cbr", "", 300, { "", "", -1 } },
			{ "B_Carryall_oli", "", 350, { "", "", -1 } },
			{ "B_Carryall_khk", "", 350, { "", "", -1 } },
			{ "B_Carryall_ocamo", "", 350, { "", "", -1 } },
			{ "B_Carryall_oucamo", "Invisible Backpack", 500, { "life_donator", "SCALAR", 3 } },
			{ "B_Carryall_mcamo", "", 350, { "", "", -1 } },
			{ "B_Carryall_oli", "", 350, { "", "", -1 } },
			{ "B_Carryall_cbr", "", 350, { "", "", -1 } }
		};
	};

	class reb {
		title = "STR_Shops_C_Rebel";
		license = "rebel";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_B_CombatUniform_mcam", "", 500, {"", "", -1} },
			{ "U_B_CombatUniform_mcam_tshirt", "", 500, {"", "", -1} },
			{ "U_B_CombatUniform_mcam_vest", "", 500, {"", "", -1} },
			{ "U_B_CombatUniform_mcam_worn", "", 500, {"", "", -1} },
			{ "U_B_GhillieSuit", "", 700, {"", "", -1} },
			{ "U_O_GhillieSuit", "", 700, {"", "", -1} },
			{ "U_I_GhillieSuit", "", 700, {"", "", -1} },
			{ "U_O_SpecopsUniform_ocamo", "", 500, {"", "", -1} },
			{ "U_O_PilotCoveralls", "", 500, {"", "", -1} },
			{ "U_O_CombatUniform_oucamo", "", 500, {"", "", -1} },
			{ "U_O_OfficerUniform_ocamo", "", 500, {"", "", -1} },
			{ "U_I_CombatUniform", "", 500, {"", "", -1} },
			{ "U_I_CombatUniform_shortsleeve", "", 500, {"", "", -1} },
			{ "U_IG_Guerilla1_1", "", 500, {"", "", -1} },
			{ "U_IG_Guerilla2_1", "", 500, {"", "", -1} },
			{ "U_IG_leader", "", 500, {"", "", -1} },
			{ "U_B_CTRG_1", "", 500, {"", "", -1} },
			{ "U_B_CTRG_2", "", 500, {"", "", -1} },
			{ "U_B_CTRG_3", "", 500, {"", "", -1} },
			{ "U_B_survival_uniform", "", 500, {"", "", -1} },
			{ "U_I_G_Story_Protagonist_F", "", 500, {"", "", -1} },
			{ "U_I_G_resistanceLeader_F", "", 500, {"", "", -1} },
			{ "U_I_Wetsuit", "", 500, {"", "", -1} },
			{ "U_O_Wetsuit", "", 500, {"", "", -1} },
			{ "U_BG_Guerilla1_1", "", 500, {"", "", -1} },
			{ "U_B_HeliPilotCoveralls", "", 500, {"", "", -1} },
			{ "U_I_CombatUniform", "Mafia suit", 50, { "life_donator", "SCALAR", 2 } },
			{ "U_B_Protagonist_VR", "VR Suit Blue", 50, { "life_donator", "SCALAR", 3 } },
			{ "U_O_Protagonist_VR", "VR Suit Red", 50, { "life_donator", "SCALAR", 3 } },
			{ "U_I_Protagonist_VR", "VR Suit Green", 50, { "life_donator", "SCALAR", 1 } },
			{ "U_B_FullGhillie_lsh", "", 1000, {"", "", -1} },
			{ "U_B_FullGhillie_ard", "", 1000, {"", "", -1} },
			{ "U_O_FullGhillie_lsh", "", 1000, {"", "", -1} },
			{ "U_O_FullGhillie_sard", "", 1000, {"", "", -1} },
			{ "U_O_FullGhillie_ard", "", 1000, {"", "", -1} },
			{ "U_I_FullGhillie_lsh", "", 1000, {"", "", -1} },
			{ "U_I_FullGhillie_sard", "", 1000, {"", "", -1} },
			{ "U_I_FullGhillie_ard", "", 1000, {"", "", -1} },
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_CrewHelmetHeli_I", "", 150, { "", "", -1 } },
			{ "H_CrewHelmetHeli_O", "", 150, { "", "", -1 } },
			{ "H_CrewHelmetHeli_B", "", 150, { "", "", -1 } },
			{ "H_PilotHelmetHeli_I", "", 150, { "", "", -1 } },
			{ "H_PilotHelmetHeli_B", "", 150, { "", "", -1 } },
			{ "H_PilotHelmetHeli_O", "", 150, { "", "", -1 } },
			{ "H_HelmetCrew_I", "", 150, { "", "", -1 } },
			{ "H_HelmetB_light_grass", "", 150, { "", "", -1 } },
			{ "H_HelmetB_light_snakeskin", "", 150, { "", "", -1 } },
			{ "H_HelmetB_light_desert", "", 150, { "", "", -1 } },
			{ "H_HelmetB_light_sand", "", 150, { "", "", -1 } },
			{ "H_Helmet_Kerry", "", 150, { "", "", -1 } },
			{ "H_HelmetB_grass", "", 150, { "", "", -1 } },
			{ "H_HelmetB_snakeskin", "", 150, { "", "", -1 } },
			{ "H_HelmetB", "", 150, { "", "", -1 } },
			{ "H_HelmetB_camo", "", 150, { "", "", -1 } },
			{ "H_HelmetB_light", "", 150, { "", "", -1 } },
			{ "H_HelmetIA", "", 150, { "", "", -1 } },
			{ "H_HelmetIA_camo", "", 150, { "", "", -1 } },
			{ "H_HelmetIA_net", "", 150, { "", "", -1 } },
			{ "H_HelmetB_plain_blk", "", 150, { "", "", -1 } },
			{ "H_HelmetSpecB", "", 150, { "", "", -1 } },
			{ "H_HelmetB_desert", "", 150, { "", "", -1 } },
			{ "H_HelmetB_black", "", 150, { "", "", -1 } },
			{ "H_HelmetB_sand", "", 150, { "", "", -1 } },
			{ "H_Booniehat_khk", "", 150, { "", "", -1 } },
			{ "H_Booniehat_mcamo", "", 150, { "", "", -1 } },
			{ "H_Booniehat_dirty", "", 150, { "", "", -1 } },
			{ "H_Booniehat_khk_hs", "", 150, { "", "", -1 } },
			{ "H_TurbanO_blk", "", 150, { "", "", -1 } },
			{ "H_Booniehat_oli", "", 150, { "", "", -1 } },
            { "H_MilCap_dgtl", "", 150, { "", "", -1 } },
			{ "H_Cap_headphones", "", 150, { "", "", -1 } },
			{ "H_Cap_tan", "", 150, { "", "", -1 } },
			{ "H_Cap_blk_CMMG", "", 150, { "", "", -1 } },
			{ "H_Cap_tan_specops_US", "", 150, { "", "", -1 } },
			{ "H_Cap_khaki_specops_UK", "", 150, { "", "", -1 } },
			{ "H_Shemag_khk", "", 150, { "", "", -1 } },
			{ "H_Shemag_tan", "", 150, { "", "", -1 } },		
			{ "H_Shemag_olive", "", 150, { "", "", -1 } },	
			{ "H_Shemag_olive_hs", "", 150, { "", "", -1 } },	
			{ "H_ShemagOpen_khk", "", 150, { "", "", -1 } },	
			{ "H_ShemagOpen_tan", "", 150, { "", "", -1 } },	
			{ "H_Bandanna_gry", "", 150, { "", "", -1 } },	
			{ "H_Bandanna_camo", "", 150, { "", "", -1 } },	
			{ "H_Watchcap_blk", "", 150, { "", "", -1 } },	
			{ "H_Watchcap_khk", "", 150, { "", "", -1 } },	
			{ "H_Watchcap_camo", "", 150, { "", "", -1 } },
			{ "H_Watchcap_cbr", "", 150, { "", "", -1 } },	
			{ "H_Cap_usblack", "", 150, { "", "", -1 } },
			{ "H_Cap_surfer", "", 150, { "", "", -1 } },
			{ "H_Beret_brn_SF", "", 150, { "", "", -1 } },
			{ "H_Beret_grn_SF", "", 150, { "", "", -1 } },
			{ "H_Beret_grn", "", 150, { "", "", -1 } },
			{ "H_Beret_red", "", 150, { "", "", -1 } },
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } },
			{ "G_Aviator", "", 35, { "", "", -1 } },
			{ "G_Lowprofile", "", 30, { "", "", -1 } },
			{ "G_Combat", "", 55, { "", "", -1 } },
			{ "G_Bandanna_blk", "", 55, { "", "", -1 } },
			{ "G_Bandanna_oli", "", 55, { "", "", -1 } },
			{ "G_Bandanna_khk", "", 55, { "", "", -1 } },
			{ "G_Bandanna_tan", "", 55, { "", "", -1 } },
			{ "G_Bandanna_beast", "", 55, { "", "", -1 } },
			{ "G_Bandanna_aviator", "", 55, { "", "", -1 } },
			{ "G_Bandanna_shades", "", 55, { "", "", -1 } },
			{ "G_Balaclava_oli", "", 55, { "", "", -1 } },
			{ "G_Balaclava_lowprofile", "", 55, { "", "", -1 } },
			{ "G_Balaclava_combat", "", 55, { "", "", -1 } },
			{ "G_Balaclava_blk", "", 55, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_TacVest_khk", "", 3500, { "", "", -1 } },
			{ "V_TacVest_brn", "", 3500, { "", "", -1 } },
			{ "V_TacVest_oli", "", 3500, { "", "", -1 } },
			{ "V_TacVest_camo", "", 3500, { "", "", -1 } },
			{ "V_TacVestIR_blk", "", 2000, { "", "", -1 } },
			{ "V_PlateCarrier1_rgr", "", 6000, { "", "", -1 } },
			{ "V_PlateCarrier1_blk", "", 6000, { "", "", -1 } },
			{ "V_PlateCarrier2_rgr", "", 9000, { "", "", -1 } },
			{ "V_PlateCarrier2_blk", "", 9000, { "", "", -1 } },
			{ "V_PlateCarrierIA1_dgtl", "", 9000, { "", "", -1 } },
			{ "V_PlateCarrierL_CTRG", "", 9000, { "", "", -1 } },
			{ "V_RebreatherB", "", 1500, { "", "", -1 } },
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "B_AssaultPack_cbr", "", 100, { "", "", -1 } },
			{ "B_Kitbag_mcamo", "", 100, { "", "", -1 } },
			{ "B_TacticalPack_oli", "", 200, { "", "", -1 } },
			{ "B_FieldPack_ocamo", "", 250, { "", "", -1 } },
			{ "B_Bergen_sgg", "", 300, { "", "", -1 } },
			{ "B_Bergen_blk", "", 300, { "", "", -1 } },
			{ "B_Bergen_rgr", "", 300, { "", "", -1 } },
			{ "B_Bergen_mcamo", "", 300, { "", "", -1 } },
			{ "B_Kitbag_cbr", "", 300, { "", "", -1 } },
			{ "B_Carryall_oli", "", 350, { "", "", -1 } },
			{ "B_Carryall_khk", "", 350, { "", "", -1 } },
			{ "B_Carryall_ocamo", "", 350, { "", "", -1 } },
			{ "B_Carryall_oucamo", "Invisible Backpack", 500, { "life_donator", "SCALAR", 3 } },
			{ "B_Carryall_mcamo", "", 350, { "", "", -1 } },
			{ "B_Carryall_oli", "", 350, { "", "", -1 } },
			{ "B_Carryall_cbr", "", 350, { "", "", -1 } }
		};
	};

	class kart {
		title = "STR_Shops_C_Kart";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_C_Driver_1_black", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_blue", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_red", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_orange", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_green", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_white", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_yellow", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_2", "", 3500, { "", "", -1 } },
			{ "U_C_Driver_1", "", 3600, { "", "", -1 } },
			{ "U_C_Driver_3", "", 3700, { "", "", -1 } },
			{ "U_C_Driver_4", "", 3700, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_RacingHelmet_1_black_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_red_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_white_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_blue_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_yellow_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_green_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_2_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_3_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_4_F", "", 2500, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } }
		};
	};
	class law {
		title = "STR_Shops_law";
		license = "law";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_NikosAgedBody", "", 500, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_Hat_blue", "", 5, { "", "", -1 } },
			{ "H_Hat_brown", "", 5, { "", "", -1 } },
			{ "H_Hat_checker", "", 10, { "", "", -1 } },
			{ "H_Hat_grey", "", 10, { "", "", -1 } },
			{ "H_Hat_tan", "", 10, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } }
			
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } }
		};
	};
	class news {
		title = "STR_Shops_News";
		license = "news";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_C_Journalist", "", 500, { "", "", -1 } },
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_Cap_press", "", 100, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } },
			{ "G_Aviator", "", 100, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 40, { "", "", -1 } },
			{ "G_Lady_Dark", "", 40, { "", "", -1 } },
			{ "G_Lady_Blue", "", 40, { "", "", -1 } },
			{ "G_Lowprofile", "", 30, { "", "", -1 } },
			{ "G_Combat", "", 55, { "", "", -1 } },
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_Press_F", "", 1000, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } }
		};
	};
};