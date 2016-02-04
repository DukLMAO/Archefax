#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units","_goggles","_rp","_img","_name"];
#define iconID 78000
#define scale 0.8
_headgear = ["H_Shemag_olive","H_Shemag_khk","H_ShemagOpen_tan","H_ShemagOpen_khk","H_Shemag_olive_hs"];
_goggles = ["G_Balaclava_blk","G_Bandanna_blk","G_Bandanna_oli","G_Bandanna_khk","G_Bandanna_tan","G_Bandanna_beast","G_Bandanna_aviator","G_Bandanna_shades","G_Balaclava_oli","G_Balaclava_lowprofile","G_Balaclava_combat"];
_uniform = ["U_I_GhillieSuit","U_O_GhillieSuit","U_B_GhillieSuit","U_B_FullGhillie_lsh","U_O_FullGhillie_lsh","U_I_FullGhillie_lsh","U_B_FullGhillie_sard","U_O_FullGhillie_sard","U_I_FullGhillie_sard","U_B_FullGhillie_ard","U_O_FullGhillie_ard","U_I_FullGhillie_ard"];

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = GVAR_UINS ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = GVAR_UINS ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];

SUB(_units,[player]);

{
	private "_text";
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x GVAR "realname"}}) then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if(count _sPos > 1 && {_distance < 15}) then {
			_text = switch (true) do {
				case ((headgear _x) in _headgear): {format["<t color='#000000'>Masked Player</t>"];};
				case (((goggles _x) in _goggles) && (playerSide != west)): {format["<t color='#000000'>Masked Player</t>"];};
				case ((uniform _x) in _uniform):  {format[""];};
				case (_x in (units grpPlayer) && playerSide == civilian): {format["<t color='#00FF00'>%1</t>",(_x GVAR ["realname",name _x])];};
				case (!isNil {(_x GVAR "rank")}): {format["<img image='%1' size='1'></img> %2",switch ((_x GVAR "rank")) do {
					case 2: {"\a3\ui_f\data\gui\cfg\Ranks\private_gs.paa"};
					case 3: {"\a3\ui_f\data\gui\cfg\Ranks\corporal_gs.paa"};
					case 4: {"\a3\ui_f\data\gui\cfg\Ranks\sergeant_gs.paa"};
					case 5: {"\a3\ui_f\data\gui\cfg\Ranks\lieutenant_gs.paa"};
					case 6: {"\a3\ui_f\data\gui\cfg\Ranks\captain_gs.paa"};
					case 7: {"\a3\ui_f\data\gui\cfg\Ranks\major_gs.paa"};
					case 8: {"\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa"};
					default {"icons\c2.paa"};
					},_x GVAR ["realname",name _x]]};
				case ((!isNil {_x GVAR "name"} && playerSide == independent)): {format["<t color='#FF0000'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> %1",_x GVAR ["name","Unknown Player"]]};
				default {
					if(!isNil {(group _x) GVAR "gang_name"}) then {
						format["%1<br/><t size='0.8' color='#FF0000'>%2</t>",_x GVAR ["realname",name _x],(group _x) GVAR ["gang_name",""]];
					} else {
						_x GVAR ["realname",name _x];
					};

				};
			};

			if(_x getVariable ["DirectVON",false]) then {_text = "<t color='#00FFFF'>[Speaking] " + _text};
			/*
			if(_text != "") then {
				if(_x GVAR ["speaking",false]) then {_text = "[SPEAKING] " + _text};

				if (side _x == civilian) then {
					_img = switch ((_x GVAR "rprank")) do {
		                case 1: {"icons\rp\rp1.paa"};
		                case 2: {"icons\rp\rp2.paa"};
		                case 3: {"icons\rp\rp3.paa"};
		                default {""};
		           	};
		           	if (_img != "") then {
						_text = format["<img image='%1' size='1.5'></img> ",_img] + _text;
		           	};
					_name = _x GVAR ["realname",name _x];
					if (_name find "[ZGS]" >= 0) then {
						_text = format["<img image='icons\MeccaLogo.paa' size='1.5'></img> ",_img] + _text;
					};
				};
			};
			*/

			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;