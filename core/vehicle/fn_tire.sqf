/*
	fn_tire.sqf
	By: Ethan
	getHitPointDamage "HitRFWheel"
	getHitPointDamage "HitRF2Wheel"
*/
/*if (vehicle player == player) exitWith {};
if vehicle player == "C_SUV_01_F" then {
	if getHitPointDamage "HitRFWheel" > .1 then {
		setHitPointDamage "HitRFWheel"
	}
}*/

private["_veh","_damage"];
if (vehicle player == player) exitWith {};
_veh = vehicle player;
//_veh = _this select 0;
//_veh2 = _this select 1;
//_force = _this select 4;
_damage = getDammage _veh;
if (_veh isKindOf "LandVehicle") then {
            // Body / Hull
	if ((_veh getHitPointDamage "HitBody") > 0.1) then {_veh setHitPointDamage ["HitBody", _damage/2]};
	            // Engine
	if ((_veh getHitPointDamage "HitEngine") > 0.1) then {_veh setHitPointDamage ["HitEngine", _damage/2]};
	            // Fuel Tank
	if ((_veh getHitPointDamage "HitFuel") > 0.1) then {_veh setHitPointDamage ["HitFuel", _damage/2]};
	            // Front left wheel
	if ((_veh getHitPointDamage "HitLFWheel") > 0.1) then {_veh setHitPointDamage ["HitLFWheel", _damage/20]};
	            // Front right wheel
	if ((_veh getHitPointDamage "HitRFWheel") > 0.1) then {_veh setHitPointDamage ["HitRFWheel", _damage/20]};
	            // Front left wheel 2
	if ((_veh getHitPointDamage "HitLF2Wheel") > 0.1) then {_veh setHitPointDamage ["HitLF2Wheel", _damage/20]};
	            // Front right wheel 2
	if ((_veh getHitPointDamage "HitRF2Wheel") > 0.1) then {_veh setHitPointDamage ["HitRF2Wheel", _damage/20]};
	            // Middle left wheel
	if ((_veh getHitPointDamage "HitLMWheel") > 0.1) then {_veh setHitPointDamage ["HitLMWheel", _damage/20]};
	            // Middle right wheel
	if ((_veh getHitPointDamage "HitRMWheel") > 0.1) then {_veh setHitPointDamage ["HitRMWheel", _damage/20]};
	            // Back left wheel
	if ((_veh getHitPointDamage "HitLBWheel") > 0.1) then {_veh setHitPointDamage ["HitLBWheel", _damage/20]};
	            // Back right wheel
	if ((_veh getHitPointDamage "HitRBWheel") > 0.1) then {_veh setHitPointDamage ["HitRBWheel", _damage/20]};
};