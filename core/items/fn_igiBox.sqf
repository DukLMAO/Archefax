#include <macro.h>
/*
	fn_igiBox.sqf
	By: Ethan
*/

private["_boxType"];
_boxType = _this select 0;

if(!([false,_boxType,1] call life_fnc_handleInv)) exitWith {};
switch (_boxType) do {
	case "cargobox": {
		_container = "Land_CargoBox_V1_F" createVehicle [0,0,0];
		_container setPosATL (player modelToWorld [0,3,0]);

		//Empty out the crate
		clearWeaponCargoGlobal _container;
		clearMagazineCargoGlobal _container;
		clearItemCargoGlobal _container;
		clearBackpackCargoGlobal _container;
	};
};