/*
	File: fn_progressBaren.sqf
*/
private["_cpRate","_title","_progressBar","_titleText","_cp","_ui","_object"];
_object = _this Select 0;
//Setup the progress bar
_cpRate = 0.0005;
disableSerialization;
_title = "Breaking out prisoner";

[[4, format["%1 Is Attempting to Hack A Prisoner Out Of Jail From The Off-Shore Govt. HQ!!!", name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

life_action_inUse = true;

//Setup the progress bar
disableSerialization;
_title = "Breaking out prisoner";
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

while {true} do
{
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	sleep 0.26;
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
	if(life_interrupted) exitWith {};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(!alive player OR life_isDowned) exitWith {life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
life_action_inUse = false;

life_escape = true;
_object setPos (getMarkerPos "jail_breakout");

[[4, format["%1 Has Successfully Broken a Prisoner Out of Jail!!!", name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

[[getPlayerUID player,profileName,"14"],"life_fnc_wantedAddP",false,false] spawn life_fnc_MP;