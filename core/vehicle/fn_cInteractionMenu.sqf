/*
	fn_cInteractionMenu.sqf
	By: Ethan
*/

#define Btn1 37550
#define Btn2 37551
#define Title 37401
private["_box","_display","_curTarget","_Btn1","_Btn2"];
_box = nearestObjects[getPos player,["Land_CargoBox_V1_F"],3] select 0;
if(isNil "_box") exitWith {};
if(!dialog) then {
	createDialog "cInteraction_Menu";
};
disableSerialization;
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
life_cInact_curTarget = _box;

/*
_vehData = life_vInact_curTarget getVariable["vehicle_info_owners",[]];
_owner = false;
if(count _vehData  > 0) then
{
	_vehOwner = (_vehData select 0) select 0;
	if((getPlayerUID player) == _vehOwner) exitWith
	{
		_owner = true;
	};
};*/


_Btn1 ctrlSetText localize "STR_ISTR_Box_Pack";
_Btn1 buttonSetAction "[life_cInact_curTarget] spawn life_fnc_packupBox;";

_Btn2 ctrlSetText localize "STR_vInAct_SearchVehicle";
_Btn2 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_vehInvSearch;";
if (playerside != west) then
{
    _Btn2 ctrlShow false;
} else {
    _Btn2 ctrlShow true;
};