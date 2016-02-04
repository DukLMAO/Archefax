#include <macro.h>

/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka

	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addBackpack "B_Carryall_oucamo";

/* ITEMS */
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
player addItem "SmokeShell";
player addItem "SmokeShell";
player addWeapon "hgun_P07_F";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
[true,"redgull",20] call life_fnc_handleInv;
[true,"waterBottle",4] call life_fnc_handleInv;
[true,"coffee",4] call life_fnc_handleInv;
[true,"spikestrip",2] call life_fnc_handleInv;
[true,"fuelFull",2] call life_fnc_handleInv;
[true,"defuseKit",1] call life_fnc_handleInv;
[true,"gpstracker",1] call life_fnc_handleInv;


if (playerSide == west) then {

switch (FETCH_CONST(life_coplevel)) do {

	case 1:
	{
		player addHeadgear "H_MilCap_gry";
		player ForceAddUniform "U_Rangemaster";
		player setObjectTextureGlobal [0, "textures\deputy1.jpg"];
		player addVest "V_TacVest_blk";
		player addMagazine "30Rnd_9x21_Mag";
		player addMagazine "30Rnd_9x21_Mag";
		player addMagazine "30Rnd_9x21_Mag";
		player addMagazine "30Rnd_9x21_Mag";
		player addMagazine "30Rnd_9x21_Mag";
		player addMagazine "30Rnd_9x21_Mag";
		player addMagazine "30Rnd_9x21_Mag";
		player addMagazine "30Rnd_9x21_Mag";
		player addMagazine "30Rnd_9x21_Mag";
		player addMagazine "30Rnd_9x21_Mag";
		player addMagazine "30Rnd_9x21_Mag";
	};

	case 2:
	{
		player addHeadgear "H_Cap_police";
		player ForceAddUniform "U_Rangemaster";
		player setObjectTextureGlobal [0, "textures\patrolofficer1.jpg"];
		player addWeapon "arifle_MX_Black_F";
		player addPrimaryWeaponItem "optic_Hamr";
		player addVest "V_TacVest_blk_POLICE";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		//[true,"spikestrip",1] call life_fnc_handleInv;
	};

	case 3:
	{
		player addHeadgear "H_Beret_blk_POLICE";
	    player ForceAddUniform "U_Rangemaster";
		player setObjectTextureGlobal [0, "textures\corproal1.jpg"];
		player addWeapon "arifle_MXM_Black_F";
		player addPrimaryWeaponItem "optic_Hamr";
		player addVest "V_TacVest_blk_POLICE";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
	};

	case 4:
	{
	    player ForceAddUniform "U_B_CombatUniform_mcam";
		player setObjectTextureGlobal [0, "textures\senior.jpg"];
		player addHeadgear "H_CrewHelmetHeli_B";
		player addWeapon "srifle_DMR_03_F";
		player addPrimaryWeaponItem "optic_Hamr";
		player addPrimaryWeaponItem "bipod_01_F_blk";
		player addPrimaryWeaponItem "acc_pointer_IR";
		player addVest "V_TacVest_blk_POLICE";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
	};

	case 5:
	{
	    player ForceAddUniform "U_B_CombatUniform_mcam";
		player setObjectTextureGlobal [0, "textures\senior.jpg"];
		player addHeadgear "H_CrewHelmetHeli_B";
		player addWeapon "srifle_DMR_03_F";
		player addPrimaryWeaponItem "optic_Hamr";
		player addPrimaryWeaponItem "bipod_01_F_blk";
		player addPrimaryWeaponItem "acc_pointer_IR";
		player addVest "V_PlateCarrier1_blk";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
	};
	case 6:
	{
	    player ForceAddUniform "U_B_CombatUniform_mcam";
		player setObjectTextureGlobal [0, "textures\senior.jpg"];
		player addHeadgear "H_CrewHelmetHeli_B";
		player addWeapon "srifle_DMR_03_F";
		player addPrimaryWeaponItem "optic_Hamr";
		player addPrimaryWeaponItem "bipod_01_F_blk";
		player addPrimaryWeaponItem "acc_pointer_IR";
		player addVest "V_PlateCarrier1_blk";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
	};
	case 7:
	{
	    player ForceAddUniform "U_I_CombatUniform";
		player setObjectTextureGlobal [0, "textures\senior.jpg"];
		player addHeadgear "H_CrewHelmetHeli_B";
		player addWeapon "srifle_DMR_03_F";
		player addPrimaryWeaponItem "optic_Hamr";
		player addPrimaryWeaponItem "bipod_01_F_blk";
		player addPrimaryWeaponItem "acc_pointer_IR";
		player addVest "V_PlateCarrier1_blk";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addMagazine "20Rnd_762x51_Mag";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
	};

};
};
[] call life_fnc_saveGear;
[] call life_fnc_Uniformscolor;
