/*
	fn_packupBox.sqf
	By: Ethan
*/

private["_box","_ui","_progressBar","_cP","_cpRate","_titleText","title","fed"];
_box = nearestObjects[getPos player,["Land_CargoBox_V1_F"],3] select 0;
if(isNil "_box") exitWith {};
_fed = nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"];
if (player distance _fed < 2) exitWith {};
_cpRate = 0.000005;
disableSerialization;
_title = "Packing Up Box";

/*if(!(isNil "_box")) then
{
	hint localize "STR_ISTR_Box_Pack";*/

disableSerialization;
_title = "Packing Up Cargo Box";
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

while {true} do
{
	if(isNull _ui) then {
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNamespace getVariable "life_progress";
		_progressBar = _ui displayCtrl 38201;
		_titleText = _ui displayCtrl 38202;
	};
	_cP = _cP + _cpRate;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_isDowned) exitWith {}; //downed
	if(player distance _box > 5) exitWith {};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
if(!alive player OR life_isDowned) exitWith {life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(player distance _box > 5) exitWith {hint localize "STR_Pack_Stay"; 5 cutText ["","PLAIN"]; life_action_inUse = false;};
life_action_inUse = false;

deleteVehicle _box;
hint localize "STR_NOTF_Box";

[true,"cargobox",1] call life_fnc_handleInv;