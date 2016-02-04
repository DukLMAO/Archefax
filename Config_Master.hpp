#define VITEMMACRO(NAME,DISPLAYNAME,VARNAME,WEIGHT,BUYPRICE,SELLPRICE,ILLEGAL,EDIBLE,ICON) class NAME { \
		variable = VARNAME; \
		weight = WEIGHT; \
		displayName = DISPLAYNAME; \
		buyPrice = BUYPRICE; \
		sellPrice = SELLPRICE; \
		illegal = ILLEGAL; \
		edible = EDIBLE; \
		icon = ICON; \
	};
	
#define LICENSEMACRO(NAME,DISPLAYNAME,VARNAME,PRICE,ILLEGAL,SIDE) class NAME { \
		variable = VARNAME; \
		displayName = DISPLAYNAME; \
		price = PRICE; \
		illegal = ILLEGAL; \
		side = SIDE; \
	};

#define true 1
#define false 0
#include "Config_Clothing.hpp"
#include "Config_Shops.hpp"


/*
	Master settings for various features and functionality	
*/
class Life_Settings {
	/* Persistent Settings */
	save_civ_weapons = true; //Allow civilians to save weapons on them?
	save_virtualItems = true; //Save Virtual items (all sides)?

	/* Revive system settings */
	revive_cops = false; //true to enable cops the ability to revive everyone or false for only medics/ems.
	revive_fee = 3000; //Revive fee that players have to pay and medics / EMS are rewarded
	
	/* House related settings */
	house_limit = 5; //Maximum amount of houses a player can own.

	/* Gang related settings */
	gang_price = 15000; //Price for creating a gang, remember they are persistent so keep it reasonable to avoid millions of gangs.
	gang_upgradeBase = 200; //The base cost for upgrading slots in a gang
	gang_upgradeMultiplier = 2; //Not sure if in use?

	/* Player-related systems */
	enable_fatigue = true; //Set to false to disable the ARMA 3 false system.
	total_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
	total_maxWeightT = 24;  //Static variable for the maximum weight allowed without having a backpack
	paycheck_period = 5; //Scaled in minutes
	
	/* Impound Variables */
	impound_car = 800; //Price for impounding cars
	impound_boat = 800; //Price for impounding boats
	impound_air = 800; //Price for impounding helicopters / planes

	/* Car-shop Settings */
	//vehicleShop_rentalOnly[] = { "B_MRAP_01_hmg_F", "B_G_Offroad_01_armed_F" };

	/* Job-related stuff */
	delivery_points[] = { "dp_1", "dp_2", "dp_3", "dp_4", "dp_5", "dp_6", "dp_7", "dp_8", "dp_9", "dp_10", "dp_11", "dp_12", "dp_13", "dp_14", "dp_15", "dp_15", "dp_16", "dp_17", "dp_18", "dp_19", "dp_20", "dp_21", "dp_22", "dp_23", "dp_24", "dp_25" };

	crimes[] = { 
		{"STR_Crime_1","800","1"}, 
		{"STR_Crime_2","800","2"}, 
		{"STR_Crime_3","800","3"}, 
		{"STR_Crime_4","800","4"}, 
		{"STR_Crime_5","3000","5"}, 
		{"STR_Crime_6","1000","6"}, 
		{"STR_Crime_7","12000","7"},
		{"STR_Crime_8","5000","8"},
		{"STR_Crime_9","3000","9"},
		{"STR_Crime_10","2800","10"},
		{"STR_Crime_11","2800","11"},
		{"STR_Crime_12","2800","12"},
		{"STR_Crime_13","3000","13"},
		{"STR_Crime_13A","900","13A"},
		{"STR_Crime_14","12000","14"},
		{"STR_Crime_14A","10000","14A"},
		{"STR_Crime_459","7500","459"},
		{"STR_Crime_213","7500","213"},
		{"STR_Crime_390","500","390"},
		{"STR_Crime_207A","8000","207A"},
		{"STR_Crime_667","15000","667"},
		{"STR_Crime_668","1000","668"},
		{"STR_Crime_5447","5000","5447"},
		{"STR_Crime_5489","5000","5489"},
		{"STR_Crime_1412","8000","1412"},
		{"STR_Crime_1337","4000","1337"},
		{"STR_Crime_13371","4000","13371"},
		{"STR_Crime_1018","2500","1018"},
		{"STR_Crime_4389","2000","4389"},
		{"STR_Crime_5894","750","5894"},
		{"STR_Crime_4532","2000","4532"},
		{"STR_Crime_5217","3500","5217"},
	};
	
	sellArray[] = {
	};

	allowedSavedVirtualItems[] = { "pickaxe", "fuelEmpty", "fuelFull", "spikeStrip", "lockpick", "defuseKit", "storageSmall", 
									"storageBig", "redgull", "coffee", "waterBottle", "apple", "peach", "tbacon", "donut",
									"rabbitGrilled", "salemaGrilled", "ornateGrilled", "mackerelGrilled", "tunaGrilled",
									"mulletGrilled", "catsharkGrilled", "turtleSoup", "henGrilled", "roosterGrilled", "speedbomb",
									"sheepGrilled", "goatGrilled","frog","marijuana","cannabis","froglsd","mushroom","magicmushroom", "defibrillator",
									"heroinUnprocessed","cocaineUnprocessed","heroinProcessed","cocaineProcessed","underwatercharge",
									"goldbarp","goldBar","blastingCharge","boltCutter","oilUnprocessed","scalpel","kidney", "goldu", "crack", "goldp",
									"oilProcessed","copperUnrefined","copperRefined","ironUnrefined","ironRefined","saltUnrefined", "corn", "sugar", "moonshine",
									"saltRefined","sand","glass","diamondUncut","diamondCut","rock","cement", "bottles","cargobox",
									"bottledwhiskey","bottledbeer","rabbit_raw","salema_raw","ornate_raw", "beerp", "whiskey", "rye", "hops", "yeast", "grape", "wine", "bloodbag",
									"mackerel_raw","tuna_raw","mullet_raw","catshark_raw","turtle_raw","hen_raw","rooster_raw","sheep_raw", "gagkit","goat_raw", "methu", "meth", "ziptie","gpstracker" };
};

//Virtual Items
class VirtualItems {
	//Misc
	VITEMMACRO(pickaxe, "STR_Item_Pickaxe", "pickaxe", 4, 75, 10, false, -1, "icons\pickaxe.paa")
	VITEMMACRO(fuelEmpty, "STR_Item_FuelEmpty", "fuelEmpty", 1, -1, -1, false, -1, "icons\ico_fuelempty.paa")
	VITEMMACRO(fuelFull, "STR_Item_FuelFull", "fuelFull", 2, 50, 10, false, -1, "icons\ico_fuel.paa")
	VITEMMACRO(spikeStrip, "STR_Item_SpikeStrip", "spikeStrip", 4, 150, 20, true, -1, "icons\spikestrip.paa")
	VITEMMACRO(lockpick, "STR_Item_Lockpick", "lockpick", 1, 50, 10, true, -1, "icons\lockpick.paa")
	VITEMMACRO(goldbar, "STR_Item_GoldBar", "goldBar", 10, 25000, 25000, true, -1, "icons\goldbar.paa")
	VITEMMACRO(blastingcharge, "STR_Item_BCharge", "blastingCharge", 10, 5000, -1, true, -1, "icons\ico_blastingCharge.paa")
	VITEMMACRO(boltcutter, "STR_Item_BCutter", "boltCutter", 5, 600, 100, true, -1, "icons\ico_boltcutters.paa")
	VITEMMACRO(defusekit, "STR_Item_DefuseKit", "defuseKit", 5, 100, 100, true, -1, "icons\defusekit.paa")
	VITEMMACRO(storagesmall, "STR_Item_StorageBS", "storageSmall", 1, 10000, 100, false, -1, "icons\ico_storageSmall.paa")
	VITEMMACRO(storagebig, "STR_Item_StorageBL", "storageBig", 10, 20000, -1, false, -1, "icons\ico_storageBig.paa")
	VITEMMACRO(gagkit, "STR_Item_GagKit", "gagkit", 4, 100, 100, false, -1, "")
	//VITEMMACRO(mash, "STR_Item_Mash","mash",2,3000,2500,true,-1,"")
	VITEMMACRO(rye, "STR_Item_Rye","rye",1,2500,2000,false,-1,"")
	VITEMMACRO(hops, "STR_Item_Hops","hops",1,2000,1800,false,-1,"")
	//VITEMMACRO(cornmeal, "STR_Item_Cornmeal","cornmeal",2,500,200,false,-1,"")
	//VITEMMACRO(bottles, "STR_Item_Bottles","bottles",1,10,8,false,-1,"")

	//Mined Items
	VITEMMACRO(oil_unprocessed, "STR_Item_OilU", "oilUnprocessed", 3, -1, -1, false, -1, "icons\oil_unprocessed.paa")
	VITEMMACRO(oil_processed, "STR_Item_OilP", "oilProcessed", 2, -1, 300, false, -1, "icons\oil_processed.paa")
	VITEMMACRO(copper_unrefined, "STR_Item_CopperOre", "copperUnrefined", 2, -1, -1, false, -1, "icons\copper_ore.paa")
	VITEMMACRO(copper_refined, "STR_Item_CopperIngot", "copperRefined", 1, -1, 280, false, -1, "icons\copper.paa")
	VITEMMACRO(iron_unrefined, "STR_Item_IronOre", "ironUnrefined", 2, -1, -1, false, -1, "icons\iron_ore.paa")
	VITEMMACRO(iron_refined, "STR_Item_IronIngot", "ironRefined", 1, -1, 295, false, -1, "icons\iron.paa")
	VITEMMACRO(salt_unrefined, "STR_Item_Salt", "saltUnrefined", 2, -1, -1, false, -1, "icons\salt_unprocessed.paa")
	VITEMMACRO(salt_refined, "STR_Item_SaltR", "saltRefined", 1, -1, 80, false, -1, "icons\salt.paa")
	VITEMMACRO(sand, "STR_Item_Sand", "sand", 2, -1, -1, false, -1, "icons\sand.paa")
	VITEMMACRO(glass, "STR_Item_Glass", "glass", 1, -1, 85, false, -1, "icons\glass.paa")
	VITEMMACRO(diamond_uncut, "STR_Item_DiamondU", "diamondUncut", 2, -1, 750, false, -1, "icons\diamond_unprocessed.paa")
	VITEMMACRO(diamond_cut, "STR_Item_DiamondC", "diamondCut", 1, -1, 530, false, -1, "icons\diamond.paa")
	VITEMMACRO(rock, "STR_Item_Rock", "rock", 2, -1, -1, false, -1, "icons\rock.paa")
	VITEMMACRO(cement, "STR_Item_CementBag", "cement", 1, -1, 510, false, -1, "icons\cement.paa")
	VITEMMACRO(lumber, "STR_Item_Lumber", "lumber", 10, -1, 510, false, -1, "icons\logss.paa")
	VITEMMACRO(goldu, "STR_Item_Goldu", "goldu", 2, -1, -1, false, -1, "icons\goldbar.paa")
	VITEMMACRO(goldp, "STR_Item_Goldp", "goldp", 1, -1, 300, false, -1, "icons\goldbar.paa")

	//Drugs
	VITEMMACRO(heroin_unprocessed, "STR_Item_HeroinU", "heroinUnprocessed", 2, -1, 200, true, -1, "icons\heroin_unprocessed.paa")
	VITEMMACRO(heroin_processed, "STR_Item_HeroinP", "heroinProcessed", 1, 1000, 750, true, -1, "icons\heroin_processed.paa")
	VITEMMACRO(cannabis, "STR_Item_Cannabis", "cannabis", 2, -1, 200, true, -1, "icons\cannabis.paa")
	VITEMMACRO(marijuana, "STR_Item_Marijuana", "marijuana", 1, 500, 330, true, -1, "icons\ico_marijuana.paa")
	VITEMMACRO(cocaine_unprocessed, "STR_Item_CocaineU", "cocaineUnprocessed", 2, -1, 200, true, -1, "icons\cocain_unprocessed.paa")
	VITEMMACRO(cocaine_processed, "STR_Item_CocaineP", "cocaineProcessed", 1, 1000, 640, true, -1, "icons\cocain_processed.paa")
	VITEMMACRO(mushroom, "STR_Item_mushroom", "mushroom", 2, -1, 200, true, -1, "icons\mushroom.paa")
	VITEMMACRO(magic_mushroom, "STR_Item_magicmushroom", "magicmushroom", 1, 1000, 675, true, -1, "icons\magicmush.paa")
	VITEMMACRO(frog, "STR_Item_Frog", "frog", 2, -1, 200, true, -1, "icons\frog.paa")
	VITEMMACRO(frog_lsd, "STR_Item_Froglsd", "froglsd", 1, 1000, 600, true, -1, "icons\lsd2.paa")
	VITEMMACRO(methu, "STR_Item_Methu", "methu", 2, 1000, 200, true, -1, "")
	VITEMMACRO(meth, "STR_Item_Meth", "meth", 1, 3000, 500, true, -1, "icons\meth.paa")
	VITEMMACRO(tobacco, "STR_Item_Tobacco", "tobacco", 1, -1, 100, true, -1, "")
	VITEMMACRO(cigarette, "STR_Item_Cigarette", "cigarette", 1, -1, 100, true, -1, "")
	VITEMMACRO(crack, "STR_Item_Crack", "crack", 1, 1000, 200, true, -1, "icons\cocain_processed.paa")

	//Drink
	VITEMMACRO(redgull, "STR_Item_RedGull", "redgull", 1, 100, 3, false, 100, "icons\ico_redgull.paa")
	VITEMMACRO(coffee, "STR_Item_Coffee", "coffee", 1, 10, 5, false, 100, "icons\coffee.paa")
	VITEMMACRO(waterBottle, "STR_Item_WaterBottle", "waterBottle", 1, 5, 2, false, 100, "icons\ico_waterBottle.paa")
	//VITEMMACRO(bottledshine, "STR_Item_BottledShine","bottledshine",2,12500,10000,true,-1,"")
	VITEMMACRO(bottledwhiskey, "STR_Item_BottledWhiskey","bottledwhiskey",1,200,200,false,-1,"icons\whiskey.paa")
	VITEMMACRO(bottledbeer, "STR_Item_BottledBeer","bottledbeer",1,200,200,false,-1,"icons\beer.paa")
	//VITEMMACRO(moonshine, "STR_Item_Moonshine","moonshine",2,8000,7000,true,-1,"")
	VITEMMACRO(whiskey, "STR_Item_Whiskey","whiskey",1,5000,4500,false,-1,"icons\whiskey.paa")
	VITEMMACRO(beerp, "STR_Item_Beerp","beerp",1,5000,4500,false,-1,"")
	VITEMMACRO(wine, "STR_Item_Wine","wine",1,600,100,false,-1,"icons\wine.paa")
	VITEMMACRO(wl, "STR_Item_Wl","wl",1,200,200,false,-1,"icons\wl1.paa")

	//Food
	VITEMMACRO(apple, "STR_Item_Apple", "apple", 1, 20, 7, false, 10, "icons\apple.paa")
	VITEMMACRO(grape, "STR_Item_Grape", "grape", 1, 20, 7, false, 10, "icons\grape.paa")
	VITEMMACRO(peach, "STR_Item_Peach", "peach", 1, 20, 8, false, 10, "icons\peach.paa")
	VITEMMACRO(tbacon, "STR_Item_TBacon", "tbacon", 1, 15, 6, false, 40, "icons\ico_tbacon.paa")
	VITEMMACRO(donut, "STR_Item_Donuts", "donut", 1, 10, 60, false, 30, "icons\donut.paa")
	VITEMMACRO(rabbit_raw, "STR_Item_Rabbit", "rabbitRaw", 2, 5000, 65, false, -1, "icons\meat.paa")
	VITEMMACRO(rabbit_grilled, "STR_Item_RabbitGrilled", "rabbitGrilled", 1, 25, 11, false, 20, "icons\ico_cookedMeat.paa")
	VITEMMACRO(salema_raw, "STR_Item_Salema", "salemaRaw", 2, 400, 45, false, -1, "icons\fish.paa")
	VITEMMACRO(salema_grilled, "STR_Item_SalemaGrilled", "salemaGrilled", 1, 75, 55, false, 30, "icons\ico_cookedMeat.paa")
	VITEMMACRO(ornate_raw, "STR_Item_OrnateMeat", "ornateRaw", 2, 400, 40, false, -1, "icons\fish.paa")
	VITEMMACRO(ornate_grilled, "STR_Item_OrnateGrilled", "ornateGrilled", 1, 175, 150, false, 25, "icons\ico_cookedMeat.paa")
	VITEMMACRO(mackerel_raw, "STR_Item_MackerelMeat", "mackerelRaw", 4, 400, 175, false, -1, "icons\fish.paa")
	VITEMMACRO(mackerel_grilled, "STR_Item_MackerelGrilled", "mackerelGrilled", 2, 250, 200, false, 30, "icons\ico_cookedMeat.paa")
	VITEMMACRO(tuna_raw, "STR_Item_TunaMeat", "tunaRaw", 6, 400, 700, false, -1, "icons\fish.paa")
	VITEMMACRO(tuna_grilled, "STR_Item_TunaGrilled", "tunaGrilled", 3, 1250, 1000, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(mullet_raw, "STR_Item_MulletMeat", "mulletRaw", 4, 400, 250, false, -1, "icons\fish.paa")
	VITEMMACRO(mullet_fried, "STR_Item_MulletFried", "mulletFried", 2, 600, 400, false, 80, "icons\ico_cookedMeat.paa")
	VITEMMACRO(catshark_raw, "STR_Item_CatSharkMeat", "catsharkRaw", 6, 400, 300, false, -1, "icons\fish.paa")
	VITEMMACRO(catshark_fried, "STR_Item_CatSharkFried", "catsharkFried", 3, 750, 500, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(turtle_raw, "STR_Item_TurtleMeat", "turtleRaw", 6, 4000, 3000, true, -1, "icons\turtle.paa")
	VITEMMACRO(turtle_soup, "STR_Item_TurtleSoup", "turtleSoup", 2, 2500, 1000, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(hen_raw, "STR_Item_HenRaw", "henRaw", 1, -1, 35, false, -1, "icons\meat.paa")
	VITEMMACRO(hen_fried, "STR_Item_HenFried", "henFried", 1, 115, 85, false, 65, "icons\ico_cookedMeat.paa")
	VITEMMACRO(rooster_raw, "STR_Item_RoosterRaw", "roosterRaw", 1, -1, 35, false, -1, "icons\meat.paa")
	VITEMMACRO(rooster_grilled, "STR_Item_RoosterGrilled", "roosterGrilled", 115, 85, false, 45, "icons\ico_cookedMeat.paa")
	VITEMMACRO(sheep_raw, "STR_Item_SheepRaw", "sheepRaw", 2, 5000, 50, false, -1, "icons\meat.paa")
	VITEMMACRO(sheep_grilled, "STR_Item_SheepGrilled", "sheepGrilled", 2, 155, 115, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(goat_raw, "STR_Item_GoatRaw", "goatRaw", 2, 5000, 75, false, -1, "icons\meat.paa")
	VITEMMACRO(goat_grilled, "STR_Item_GoatGrilled", "goatGrilled", 2, 175, 135, false, 100, "icons\ico_cookedMeat.paa")

	VITEMMACRO(ziptie, "STR_Item_Ziptie", "ziptie", 1, 250, 250, true, -1, "icons\ziptie.paa")
	VITEMMACRO(gpstracker, "STR_Item_gpstracker", "gpstracker", 2, 3000, 500, false, -1, "icons\gpstracker.paa")
	VITEMMACRO(kidney, "STR_Item_Kidney", "kidney", 10, 30000, 15000, true, -1, "icons\kidney.paa")
	VITEMMACRO(scalpel, "STR_Item_Scalpel", "scalpel", 2, 1500, 100, true, -1, "icons\scalpel.paa")
	VITEMMACRO(cargobox, "STR_Item_Cargobox", "cargobox", 10, 50000, 100, false, -1, "icons\ico_storageBig.paa")
	VITEMMACRO(bloodbag, "STR_Item_Bloodbag", "bloodbag", 4, 1000, 100, false, -1, "icons\bloodbag.paa")
	VITEMMACRO(defibrillator, "STR_Item_Defibrillator", "defibrillator", 15, 15000, 100, false, -1, "icons\defibrillator.paa")
	VITEMMACRO(speedbomb, "STR_Item_speedbomb", "speedbomb", 5, 100000, 500, true, -1, "icons\ico_blastingCharge.paa")

	VITEMMACRO(yeast, "STR_Item_yeast", "yeast", 2, 100, 500, false, -1, "")
	VITEMMACRO(corn, "STR_Item_corn", "corn", 2, 100, 500, false, -1, "")
	VITEMMACRO(sugar, "STR_Item_sugar", "sugar", 2, 100, 500, false, -1, "")
	VITEMMACRO(moonshine, "STR_Item_moonshine", "moonshine", 1, 3000, 500, true, -1, "icons\wl1.paa")
	VITEMMACRO(dc, "STR_Item_dc", "dc", 1, 250, 10, false, -1, "")
	VITEMMACRO(phosphorus, "STR_Item_Phosphorus", "phosphorus", 2, 250, 10, true, -1, "")
	VITEMMACRO(ephedra, "STR_Item_ephedra", "ephedra", 2, 250, 10, true, -1, "")
	VITEMMACRO(lithium, "STR_Item_lithium", "lithium", 2, 250, 10, false, -1, "")
	VITEMMACRO(pallet, "STR_Item_pallet", "pallet", 10, -1, 10, false, -1, "icons\boombox.paa")
};


/*
	Licenses
	
	Params:
	CLASS ENTRY,DisplayName,VariableName,price,illegal,side indicator
*/
class Licenses {
	LICENSEMACRO(driver,"STR_License_Driver","driver",100,false,"civ")
	LICENSEMACRO(boat,"STR_License_Boat","boat",300,false,"civ")
	LICENSEMACRO(pilot,"STR_License_Pilot","pilot",5000,false,"civ")
	LICENSEMACRO(gun,"STR_License_Firearm","gun",4500,false,"civ")
	LICENSEMACRO(dive,"STR_License_Diving","dive",500,false,"civ")
	LICENSEMACRO(oil,"STR_License_Oil","oil",3500,false,"civ")
	LICENSEMACRO(cAir,"STR_License_Pilot","cAir",5000,false,"cop")
	LICENSEMACRO(cg,"STR_License_CG","cg",2000,false,"cop")
	LICENSEMACRO(heroin,"STR_License_Heroin","heroin",7000,true,"civ")
	LICENSEMACRO(marijuana,"STR_License_Marijuana","marijuana",6000,true,"civ")
	LICENSEMACRO(medm,"STR_License_Medm","medm",10000,false,"civ")
	LICENSEMACRO(rebel,"STR_License_Rebel","rebel",20000,true,"civ")
	LICENSEMACRO(trucking,"STR_License_Truck","trucking",3000,false,"civ")
	LICENSEMACRO(diamond,"STR_License_Diamond","diamond",3500,false,"civ")
	LICENSEMACRO(salt,"STR_License_Salt","salt",3500,false,"civ")
	LICENSEMACRO(cocaine,"STR_License_Cocaine","cocaine",8000,false,"civ")
	LICENSEMACRO(sand,"STR_License_Sand","sand",3500,false,"civ")
	LICENSEMACRO(iron,"STR_License_Iron","iron",3500,false,"civ")
	LICENSEMACRO(copper,"STR_License_Copper","copper",3500,false,"civ")
	LICENSEMACRO(cement,"STR_License_Cement","cement",3500,false,"civ")
	LICENSEMACRO(mAir,"STR_License_Pilot","mAir",1,false,"med")
	LICENSEMACRO(home,"STR_License_Home","home",25000,false,"civ")
	LICENSEMACRO(shroom,"STR_License_Shroom","shroom",9000,false,"civ")
	LICENSEMACRO(lsd,"STR_License_Lsd","lsd",9500,false,"civ")
	LICENSEMACRO(meth,"STR_License_Meth","meth",10000,false,"civ")
	//LICENSEMACRO(stiller,"STR_License_Stiller","stiller",10000,false,"civ")
	LICENSEMACRO(liquor,"STR_License_Liquor","liquor",10000,false,"civ")
	LICENSEMACRO(bottler,"STR_License_Bottler","bottler",10000,false,"civ")
	//LICENSEMACRO(mash,"STR_License_Mash","mash",10000,false,"civ")
	LICENSEMACRO(vigilante,"STR_License_Vigilante","vigilante",20000,false,"civ")
	LICENSEMACRO(law,"STR_License_Law","law",20000,false,"civ")
	LICENSEMACRO(loading,"STR_License_Loading","loading",20000,false,"civ")
	LICENSEMACRO(cigarette,"STR_License_Cigarette","cigarette",5,false,"civ")
	LICENSEMACRO(wine,"STR_License_Wine","wine",3500,false,"civ")
	LICENSEMACRO(medical,"STR_License_Medical","medical",30000,false,"civ")
	LICENSEMACRO(crack,"STR_License_Crack","crack",15000,false,"civ")
	LICENSEMACRO(gold,"STR_License_Gold","gold",3500,false,"civ")
	LICENSEMACRO(moonshine,"STR_License_Moonshine","moonshine",15000,false,"civ")
	LICENSEMACRO(pallet,"STR_License_pallet","pallet",3500,false,"civ")
	LICENSEMACRO(news,"STR_License_News","news",25000,false,"civ")
};

class VirtualShops {
	class market {
		name = "STR_Shops_Market";
		items[] = { "waterBottle", "apple", "grape", "redgull", "tbacon", "pickaxe", "fuelFull", "peach", "storagesmall", "storagebig", "rabbit_raw" };
	};

	class rebel {
		name = "STR_Shops_Rebel";
		items[] = { "waterBottle", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "blastingcharge", "ziptie", "gpstracker" };
	};

	class gang {
		name = "STR_Shops_Gang";
		items[] = { "waterBottle", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "blastingcharge", "ziptie", "gpstracker" };
	};

	class wongs {
		name = "STR_Shops_Wongs";
		items[] = { "turtle_soup", "turtle_raw" };
	};

	class coffee {
		name = "STR_Shops_Coffee";
		items[] = { "coffee", "donuts" };
	};
	
	class drugdealer {
		name = "STR_Shops_DrugDealer";
		items[] = { "cocaine_processed", "heroin_processed", "marijuana", "magic_mushroom", "frog_lsd", "meth", "crack" };
	};

	class oil {
		name = "STR_Shops_Oil";
		items[] = { "oil_processed", "pickaxe", "fuelFull" };
	};

	class fishmarket {
		name = "STR_Shops_FishMarket";
		items[] = { "salema_raw", "salema_grilled", "ornate_raw", "ornate_grilled", "mackerel_raw", "mackerel_grilled", "tuna_raw", "tuna_grilled", "mullet_raw", "mullet_fried", "catshark_raw", "catshark_fried" };
	};

	class glass {
		name = "STR_Shops_Glass";
		items[] = { "glass" };
	};

	class iron  {
		name = "STR_Shops_Minerals";
		items[] = { "iron_refined", "copper_refined" };
	};

	class diamond {
		name = "STR_Shops_Diamond";
		items[] = { "diamond_uncut", "diamond_cut" };
	};

	class salt {
		name = "STR_Shops_Salt";
		items[] = { "salt_refined" };
	};

	class cop {
		name = "STR_Shops_Cop";
		items[] = { "donut", "coffee", "spikeStrip", "waterBottle", "rabbit_grilled", "apple", "redgull", "fuelFull", "defusekit", "gpstracker" };
	};

	class cement {
		name = "STR_Shops_Cement";
		items[] = { "cement" };
	};

	class gold {
		name = "STR_Shops_Gold";
		items[] = { "goldbar" };
	};

	class speakeasy {
		name = "STR_Shops_Speakeasy";
		items[] = { "bottledwhiskey","bottledbeer" };
	};

	class pub {
		name = "STR_Shops_Pub";
		items[] = { "bottledbeer","bottledwhiskey","wine","wl" };
	};
	
	class meat {
		name = "STR_Shops_Meat";
		items[] = { "goat_grilled", "goat_raw", "sheep_grilled", "sheep_raw", "rabbit_raw", "rabbit_grilled" };
	};

	class woodbuy {
		name = "STR_Shops_Woodbuy";
		items[] = { "lumber", "pallet" };
	};

	class medm {
		name = "STR_Shops_Medm";
		items[] = { "marijuana" };
	};

	class organ {
		name = "STR_Shops_Organ";
		items[] = { "kidney" };
	};

	class munchies {
		name = "STR_Shops_Munchies";
		items[] = { "redgull", "tbacon", "donut" };
	};

	class load {
		name = "STR_Shops_Loading";
		items[] = { "cargobox" };
	};

	class apex {
		name = "STR_Shops_Apex";
		items[] = { "bloodbag", "defibrillator" };
	};

	class admin {
		name = "STR_Shops_Admin";
		items[] = { "defibrillator", "speedbomb" };
	};

	class goldin {
		name = "STR_Shops_Goldin";
		items[] = { "goldp" };
	};

	class adealer {
		name = "STR_Shops_Armsdealer";
		items[] = { "waterBottle", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "blastingcharge", "ziptie", "gpstracker", "speedbomb" };
	};

	class moonshine {
		name = "STR_Shops_Armsdealer";
		items[] = { "moonshine" };
	};

	class vigilante {
		name = "STR_Shops_Vigilante";
		items[] = { "waterBottle", "apple", "peach", "redgull", "tbacon", "ziptie", "fuelFull" };
	};
};

#include "Config_Vehicles.hpp"
#include "Config_Houses.hpp"
