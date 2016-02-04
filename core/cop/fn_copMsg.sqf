#include <macro.h>
/*
	file: fn_copMsg.sqf
*/

private["_to","_type","_playerData","_msg"];
disableSerialization;

_type = [_this,0,-1] call BIS_fnc_param;
_playerData = [_this,1,-1] call BIS_fnc_param;
_msg = [_this,2,"",[""]] call BIS_fnc_param;

_display = findDisplay 88888;
_cPlayerList = _display displayCtrl 88881;
_cMessageEdit = _display displayCtrl 88884;

if(({side _x == west} count playableUnits) == 0) exitWith {hint format["The ASD is currently unavailable."];};
ctrlShow[888895,false];
//if(_msg == "") exitWith {hint "You must enter a message to send!";ctrlShow[888895,true];};
[[ObjNull,_msg,player,1],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
_to = "The Police";
hint format["You sent %1 a message: %2",_to,_msg];
ctrlShow[888895,true];
closeDialog 887890;

switch(_type) do
{
	case 1:
	{
		if(({side _x == west} count playableUnits) == 0) exitWith {hint format["The ASD is currently unavailable."];};
		ctrlShow[888895,false];
		if(_msg == "") exitWith {hint "You must enter a message to send!";ctrlShow[888895,true];};
		[[ObjNull,_msg,player,1],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		_to = "The Police";
		hint format["You sent %1 a message: %2",_to,_msg];
		ctrlShow[888895,true];
		closeDialog 887890;
	};
};