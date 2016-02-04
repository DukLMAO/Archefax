/*
	File: fn_stopMoving.sqf

	By: Ethan
*/
detach cursorTarget;
cursorTarget setpos(player ModelToWorld[0, 3, 0]);
life_actions = life_actions + [player removeAction[format["<t color='#FFFFFF'>%1</t>", "Stop Moving"],life_fnc_stopMoving,"",0,false,false,"",'']];
life_action_inUse = false;