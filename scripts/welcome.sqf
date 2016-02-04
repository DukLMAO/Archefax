/*
	File: fn_welcomeNotification.sqf

	Description:
	Called upon first spawn selection and welcomes our player.
*/
_onScreenTime = 4.1;

_role1 = "Hello!";
_role1names = ["Welcome to", "Archetype Gaming Altis life"];
_role2 = "Teamspeak";
_role2names = ["archetypegts.ts.nfoservers.com"];
_role3 = "Website";
_role3names = ["archetypegaming.ipbhost.com"];
_role4 = "Built from Altis Life 4.0.0";
_role4names = ["by the Archetype Dev Team"];
_role5 = "Developer";
_role5names = ["Ethan"];
_role6 = "Owner";
_role6names = ["Ethan"];
_role7 = "Head Admin";
_role7names = ["Bobey"];
_role8 = "Admins";
_role8names = ["Karl","Hershmek","Tyrone"];
_role9 = "Moderators";
_role9names = ["Foxtrot","Griffinhawk","D3V1L","Ghost"];
_role10 = "Designers";
_role10names = ["Fuzzy","Tyrone"];
_role11 = "Enjoy your stay";
_role11names = ["Have fun and follow the rules<br/>located on the map and website<br/>"];
_role12 = "Wall of Fame";
_role12names = ["Tycoon","Ghost","Triix","Cuzzi","Greenarrow"];

{
	sleep 2;
	_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='0.50' color='#FF0000' align='right'>%1<br /></t>", _memberFunction];
	_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";
	_onScreenTime + (((count _memberNames) - 1) * 0.5);
	[
		_finalText,
		[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
		[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
		_onScreenTime,
		0.5
	] spawn BIS_fnc_dynamicText;
	sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
	[_role1, _role1names],
	[_role2, _role2names],
	[_role3, _role3names],
	[_role4, _role4names],
	[_role5, _role5names],
	[_role6, _role6names],
	[_role7, _role7names],
	[_role8, _role8names],
	[_role9, _role9names],
	[_role10, _role10names],
	[_role11, _role11names],
	[_role12, _role12names]
];
