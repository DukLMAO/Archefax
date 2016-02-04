/*
	fn_adminLoadout.sqf
	By: Ethan
*/

private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addBackpack "B_Carryall_oucamo";

player addHeadgear "H_CrewHelmetHeli_B";
player ForceAddUniform "U_O_FullGhillie_ard";
player addVest "V_PlateCarrier2_rgr";

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
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "ToolKit";
player addItem "NVGoggles_OPFOR";
player assignItem "NVGoggles_OPFOR";
player addItem "Rangefinder";
player assignItem "Rangefinder";
player addWeapon "srifle_DMR_03_tan_F";
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
player addMagazine "20Rnd_762x51_Mag";
player addMagazine "20Rnd_762x51_Mag";
player addMagazine "20Rnd_762x51_Mag";
player addPrimaryWeaponItem "optic_Hamr";
player addPrimaryWeaponItem "bipod_01_F_blk";
player addItem "HandGrenade";
player addItem "HandGrenade";

sleep 2;

[true,"bloodbag",10] call life_fnc_handleInv;
[true,"boltcutter",1] call life_fnc_handleInv;
[true,"tbacon",2] call life_fnc_handleInv;
[true,"waterbottle",2] call life_fnc_handleInv;
[true,"lockpick",10] call life_fnc_handleInv;
[true,"ziptie",5] call life_fnc_handleInv;
[true,"defibrillator",1] call life_fnc_handleInv;
[true,"redgull",15] call life_fnc_handleInv;