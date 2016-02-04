#include <macro.h>
/*
	COP UNIFORM SCRIPT
	Edited: by maximum for better handling of actual uniforms
	Created for www.altisliferpg.com
*/
#define FETCH_CONST(var) (call var)

if(side player == independent) then {
	if(uniform player == "U_B_CombatUniform_mcam") then {
		player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];
	};

	/*if((uniform player == "U_B_CombatUniform_mcam") && ( (FETCH_CONST(life_mediclevel)) > 3)) then {
		player setObjectTextureGlobal [0, "textures\yellow.jpg"];
	};*/

	if (backpack player == "B_Carryall_oucamo") then {
    	(unitbackpack player) setObjectTextureGlobal [0, ""];
    };
};

if(playerSide == WEST) then {
	// Cop Level 1 & 2
	if (backpack player == "B_Carryall_oucamo") then {
    	(unitbackpack player) setObjectTextureGlobal [0, ""];
	};

	if((uniform player == "U_Rangemaster") && ( (FETCH_CONST(life_coplevel)) == 1)) then {
		player setObjectTextureGlobal [0, "textures\deputy1.jpg"];
	};

	if((uniform player == "U_Rangemaster") && ( (FETCH_CONST(life_coplevel)) == 2)) then {
		player setObjectTextureGlobal [0, "textures\patrolofficer1.jpg"];
	};
	// cop level 3,4
	if((uniform player == "U_Rangemaster") && ( (FETCH_CONST(life_coplevel)) > 2)) then {
		player setObjectTextureGlobal [0, "textures\corproal1.jpg"];
	};

	if((uniform player == "U_B_CombatUniform_mcam") && ( (FETCH_CONST(life_coplevel)) > 3)) then {
		player setObjectTextureGlobal [0, "textures\senior.jpg"];
	};

	if((uniform player == "U_B_CombatUniform_mcam_worn") && ( (FETCH_CONST(life_donator)) > 5)) then {
		player setObjectTextureGlobal [0, "textures\senior1.jpg"];
	};

	if((uniform player == "U_I_CombatUniform") && ( (FETCH_CONST(life_coplevel)) > 5)) then {
		player setObjectTextureGlobal [0, "textures\daddyuniform.jpg"];
	};
	// cop level 5,6,7
	//if (uniform player == "U_BG_Guerilla2_2") then {
	//	player setObjectTextureGlobal [0, "textures\hwaypatrol_U_BG_Guerilla2_2_by_MrKraken.jpg"];
};

if(playerSide == civilian) then {
	if((uniform player == "U_I_CombatUniform") && ( (FETCH_CONST(life_donator)) > 1)) then {
		player setObjectTextureGlobal [0, "textures\mafia.paa"];
	};

	if((uniform player == "U_B_CombatUniform_mcam") && ( (FETCH_CONST(life_donator)) > 5)) then {
		player setObjectTextureGlobal [0, "textures\senior.jpg"];
	};

	if((uniform player == "U_B_CTRG_3") && ( (FETCH_CONST(life_donator)) > 5)) then {
		player setObjectTextureGlobal [0, "textures\senior1.jpg"];
	};

	if((uniform player == "U_B_CombatUniform_mcam_worn") && ( (FETCH_CONST(life_donator)) > 3)) then {
		player setObjectTextureGlobal [0, "textures\green.jpg"];
	};

	if((uniform player == "U_B_CombatUniform_mcam_vest") && ( (FETCH_CONST(life_donator)) > 4)) then {
		player setObjectTextureGlobal [0, "textures\blue1.jpg"];
	};

	if (backpack player == "B_Carryall_oucamo") then {
    	(unitbackpack player) setObjectTextureGlobal [0, ""];
	};
};
