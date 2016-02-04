#include <macro.h>
/*
	File: fn_revivePlayer.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Starts the revive process on the player.
*/
private["_target","_revivable","_targetName","_ui","_progressBar","_titleText","_cP","_title","_incar","_ploc","_dice"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_incar = [_this,1,false,[false]] call BIS_fnc_param;
_ploc = [_this,2,[],[[]]] call BIS_fnc_param;
//if(!([false,"defibrillator",1] call life_fnc_handleInv)) exitWith {};
if(life_crevive) exitWith {hint "You must wait 3 minutes for the defibrillator to recharge before you can use it again!"};
if(isNull _target) exitWith {}; //DAFUQ?@!%$!R?EFFD?TGSF?HBS?DHBFNFD?YHDGN?D?FJH
_revivable = _target GVAR ["Revive",FALSE];
if(_revivable) exitWith {};
if(_target GVAR ["Reviving",ObjNull] == player) exitWith {hint localize "STR_Medic_AlreadyReviving";};
if(player distance _target > 5) exitWith {}; //Not close enough.

//Fetch their name so we can shout it.
_targetName = _target GVAR ["name","Unknown"];
_title = format[localize "STR_Medic_Progress",_targetName];
life_action_inUse = true; //Lockout the controls.

_target SVAR ["Reviving",player,TRUE];
//Setup our progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = GVAR_UINS ["life_progress",displayNull];
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

//Lets reuse the same thing!
while {true} do {
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] call life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};

	sleep .15;
	_cP = _cP + .005;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_isDowned) exitWith {}; //Downed
	if(life_interrupted) exitWith {};
	if((player GVAR ["restrained",false])) exitWith {};
	if(player distance _target > 4) exitWith {_badDistance = true;};
	if(_target GVAR ["Revive",FALSE]) exitWith {};
	if(_target GVAR ["Reviving",ObjNull] != player) exitWith {};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(_target GVAR ["Reviving",ObjNull] != player) exitWith {hint localize "STR_Medic_AlreadyReviving"};
_target SVAR ["Reviving",NIL,TRUE];
if(!alive player OR life_isDowned) exitWith {life_action_inUse = false;};
if(_target GVAR ["Revive",FALSE]) exitWith {hint localize "STR_Medic_RevivedRespawned"};
if((player GVAR ["restrained",false])) exitWith {life_action_inUse = false;};
if(!isNil "_badDistance") exitWith {titleText[localize "STR_Medic_TooFar","PLAIN"]; life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};


life_action_inUse = false;
_target SVAR ["Revive",TRUE,TRUE];
[[profileName,_incar,_ploc],"life_fnc_revivedciv",_target,FALSE] call life_fnc_MP;

sleep .6;
player reveal _target;

life_crevive = true;
sleep (3 * 60);
life_crevive = false;