private["_group","_hideout"];
_hideout = (nearestObjects[getPosATL player,["Flagpole_F"],250000]) select 0;
_group = _hideout getVariable ["gangOwner",grpNull];

if(_group == grpPlayer) setVariable["gangOwner",grpPlayer,true];