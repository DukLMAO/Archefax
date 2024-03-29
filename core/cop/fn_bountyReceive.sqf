#include <macro.h>
/*
	File: fn_bountyReceive.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Notifies the player he has received a bounty and gives him the cash.
*/
private["_val","_total"];
_val = [_this,0,"",["",0]] call BIS_fnc_param;
_total = [_this,1,"",["",0]] call BIS_fnc_param;
_arrest = [_this,2,false,[false]] call BIS_fnc_param;
if(_arrest) then {
	titleText[format[localize "STR_Cop_BountyRecieve",[_val/3] call life_fnc_numberText],"PLAIN"];
} else {
	titleText[format[localize "STR_Cop_BountyKill",[_val/3] call life_fnc_numberText,[_total] call life_fnc_numberText],"PLAIN"];
};

ADD(BANK,_val/3);