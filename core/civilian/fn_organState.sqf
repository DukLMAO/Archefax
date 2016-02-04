/*
	fn_organState.sqf
	By: Ethan

[] spawn  {
	while {true} do
	{
		waitUntil {player getvariable ["missingOrgan",true,true];};
		while {player getVariable ["missingOrgan",true,true]; do
	{
		life_organ = 0;
	} else {
		life_organ = 1;
	};
};
};*/
