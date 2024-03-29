/*
	File: fn_vInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Replaces the mass addactions for various vehicle actions
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Title 37401
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6"];
if(!dialog) then {
	createDialog "vInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
if(!_isVehicle) exitWith {closeDialog 0;};
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
life_vInact_curTarget = _curTarget;


_vehData = life_vInact_curTarget getVariable["vehicle_info_owners",[]];
_owner = false;
if(count _vehData  > 0) then
{
	_vehOwner = (_vehData select 0) select 0;
	if((getPlayerUID player) == _vehOwner) exitWith
	{
		_owner = true;
	};
};


//Button 1 - Set vehicle repair action
_Btn1 ctrlSetText localize "STR_vInAct_Repair";
_Btn1 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_repairTruck;";

if("ToolKit" in (items player) && (damage _curTarget < 1)) then
{
    _Btn1 ctrlEnable true;
} else {
    _Btn1 ctrlEnable false;
};

//Button 2 - Set pushboat action if curTarget is a boat else if curTarget is a kart displays some kart actions
if(_curTarget isKindOf "Ship") then
{
	_Btn2 ctrlSetText localize "STR_vInAct_PushBoat";
	_Btn2 buttonSetAction "[] spawn life_fnc_pushObject; closeDialog 0;";
	if(_curTarget isKindOf "Ship" && {local _curTarget} && {count crew _curTarget == 0}) then
	{
		_Btn2 ctrlEnable true;
	} else {
	    _Btn2 ctrlEnable false
	};
} else {
	if(typeOf (_curTarget) in ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F","B_Heli_Transport_03_unarmed_F","O_Heli_Transport_04_covered_F","O_Heli_Transport_04_medevac_F"]) then
	{
		_Btn2 ctrlSetText localize "STR_vInAct_GetInKart";
		_Btn2 buttonSetAction "player moveInDriver life_vInact_curTarget; closeDialog 0;";
		if(count crew _curTarget == 0 && {canMove _curTarget} && {locked _curTarget == 0}) then
		{
		    _Btn2 ctrlEnable true;
		} else {
			_Btn2 ctrlEnable false
		};
	} else {
		_Btn2 ctrlSetText localize "STR_vInAct_Unflip";
		_Btn2 buttonSetAction "life_vInact_curTarget setPos [getPos life_vInact_curTarget select 0, getPos life_vInact_curTarget select 1, (getPos life_vInact_curTarget select 2)+0.5]; closeDialog 0;";
		if(count crew _curTarget == 0 && {canMove _curTarget}) then
		{
			_Btn2 ctrlEnable false;
		} else {
			_Btn2 ctrlEnable true;
		};
	};
};

//Button 3 - Check Vehicle Registration
_Btn3 ctrlSetText localize "STR_vInAct_Registration";
_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_searchVehAction;";


//Button 4 - Pull Out and Revive Dead Bodies
_Btn4 ctrlSetText "Rescue Dead";
_Btn4 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutDead; closeDialog 0;";

//Button 5 - undefined
if (_owner && life_vInact_curTarget getVariable["gps",false]) then {
	_Btn5 ctrlEnable true;
	_Btn5 ctrlSetText "Toggle GPS";
	_Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_toggleGPS; closeDialog 0;"
} else {
	_Btn5 ctrlShow false;
};
//Button 6 - Impound
_Btn6 ctrlSetText localize "STR_vInAct_Impound";
_Btn6 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_impoundActionM;";

if(!((player distance (getMarkerPos "kav_impound") < 30) OR  (player distance (getMarkerPos "ath_impound") < 30) OR (player distance (getMarkerPos "pyr_impound") < 30) OR  (player distance (getMarkerPos "ath_impound_2") < 30) OR  (player distance (getMarkerPos "zar_impound") < 30) OR  (player distance (getMarkerPos "sof_impound") < 30))) then  {
	_Btn6 ctrlEnable false;
};