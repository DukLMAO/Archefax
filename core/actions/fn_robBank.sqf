/*
   fn_robBank.sqf
   Author: Ethan
*/

private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos","_lastrobbed"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name
_pos = GetPos player;

if({side _x == west} count playableUnits < 4) exitWith {hint "There must be four or more cops online for you to initiate a robbery!";};
if(vehicle player != _robber) exitWith { hint "You need to exit your vehicle!"; };
if !(alive _robber) exitWith { hint "The Bank dude is dead!"; };
if (currentWeapon _robber == "" || currentWeapon _robber  == "Binocular" || currentWeapon _robber  == "Rangefinder") exitWith { hint "You need a gun to intimidate me!"; };
if (playerSide == west) exitWith { hint "You Dirty Pig"; };
if (playerSide == independent) exitWith { hint "Dont you have people to save?"; };
hint "Interrogating clerk...";

sleep round(random 5);
if(_shop getVariable "rip") exitWith
{
   hint "This shop is already being robbed!";
};
_shop setVariable["rip",true,true];
_rip = true;
_kassa = 15000 + round(random 15000); //setting the money in the registry, anywhere from 4000 to 12000.
[[_shop,_robber,_action,-1],"TON_fnc_shopState",false,false] spawn life_fnc_MP; //sending information to the server so the animations and removeaction can be performed for all players if the checks clear.

_Pos = position player;
            _marker = createMarker ["Marker200faefsd", _Pos];
            "Marker200faefsd" setMarkerColor "ColorRed";
            "Marker200faefsd" setMarkerText "!DANGER! Robbery in progess !DANGER!";
            "Marker200faefsd" setMarkerType "mil_warning";

[[3, format["<t size='3'><t color='#FF0000'>ROBBERY</t></t> <br/><t size = '1.5'>%1 is robbing the Bank of Kavala!!", name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

//Setup our progress bar.

_cops = (west countSide playableUnits);
if(_cops < 2) exitWith{[[_vault,-1],"disableSerialization;",false,false] spawn life_fnc_MP; hint "There isnt enough Police to rob gas station!";};
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.0015;

if(_rip) then
{
    while{true} do
    {
      _shop removeAction _action;
        sleep  2.50;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Robbery in Progress, stay close (15m) (%1%2)...",round(_cP * 100),"%"];
        if(_cP >= 1) exitWith {};
        if(_robber distance _shop > 17) exitWith {};
        if!(alive _robber) exitWith { _rip = false; };
      playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", player];
    }; // the loop continues til the progressbar is full, distance is exceeded or robber dies.


   deleteMarker "Marker200faefsd";
    if!(alive _robber) exitWith { _rip = false; };
    if(_robber distance _shop > 17) exitWith { hint "You need to stay within 15m to Rob the Clerk! - Now the vault is locked."; 5 cutText ["","PLAIN"]; _rip = false; };
    5 cutText ["","PLAIN"];
    titleText[format["You have stolen $%1, now get away before the cops arrive!",[_kassa] call life_fnc_numberText],"PLAIN"];
    life_cash = life_cash + _kassa;
    _rip = false;
    life_use_atm = false;
   [[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
    sleep (30 + random(180)); //Clerk in the store takes between 30-210 seconds before he manage to warn the police about the robbery.
    life_use_atm = true; // Robber can not use the ATM at this point.
    if!(alive _robber) exitWith {};

};
sleep 900;
_shop setVariable["rip",false,true];
_action = _shop addAction["Rob Bank",life_fnc_robShops];
[[_shop,_robber,_action,0],"TON_fnc_shopState",false,false] spawn life_fnc_MP;