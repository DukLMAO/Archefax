/*
	File: fn_setupActions.sqf

	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		// Suicide Bomb
        life_actions = life_actions + [player addAction["Active explosive vest",life_fnc_suicideBomb,"",0,false,false,"",
        'vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
       //Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		life_actions = life_actions + [player addAction["Sell Hostage",life_fnc_sellHostage,"",0,false,false,"",'  !isNull cursorTarget && isPlayer cursorTarget && (side cursorTarget != independent) && (cursorTarget getVariable ["restrained",FALSE]) && alive cursorTarget && (player distance cursorTarget < 3.5) && ((player distance (getMarkerPos "slave_trader_marker") < 10)) && !(cursorTarget getVariable ["escorting",FALSE]) ']];
		//Pickup Box
		/*life_actions = life_actions + [player addAction[localize "STR_ISTR_Box_Packup",life_fnc_packupBox,"",0,false,false,"",'(count(nearestObjects [player,["Land_CargoBox_V1_F"],3])>0)']];*/
		/*//GagKit Player
		life_actions = [player addAction["<t color='#800000'>Gag Player</t>",life_fnc_gagAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && !(cursorTarget GVAR["gagged",FALSE]) && life_inv_gagkit > 0']];
		//Remove Gag from player.
		life_actions = [player addAction["<t color='#800000'>Remove Gag</t>",life_fnc_removeGagAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && (cursorTarget GVAR["gagged",FALSE])']];*/
    };

	case west:
	{
		//Cop Enter
		life_actions = life_actions + [player addAction["Cop Enter as Driver",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Cop Enter as Passenger",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5 && (!(cursorTarget isKindOf "B_Heli_Attack_01_F"))']];
		life_actions = life_actions + [player addAction["Exit",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		//Seize Objects
		life_actions = life_actions + [player addAction["Seize Objects",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];
		life_actions = life_actions + [player addAction["Load Taser Rounds",{player setVariable ['nonLethals',true,true];},"",20,false,false,"",'(!(player getVariable ["nonLethals",false])']];
		life_actions = life_actions + [player addAction["Load Lethal Rounds",{player setVariable ['nonLethals',false,true];},"",20,false,false,"",'((currentWeapon player != "hgun_P07_snds_F") && (currentWeapon player != "hgun_P07_F") && (player getVariable ["nonLethals",false]))']];

		//life_actions = life_actions + [player addAction["Load Tazer Rounds",life_fnc_seniorTazers,"",6,false,true,"",'(currentWeapon player == "srifle_DMR_03_F")']];
		//life_actions = life_actions + [player addAction["Load Lethals",life_fnc_seniorTazers,"lethal",0,false,false,"",'(currentWeapon player == "srifle_DMR_03_F")']];
		/*//Seize Illegal
		life_actions = life_actions + [player addAction["Seize Weapons/Mags",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
        //GagKit Player
		life_actions = [player addAction["<t color='#800000'>Gag Player</t>",life_fnc_gagAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && !(cursorTarget GVAR["gagged",FALSE]) && life_inv_gagkit > 0']];
		//Remove Gag from player.
		life_actions = [player addAction["<t color='#800000'>Remove Gag</t>",life_fnc_removeGagAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && (cursorTarget GVAR["gagged",FALSE])']];*/
	};

	case independent:
	{
		//Medic Enter
		life_actions = life_actions + [player addAction["Medic Enter as Driver",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Medic Enter as Passenger",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5 && (!(cursorTarget isKindOf "B_Heli_Attack_01_F"))']];
		life_actions = life_actions + [player addAction["Exit",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
	};
};