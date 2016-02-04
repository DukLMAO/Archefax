private["_name","_group"];
_name = [_this,0,"",[""]] call BIS_fnc_param;
_group = [_this,1,grpNull,[grpNull]] call BIS_fnc_param;
if(_name == "" OR isNull _group) exitWith {}; //Fail horn anyone?
if(!isNil {(group player) GVAR "gang_name"}) exitWith {hint "You are already in a gang"};

[player] join _group;
[[4,_group],"TON_fnc_updateGang",false,false] call life_fnc_MP;
