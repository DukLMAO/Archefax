/*
	Name: fn_jailtp.sqf
	Description: Keeps a dirty no-good nigger in his rightful place - Jail
	By: Ethan
*/

if(!(life_is_arrested)) exitWith {};
if ((life_is_arrested) && (!(life_escape))) then {
	if (player distance (getMarkerPos "jail_marker") > 35) then {
		(player setPos (getMarkerPos "jail_marker"));
	};
};