#include <macro.h>
/*
    File: fn_gearRevive.sqf
    Author: Derek Benson

    Description:
    Based off of saveGear.sqf, allows players to retain all physical items upon
    being revived.
*/
private["_return","_uItems","_bItems","_vItems","_pItems","_hItems","_yItems","_uMags","_vMags","_bMags","_pMag","_hMag","_uni","_ves","_bag","_handled"];
_return = [];

_return pushBack uniform player;
_return pushBack vest player;
_return pushBack backpack player;
_return pushBack goggles player;
_return pushBack headgear player;
_return pushBack assignedITems player;
if(playerSide == west || playerSide == civilian && {EQUAL(LIFE_SETTINGS(getNumber,"save_civ_weapons"),1)}) then {
    _return pushBack RIFLE;
    _return pushBack PISTOL;
} else {
    _return pushBack [];
    _return pushBack [];
};

_uItems = [];
_uMags  = [];
_bItems = [];
_bMags  = [];
_vItems = [];
_vMags  = [];
_pItems = [];
_hItems = [];
_yItems = [];
_uni = [];
_ves = [];
_bag = [];

if(!(EQUAL(uniform player,""))) then {
    {
        if (_x in (magazines player)) then {
			ADD(_uMags,[_x]);
        } else {
            ADD(_uItems,[_x]);
        };
    } forEach (uniformItems player);
};

if(!(EQUAL(backpack player,""))) then {
    {
        if (_x in (magazines player)) then {
			ADD(_bMags,[_x]);
        } else {
			ADD(_bItems,[_x]);
        };
    } forEach (backpackItems player);
};

if(!(EQUAL(vest player,""))) then {
    {
        if (_x in (magazines player)) then {
			ADD(_vMags,[_x]);
        } else {
			ADD(_vItems,[_x]);
        };
    } forEach (vestItems player);
};

if(count (primaryWeaponMagazine player) > 0) then {
    _pMag = SEL((primaryWeaponMagazine player),0);

    if(!(EQUAL(_pMag,""))) then {
        _uni = player canAddItemToUniform _pMag;
        _ves = player canAddItemToVest _pMag;
        _bag = player canAddItemToBackpack _pMag;
        _handled = false;

        if(_ves) then {
			ADD(_vMags,[_pMag]);
            _handled = true;
        };

        if(_uni && !_handled) then {
			ADD(_uMags,[_pMag]);
            _handled = true;
        };

        if(_bag && !_handled) then {
			ADD(_bMags,[_pMag]);
            _handled = true;
        };
    };
};

if(count (handgunMagazine player) > 0) then {
    _hMag = ((handgunMagazine player) select 0);

    if(!(EQUAL(_hMag,""))) then {
        _uni = player canAddItemToUniform _hMag;
        _ves = player canAddItemToVest _hMag;
        _bag = player canAddItemToBackpack _hMag;
        _handled = false;

        if(_ves) then {
			ADD(_vMags,[_hMag]);
            _handled = true;
        };

        if(_uni && !_handled) then {
			ADD(_uMags,[_hMag]);
            _handled = true;
        };

        if(_bag && !_handled) then {
            ADD(_uMags,[_hMag]);
            _handled = true;
        };
    };
};

if(count (RIFLE_ITEMS) > 0) then {
    {
		ADD(_pItems,[_x]);
    } forEach (primaryWeaponItems player);
};

if(count (PISTOL_ITEMS) > 0) then {
    {
		ADD(_hItems,[_x]);
    } forEach (handGunItems player);
};

_return pushBack _uItems;
_return pushBack _uMags;
_return pushBack _bItems;
_return pushBack _bMags;
_return pushBack _vItems;
_return pushBack _vMags;
_return pushBack _pItems;
_return pushBack _hItems;

_uid = getPlayerUID _this;

_name = format["%1gear"];

missionNamespace setVariable [_name, _return];