#include <macro.h>
#define FETCH_CONST(var) (call var)
/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addBackpack "B_Carryall_oucamo";

player addItem "ItemRadio";
player assignItem "ItemRadio";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "Medikit";
player addItem "ToolKit";
player addItem "NVGoggles_OPFOR";
player assignItem "NVGoggles_OPFOR";
player addItem "Rangefinder";
player assignItem "Rangefinder";
player addItem "Chemlight_red";
player addItem "Chemlight_yellow";
player addItem "Chemlight_green";
player addItem "Chemlight_blue";
[true,"tbacon",4] call life_fnc_handleInv;
[true,"waterBottle",4] call life_fnc_handleInv;
[true,"fuelFull",6] call life_fnc_handleInv;
[true,"redgull",15] call life_fnc_handleInv;

switch (FETCH_CONST(life_mediclevel)) do {

	case 1:
	{
		player ForceAddUniform "U_B_CombatUniform_mcam";
		player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];
		player addHeadgear "H_Watchcap_blk";
	};

	case 2:
	{
		player ForceAddUniform "U_B_CombatUniform_mcam";
		player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];
		player addHeadgear "H_Watchcap_blk";
	};

	case 3:
	{
		player ForceAddUniform "U_B_CombatUniform_mcam";
		player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];
		player addHeadgear "H_Watchcap_blk";
	};

	case 4:
	{
		player ForceAddUniform "U_B_CombatUniform_mcam";
		player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];
		player addHeadgear "H_Watchcap_blk";
		/*player addVest "V_TacVest_blk";
		player addGoggles "G_Aviator";
		player addHeadgear "H_PilotHelmetHeli_B";*/
	};

	case 5:
	{
		player ForceAddUniform "U_B_CombatUniform_mcam";
		player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];
		player addHeadgear "H_Watchcap_blk";
		/*player addVest "V_TacVest_blk";
		player addGoggles "G_Aviator";
		player addHeadgear "H_PilotHelmetHeli_B";*/
	};
};

[] call life_fnc_saveGear;
[] call life_fnc_Uniformscolor;