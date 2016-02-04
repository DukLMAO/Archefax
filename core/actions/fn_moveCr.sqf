#include <macro.h>
/*
	fn_moveCr.sqf
	By: Ethan
*/

private["_target"];
_target = nearestObjects[getPos player,["Land_CargoBox_V1_F"],3] select 0;
if !(isNull _target) then {
	life_action_inUse = true;
	_target setPos((getPos player) vectorAdd(vectorDir player));
	_target attachTo[player,[0,3,1]];
	waitUntil {
   	 _target in (attachedObjects player);
	};
};
player reveal _target;


//life_actions = life_actions + [player addAction[localize["<t color='#FFFFFF'>%1</t>", "Stop Moving"],life_fnc_stopMoving,"",0,false,false,"",'']];
//life_action_inUse = false;
life_actions = life_actions + [player addAction[format["<t color='#FFFFFF'>%1</t>", "Stop Moving"],life_fnc_stopMoving,"",0,false,false,"",'']];