private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //if unit is null, than NO
if((_unit getVariable ["missingOrgan",FALSE])) exitWith {};//must not be missing organ already
if((player getVariable ["hasOrgan",FALSE])) exitWith {};//thief must not have already robbed an organ within last 5 mintues
if(player == _unit) exitWith {};//if the thief is the cursor target(dafuq) than NO
if(!isPlayer _unit) exitWith {};//iff the cursor target is not a player than NO
if(!([false,"scalpel",1] call life_fnc_handleInv)) exitWith {hint "You need a scalpel to perform this action!"};
life_action_inUse = true;//sets action to true as to prevent kidney spammming!!!!!!!!
player setVariable["hasOrgan",true,true];//sets variable on thief, so as not to consistently take organs, set to 5 minute cooldown
player playMove "AinvPknlMstpSnonWnonDnon_medic";//makes the thief do an animation as to seem like they are doing surgery
_unit setDamage 0.5;
life_action_inUse = false;
[[_unit],"life_fnc_hasOrgan", player, false] spawn life_fnc_MP;

_unit spawn {
	{
		life_max_health = .50;
		life_thirst =  50;
		life_hunger =  50;
		if(damage player < (1 - life_max_health)) then {player setDamage (1 - life_max_health);};
		"dynamicBlur" ppEffectEnable true;
		"dynamicBlur" ppEffectAdjust [2];
		"dynamicBlur" ppEffectCommit 1;
		sleep 300;
	};
	"dynamicBlur" ppEffectEnable false;
	life_max_health = 1;
};