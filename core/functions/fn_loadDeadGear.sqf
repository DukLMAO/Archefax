#include <macro.h>
/*
	File: fn_loadDeadGear.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	BLAH
*/
private["_allowedItems","_loadout","_primary","_launcher","_handgun","_magazines","_uniform","_vest","_backpack","_items","_primitems","_secitems","_handgunitems","_uitems","_vitems","_bitems","_handle"];
_itemArray = [_this,0,[],[[]]] call BIS_fnc_param;

_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};


_uniform = [_itemArray,0,"",[""]] call BIS_fnc_param;
_vest = [_itemArray,1,"",[""]] call BIS_fnc_param;
_backpack = [_itemArray,2,"",[""]] call BIS_fnc_param;
_goggles = [_itemArray,3,"",[""]] call BIS_fnc_param;
_headgear = [_itemArray,4,"",[""]] call BIS_fnc_param;
_items = [_itemArray,5,[],[[]]] call BIS_fnc_param;
_prim = [_itemArray,6,"",[""]] call BIS_fnc_param;
_seco = [_itemArray,7,"",[""]] call BIS_fnc_param;
_uItems = [_itemArray,8,[],[[]]] call BIS_fnc_param;
_uMags = [_itemArray,9,[],[[]]] call BIS_fnc_param;
_bItems = [_itemArray,10,[],[[]]] call BIS_fnc_param;
_bMags = [_itemArray,11,[],[[]]] call BIS_fnc_param;
_vItems = [_itemArray,12,[],[[]]] call BIS_fnc_param;
_vMags = [_itemArray,13,[],[[]]] call BIS_fnc_param;
_pItems = [_itemArray,14,[],[[]]] call BIS_fnc_param;
_hItems = [_itemArray,15,[],[[]]] call BIS_fnc_param;
_yItems = [_itemArray,16,[],[[]]] call BIS_fnc_param;
_launch = [_itemArray,17,"",[""]] call BIS_fnc_param;

if(!(EQUAL(_goggles,""))) then {_handle = [_goggles,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(!(EQUAL(_headgear,""))) then {_handle = [_headgear,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(!(EQUAL(_uniform,""))) then {_handle = [_uniform,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(!(EQUAL(_vest,""))) then {_handle = [_vest,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(!(EQUAL(_backpack,""))) then {_handle = [_backpack,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};

/*
// Removing lethal rounds from dumbass privates or cadets who synced gear with them
if ((playerSide == west) && ((FETCH_CONST(life_coplevel)) < 3)) then {
    {
        if (_x == "30Rnd_65x39_caseless_mag") then {
            _uMags set [_foreachindex, -1];
        };
    } foreach _uMags;

    {
        if (_x == "30Rnd_65x39_caseless_mag") then {
            _bMags set [_foreachindex, -1];
        };
    } foreach _bMags;

    {
        if (_x == "30Rnd_65x39_caseless_mag") then {
            _vMags set [_foreachindex, -1];
        };
    } foreach _vMags;
};

SUB(_uMags,[-1]);
SUB(_bMags,[-1]);
SUB(_vMags,[-1]);


/* Hotfix for losing virtual items on login */
if(!isNil {SEL(_this,0)}) then {
	ADD(life_maxWeight,(round(FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,(backpack player),"maximumload") / 4)));
};

{_handle = [_x,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};} foreach _items;

{player addItemToUniform _x;} foreach (_uItems);
{(uniformContainer player) addItemCargoGlobal [_x,1];} foreach (_uMags);
{player addItemToVest _x;} foreach (_vItems);
{(vestContainer player) addItemCargoGlobal [_x,1];} foreach (_vMags);
{player addItemToBackpack _x;} foreach (_bItems);
{(backpackContainer player) addItemCargoGlobal [_x,1];} foreach (_bMags);
life_maxWeight = 100;

{
    [true,SEL(_x,0),SEL(_x,1)] call life_fnc_handleInv;
} foreach (_yItems);

life_maxWeight = 24;
//Primary & Secondary (Handgun) should be added last as magazines do not automatically load into the gun.
if(!(EQUAL(_prim,""))) then {_handle = [_prim,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(!(EQUAL(_seco,""))) then {_handle = [_seco,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(!(EQUAL(_launch,""))) then {_handle = [_launch,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};

{
    if (!(EQUAL(_x,""))) then {
        player addPrimaryWeaponItem _x;
    };
} foreach (_pItems);
{
    if (!(EQUAL(_x,""))) then {
        player addHandgunItem _x;
    };
} foreach (_hItems);

if(playerSide == independent && {EQUAL(uniform player,"U_Rangemaster")}) then {
	[[player,0,"textures\medic_uniform.jpg"],"life_fnc_setTexture",true,false] call life_fnc_MP;
};
[] call life_fnc_Uniformscolor;


