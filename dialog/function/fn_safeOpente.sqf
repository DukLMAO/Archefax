#include <macro.h>
/*
	File: fn_safeOpent.sqf
	Author: Ethan

	Description:
	Territory $$$$
*/
private["_rate"];
_rate = 10000 + round(random 25000);
//if(dialog) exitWith {}; //A dialog is already open.
life_tObj = (nearestObjects[getPosATL player,["Flagpole_F"],25]) select 0;
if(isNull life_tObj) exitWith {};
if(playerSide != civilian) exitWith {};
//if(life_tObj (getVariable["gangOwner",grpPlayer,false])) exitWith {};
//if(life_empty) exitWith {hint "There are currently no taxes to collect"};
if(life_emptye) exitWith {hint "There are currently no taxes to collect"};
if((life_tObj getvariable ["empty",false])) exitWith {hint "There are currently no taxes to collect"};
if(EQUAL(life_emptye,false)) then
{
	life_cash = life_cash + _rate;
	hint "You Have Collected Your Territory Taxes. New Territory Taxes Will Be Available in 30 Minutes";
	life_tObj setVariable["empty",false,true];
	life_emptye = true;
	sleep (30*60);
	life_emptye = false;
	hint "East Territory Taxes Are Now Available";
};

//uiSleep 5;

//hint "Territory Taxes Are Now Available";
//life_empty = false;