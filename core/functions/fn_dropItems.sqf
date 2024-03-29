#include <macro.h>
/*
	File: fn_dropItems.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Called on death, player drops any 'virtual' items they may be carrying.
*/
private["_obj","_unit","_item","_value"];
_unit = SEL(_this,0);
if(isNull _unit) exitWith {};

if (playerside == civilian) then {
	{
		if(typeName _x == typeName "") then {_item = _x;} else {_item = configName _x};
		_value = ITEM_VALUE(_item);
		_itemName = ITEM_VARNAME(_item);

		switch(_item) do {
			case "waterBottle": {
				if(_value > 0) then {
					_pos = _unit modelToWorld[0,3,0];
					_pos = [SEL(_pos,0), SEL(_pos,1), 0];
					_obj = "Land_BottlePlastic_V1_F" createVehicle _pos;
					//_obj SVAR ["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] call life_fnc_MP;
					_obj setPos _pos;
					_obj SVAR ["item",[_item,_value],true];
					SVAR_MNS [_itemName,0];
				};
			};

			case "tbacon": {
				if(_value > 0) then {
					_pos = _unit modelToWorld[0,3,0];
					_pos = [SEL(_pos,0), SEL(_pos,1), 0];
					_obj = "Land_TacticalBacon_F" createVehicle _pos;
					[[_obj],"life_fnc_simDisable",nil,true] call life_fnc_MP;
					_obj setPos _pos;
					_obj SVAR ["item",[_item,_value],true];
					SVAR_MNS [_itemName,0];
				};
			};

			case "redgull": {
				if(_value > 0) then {
					_pos = _unit modelToWorld[0,3,0];
					_pos = [SEL(_pos,0), SEL(_pos,1), 0];
					_obj = "Land_Can_V3_F" createVehicle _pos;
					[[_obj],"life_fnc_simDisable",nil,true] call life_fnc_MP;
					_obj setPos _pos;
					_obj SVAR ["item",[_item,_value],true];
					SVAR_MNS [_itemName,0];
				};
			};

			case "fuelEmpty": {
				if(_value > 0) then {
					_pos = _unit modelToWorld[0,3,0];
					_pos = [SEL(_pos,0), SEL(_pos,1), 0];
					_obj = "Land_CanisterFuel_F" createVehicle _pos;
					[[_obj],"life_fnc_simDisable",nil,true] call life_fnc_MP;
					_obj setPos _pos;
					_obj SVAR ["item",[_item,_value],true];
					SVAR_MNS [_itemName,0];
				};
			};

			case "fuelFull": {
				if(_value > 0) then {
					_pos = _unit modelToWorld[0,3,0];
					_pos = [SEL(_pos,0), SEL(_pos,1), 0];
					_obj = "Land_CanisterFuel_F" createVehicle _pos;
					[[_obj],"life_fnc_simDisable",nil,true] call life_fnc_MP;
					_obj setPos _pos;
					_obj SVAR ["item",[_item,_value],true];
					SVAR_MNS [_itemName,0];
				};
			};

			case "coffee": {
				if (_value > 0) then {
					_pos = _unit modelToWorld[0,3,0];
					_pos = [SEL(_pos,0), SEL(_pos,1), 0];
					_obj = "Land_Can_V3_F" createVehicle _pos;
					[[_obj],"life_fnc_simDisable",nil,true] call life_fnc_MP;
					_obj setPos _pos;
					_obj SVAR ["item",[_item,_value],true];
					SVAR_MNS [_itemName,0];
				};
			};

			case "life_cash": {
				if(CASH > 0) then {
					_pos = _unit modelToWorld[0,3,0];
					_pos = [SEL(_pos,0), SEL(_pos,1), 0];
					_obj = "Land_Money_F" createVehicle _pos;
					_obj SVAR ["item",["money",GVAR_MNS [_item,0]],true];
					_obj setPos _pos;
					[[_obj],"life_fnc_simDisable",nil,true] call life_fnc_MP;
					SVAR_MNS ["life_cash",0];
				};
			};

			default {
				if(_value > 0) then {
					_pos = _unit modelToWorld[0,3,0];
					_pos = [SEL(_pos,0), SEL(_pos,1), 0];
					_obj = "Land_Suitcase_F" createVehicle _pos;
					[[_obj],"life_fnc_simDisable",nil,true] call life_fnc_MP;
					_obj setPos _pos;
					_obj SVAR ["item",[_item,_value],true];
					SVAR_MNS [_itemName,0];
				};
			};
		};
	} foreach (("true" configClasses (missionConfigFile >> "VirtualItems")) + ["life_cash"]);
} else {
	{
		if(typeName _x == typeName "") then {_item = _x;} else {_item = configName _x};
		_value = ITEM_VALUE(_item);
		_itemName = ITEM_VARNAME(_item);

		switch(_item) do {
			case "life_cash": {
				if(CASH > 0) then {
					_pos = _unit modelToWorld[0,3,0];
					_pos = [SEL(_pos,0), SEL(_pos,1), 0];
					_obj = "Land_Money_F" createVehicle _pos;
					_obj SVAR ["item",["money",GVAR_MNS [_item,0]],true];
					_obj setPos _pos;
					[[_obj],"life_fnc_simDisable",nil,true] call life_fnc_MP;
					SVAR_MNS ["life_cash",0];
				};
			};

			default {
				if(_value > 0) then {
					SVAR_MNS [_itemName,0];
				};
			};
		};
	} foreach (("true" configClasses (missionConfigFile >> "VirtualItems")) + ["life_cash"]);
};
