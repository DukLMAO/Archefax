#include <macro.h>
/*
	File: fn_rec.sqf
	Author: Ethan
*/
private["_rate"];
_rate = 20000 + round(random 40000);

life_cash = life_cash + _rate;
hint "You Have Collected Your Territory Taxes";