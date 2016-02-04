/*
	fn_organRekt.sqf
	By: Ethan
	Description: This is what happens to someone who gets a kidney taken
*/

/*
	file: fn_hasOrgan.sqf
	author: [midgetgrimm] - www.grimmlife.com


private["_organThief"];
_organThief = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _organThief) exitWith {};*/
/*
cursorTarget spawn  {
	if ((playerside == civilian) || (playerside == west)) then
	{
		life_max_health = .50;
		life_thirst =  50;
		life_hunger =  50;
		if(damage player < (1 - life_max_health)) then {player setDamage (1 - life_max_health);};
		"dynamicBlur" ppEffectEnable true;
		"dynamicBlur" ppEffectAdjust [2];
		"dynamicBlur" ppEffectCommit 1;
		sleep 300;
	};
	"dynamicBlur" ppEffectEnable false;
	life_max_health = 1;
};*/


/*
[[1,format["%1 has cut out a kidney from %2.",name player, name _organThief]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;//lets people know you are stealing kidneys
[true,"kidney",1] call life_fnc_handleInv;//put stolen kidney into inventory of thief
[[getPlayerUID player,name player,"919"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;//add to wanted list
sleep 300;//no more organ theft for at least 5 minutes, so they cant just do it over and over, can do whatever time you want
player setVariable["hasOrgan",false,true];//allow them to be able to take organs again- setting a variable
*/