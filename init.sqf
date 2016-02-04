StartProgress = false;
enableSaving[false,false];
enableRadio false;

life_versionInfo = "Altis Life RPG v4.0";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\fn_statusBar.sqf";
[] execVM "scripts\nosidechat.sqf"; //Nosidechat Script
[] execVM "scripts\welcome.sqf";
[] execVM "announcements\message.sqf";
0 = execVM "IgiLoad\IgiLoadInit.sqf";

StartProgress = true;

[] spawn life_fnc_showDirectVON;

DYNAMICMARKET_boughtItems = [];
[[getPlayerUID player],"TON_fnc_playerLogged",false,false] spawn life_fnc_MP;

[
    15*60, // seconds to delete dead bodies (0 means don't delete)
    1*60, // seconds to delete dead vehicles (0 means don't delete)
    25*60, // seconds to delete immobile vehicles (0 means don't delete)
    5*60, // seconds to delete dropped weapons (0 means don't delete)
    20*60, // seconds to deleted planted explosives (0 means don't delete)
    2*60 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM 'scripts\repetitive_cleanup.sqf';