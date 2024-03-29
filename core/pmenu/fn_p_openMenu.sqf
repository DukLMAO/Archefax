#include <macro.h>
/*
	File: fn_p_openMenu.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Opens the players virtual inventory menu
*/
if(!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6"];
createDialog "playerSettings";
disableSerialization;

_display = findDisplay 2001;

_Btn1 = _display displayCtrl 2011;

switch(playerSide) do {
	case west: {
		ctrlShow[1999,false];
		ctrlShow[2011,false];
	};

	case civilian: {
		ctrlShow[2012,false];
		ctrlShow[20003,false]; // COP Placeables
	};

	case independent: {
	    ctrlShow[20003,false]; // COP Placeables
	    ctrlShow[2012,false];
		ctrlShow[1999,false];
		ctrlShow[2011,false];
	};
};

if(FETCH_CONST(life_adminlevel) < 1) then {
	ctrlShow[2020,false];
	ctrlShow[2021,false];
};

[] call life_fnc_p_updateMenu;