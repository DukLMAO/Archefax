#include <macro.h>
/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = SEL(_this,0);
_part = SEL(_this,1);
_damage = SEL(_this,2);
_source = SEL(_this,3);
_projectile = SEL(_this,4);
_curWep = "";
_curMag = "";


if(vehicle _source isKindOf "LandVehicle" && driver (vehicle _source) == _source) then {
	if(_source != _unit AND alive _unit AND isPlayer _source) then {
		_damage = 0;
	};
};


if(isPlayer _source && _source isKindOf "Man") then {
	_curWep = currentWeapon _source;
	_curMag = currentMagazine _source;
};

if((_curWep in ["srifle_DMR_03_F","arifle_MXM_Black_F","arifle_MX_Black_F","arifle_MXC_Black_F"]) && (_source getVariable ["nonLethals",true]) && (_projectile != "")) then {
	if(((getDammage _unit) >= 0.9) || (_damage >= 0.9)) then {
		_damage = 0.001;
		[_source] spawn life_fnc_handleDowned;
	};
}else{
	if((_curWep in ["SMG_02_F","hgun_P07_F","hgun_P07_snds_F"]) && (_projectile != "")) then {
		if(((getDammage _unit) >= 0.9) || (_damage >= 0.9)) then {
			_damage = 0.001;
			[_source] spawn life_fnc_handleDowned;
		};
	};
};

if(isNull _source && (vehicle player != player)) then {
	_damage = (getDammage _unit) + ((_damage - (getDammage _unit)) * 0.2);
};

/*if(_source != player && _swag == "" && vehicle player == player) then {
	_damage = (getDammage _unit);

if(isNull _source) then {_damage = ((getDammage _unit) + 0.0060)}; if(isPlayer _source) then {_damage = (getDammage _unit);};};

if(isNull _source && (vehicle player != player) && (_projectile == "")) then {
	_damage = (getDammage _unit) + ((_damage - (getDammage _unit)) * 0.2);
};

	if(eqyrxNfNUsgSMmi) then {_damage = (getDammage _unit) + ((_damage - (getDammage _unit)) * 0.40);};if(round(getDammage _unit) != round(_damage))*/

/*if (((_curMag == "20Rnd_762x51_Mag") && (playerSide == west)) then {
	if ((((getDammage _unit) + _damage) >= 0.90) || (_damage >= 0.95)) then {
		_damage = 0;
		[_source] spawn life_fnc_handleDowned;
	};
};

if(isNull _source) then {
	_damage = ((getDammage _unit) + 0.0060)
};

if(isPlayer _source) then {
	_damage = (getDammage _unit);
};

//if ((((getDammage _unit) + _damage) >= 0.99) || (_damage >= 0.99)) then {
//		[_unit] call life_fnc_fetchDeadGear;
//};

/*if((!(isPlayer _source) && (_source !isKindOf "Man") && (vehicle player != player))) then {
	(_damage = (_damage * .2))
};*/

/*if ( vehicle player != player ) then {
	_damage vehicle = (_damage * .2)
};*/

[] call life_fnc_hudUpdate;
_damage;