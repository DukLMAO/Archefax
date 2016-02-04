/*
	file: fn_placeableCancle
	location: Core\Cop\Placeables
	Desc: Allows case west (Cops) to place barriers on the ground
	Author: Maximum
*/
if (!life_barrier_active) exitWith {};
	deleteVehicle life_barrier_activeObj;
	life_barrier_active = false;
	life_barrier_activeObj = ObjNull;