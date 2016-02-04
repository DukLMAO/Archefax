#include <macro.h>
/*
	fn_seniorTazers.sqf
	By: Ethan
*/

private["_unit","_damage","_source","_projectile","_part","_curWep","_curMag"];
_unit = SEL(_this,0);
_part = SEL(_this,1);
_damage = SEL(_this,2);
_source = SEL(_this,3);
_projectile = SEL(_this,4);
_curWep = currentWeapon player;
_curMag = currentMagazine player;

if ((playerSide == west) && (currentWeapon player == "srifle_DMR_03_F")) then {
	if ((((getDammage _unit) + _damage) >= 0.90) || (_damage >= 0.95)) then {
		_damage = 0;
		[_unit] spawn life_fnc_handleDowned;
	};
};

//rubber bullets
/*if (((_curMag == "30Rnd_65x39_caseless_mag_Tracer") || (_curWep in ["SMG_02_F","hgun_P07_F","hgun_P07_snds_F"]))&&(_projectile in ["B_65x39_Caseless","B_9x21_Ball"])) then {
	if ((((getDammage _unit) + _damage) >= 0.90) || (_damage >= 0.95)) then {
		_damage = 0;
		[_source] spawn life_fnc_handleDowned;
	};
};*/

/*switch (_option) do
{
	case "tazer":
	{
		if ((playerSide == west) && (_curWep in ["srifle_DMR_03_F"])) then {
			if ((((getDammage _unit) + _damage) >= 0.90) || (_damage >= 0.95)) then {
				_damage = 0;
				[_source] spawn life_fnc_handleDowned;
			};
		};
	};
	case "lethal":
	{
		titleText["!!!LETHALS LOADED!!!","PLAIN"];
		if (currentWeapon player == "srifle_DMR_03_F") then {
		_damage = _damage;
		};
	};
};*/

[] call life_fnc_hudUpdate;
_damage;