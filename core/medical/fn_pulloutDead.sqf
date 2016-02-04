/*
    File: fn_pulloutDead.sqf
    Author: Ethan
*/
private["_veh"];
_veh = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;


if (isNull(_veh)) exitWith {};

{
    if !(alive _x) then
    {
        life_action_inUse = true;
        [_x, true, position player] call life_fnc_revivePlayer;
        waitUntil{!life_action_inUse};
        _x setPos (getPos player);
    };
} forEach (crew _veh);

hint "You Have Revived The Dead People In This Vehicle";