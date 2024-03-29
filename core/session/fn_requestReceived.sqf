#include <macro.h>
#define SPY "spy_log"
/*
	File: fn_requestReceived.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Called by the server saying that we have a response so let's
	sort through the information, validate it and if all valid
*/
life_session_tries = life_session_tries + 1;
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
if(life_session_tries > 3) exitWith {cutText[localize "STR_Session_Error","BLACK FADED"]; 0 cutFadeOut 999999999;};

0 cutText [localize "STR_Session_Received","BLACK FADED"];
0 cutFadeOut 9999999;

//Error handling and junk..
if(isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(EQUAL(typeName _this,"STRING")) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(EQUAL(count _this,0)) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(EQUAL(SEL(_this,0),"Error")) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(!(EQUAL(steamid,SEL(_this,0)))) exitWith {[] call SOCK_fnc_dataQuery;};

//Lets make sure some vars are not set before hand.. If they are get rid of them, hopefully the engine purges past variables but meh who cares.
if(!isServer && (!isNil "life_adminlevel" OR !isNil "life_coplevel" OR !isNil "life_donator")) exitWith {
	[[profileName,getPlayerUID player,"VariablesAlreadySet"],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
	[[SPY,["VariablesAlreadySet"],profileName,steamid],"TON_fnc_logIt",false,false] call life_fnc_MP;
	[[profileName,format["Variables set before client initialization...\nlife_adminlevel: %1\nlife_coplevel: %2\nlife_donator: %3",life_adminlevel,life_coplevel,life_donator]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
	sleep 0.9;
	failMission "SpyGlass";
};

//Parse basic player information.
CASH = parseNumber (SEL(_this,2));
BANK = parseNumber (SEL(_this,3));
CONST(life_adminlevel,parseNumber (SEL(_this,4)));
CONST(life_donator,parseNumber(SEL(_this,5)));

//Loop through licenses
if(count (SEL(_this,6)) > 0) then {
	{SVAR_MNS [SEL(_x,0),SEL(_x,1)];} foreach (SEL(_this,6));
};

//Parse side specific information.
switch(playerSide) do {
	case west: {
		CONST(life_coplevel, parseNumber(SEL(_this,7)));
		CONST(life_medicLevel,0);
		life_blacklisted = SEL(_this,9);
	};

	case civilian: {
		life_is_arrested = SEL(_this,7);
		CONST(life_coplevel, 0);
		CONST(life_medicLevel, 0);
		life_houses = SEL(_this,9);
		{
			_house = nearestBuilding (call compile format["%1", SEL(_x,0)]);
			life_vehicles pushBack _house;
		} foreach life_houses;

		life_gangData = SEL(_this,10);
		if(!(EQUAL(count life_gangData,0))) then {
			[] spawn life_fnc_initGang;
		};
		[] spawn life_fnc_initHouses;
	};

	case independent: {
		CONST(life_medicLevel, parseNumber(SEL(_this,7)));
		CONST(life_coplevel,0);
	};
};


life_gear = SEL(_this,8);
if(playerSide == independent) then {
	life_gear = [];
};
life_copgear = life_gear;
[] call life_fnc_loadGear;

/* Vehicle/Garage information */
if(count (SEL(_this,12)) > 0) then {
	{life_vehicles pushBack _x;} foreach (SEL(_this,12));
};

/* Player's living status and last known position */
last_known_position = _this select 13;
life_is_alive = _this select 14;


switch(FETCH_CONST(life_donator)) do
{
	case 1: {life_paycheck = life_paycheck + 800;};
	case 2: {life_paycheck = life_paycheck + 1400;};
	case 3: {life_paycheck = life_paycheck + 1800;};
	case 4: {life_paycheck = life_paycheck + 2000;};
	case 5: {life_paycheck = life_paycheck + 2500;};
	case 6: {life_paycheck = life_paycheck + 3000;};
};

switch(FETCH_CONST(life_copLevel)) do
{
	case 1: {life_paycheck = life_paycheck + 500;};
	case 2: {life_paycheck = life_paycheck + 600;};
	case 3: {life_paycheck = life_paycheck + 700;};
	case 4: {life_paycheck = life_paycheck + 800;};
	case 5: {life_paycheck = life_paycheck + 900;};
	case 6: {life_paycheck = life_paycheck + 1000;};
	case 7: {life_paycheck = life_paycheck + 69000;};
};

switch(FETCH_CONST(life_medicLevel)) do
{
	case 1: {life_paycheck = life_paycheck + 500;};
	case 2: {life_paycheck = life_paycheck + 600;};
	case 3: {life_paycheck = life_paycheck + 700;};
	case 4: {life_paycheck = life_paycheck + 750;};
	case 5: {life_paycheck = life_paycheck + 800;};
	case 5: {life_paycheck = life_paycheck + 1000;};
};

life_session_completed = true;