#include <macro.h>
/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main functionality for gathering.
*/
if(isNil "life_action_gathering") then {life_action_gathering = false;};
private["_gather","_itemWeight","_diff","_itemName","_resourceZones","_zone"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","peaches_5","heroin_1","cocaine_1","weed_1","shroom_1","lsd_1","wood_2","cocaine_2","wood_1","meth_1","lsd_2","slave_trader_center","grape_1","grape_2","grape_3","grape_4","grape_5","gold_1","apple_5","peaches_1_1", "yeast_1", "corn_1", "sugar_1","ephedra_1","lithium_1","phosphorus_1"];
_zone = "";

if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.
life_action_gathering = true;
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(EQUAL(_zone,"")) exitWith {life_action_gathering = false;};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4","apple_5"]): {_gather = ["apple",10];};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4","peaches_5","peaches_1_1"]): {_gather = ["peach",10];};
	case (_zone in ["heroin_1"]): {_gather = ["heroin_unprocessed",4];};
	case (_zone in ["cocaine_1"]): {_gather = ["cocaine_unprocessed",4];};
	case (_zone in ["weed_1"]): {_gather = ["cannabis",4];};
	case (_zone in ["shroom_1"]): {_gather = ["mushroom",4];};
	case (_zone in ["lsd_1"]): {_gather = ["frog",4];};
	case (_zone in ["meth_1"]): {_gather = ["methu",4];};
	case (_zone in ["wood_1"]): {_gather = ["lumber",1];};
	case (_zone in ["wood_2"]): {_gather = ["lumber",1];};
	case (_zone in ["ephedra_1"]): {_gather = ["ephedra",4];};
	case (_zone in ["phosphorus_1"]): {_gather = ["phosphorus",4];};
	case (_zone in ["lithium_1"]): {_gather = ["lithium",4];};
	case (_zone in ["slave_trader_center"]): {_gather = ["tobacco",6];};
	case (_zone in ["grape_1","grape_2","grape_3","grape_4","grape_5"]): {_gather = ["grape",8];};
	case (_zone in ["yeast_1"]): {_gather = ["yeast",4];};
	case (_zone in ["corn_1"]): {_gather = ["corn",4];};
	case (_zone in ["sugar_1"]): {_gather = ["sugar",4];};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {};

_diff = [SEL(_gather,0),SEL(_gather,1),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(EQUAL(_diff,0)) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_gathering = true;

for "_i" from 0 to 2 do {
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,SEL(_gather,0),_diff] call life_fnc_handleInv)) then {
	_itemName = M_CONFIG(getText,"VirtualItems",SEL(_gather,0),"displayName");
	titleText[format[localize "STR_NOTF_Gather_Success",(localize _itemName),_diff],"PLAIN"];
};

life_action_gathering = false;
