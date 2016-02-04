/*
	file: fn_placeablesRemove
	location: Core\Cop\Placeables
	Desc: Allows case west (Cops) to place barriers on the ground
	Author: Maximum
*/
private["_target"];
_target = cursorTarget;
if(isNil "_target") exitwith {};
if(isNull _target) exitWith {};
if(_target == player) exitWith {hint "You cannot delete people";};
deleteVehicle _target;
closeDialog 0;
hint "Object Deleted";
