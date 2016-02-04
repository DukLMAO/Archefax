/*
    ALAH SNACKBAR!
    Created By: TAW_Tonic
    Edited By: MidgetGrimm, PeterBeer, and Xetoxyc
    Tested and Approved by: 617th PMC

*/
private["_test"];
if(vest player != "V_HarnessOGL_gry") exitWith {};
[[0,format[""]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
sleep 0;
[[0,format[""]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
sleep 1;
[[0,format["%1 went Hasta La Vista Baby",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

_test = "Bo_Mk82" createVehicle [0,0,9999];
_test setPos (getPos player);
_test setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};