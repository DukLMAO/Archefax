/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelEmpty": {(localize "STR_Item_FuelEmpty")};
	case "life_inv_fuelFull": {(localize "STR_Item_FuelFull")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	case "life_inv_mushroom": {(localize "STR_Item_Mushroom")};
	case "life_inv_magicmushroom": {(localize "STR_Item_Magicmushroom")};
	case "life_inv_frog": {(localize "STR_Item_Frog")};
	case "life_inv_froglsd": {(localize "STR_Item_Froglsd")};
	//case "life_inv_mash": {(localize "STR_Item_Mash")};
	case "life_inv_bottles": {(localize "STR_Item_Bottles")};
	//case "life_inv_bottledshine": {(localize "STR_Item_Bottledshine")};
	case "life_inv_bottledwhiskey": {(localize "STR_Item_BottledWhiskey")};
	case "life_inv_bottledbeer": {(localize "STR_Item_BottledBeer")};
	case "life_inv_whiskey": {(localize "STR_Item_Whiskey")};
	case "life_inv_beerp": {(localize "STR_Item_Beerp")};
	//case "life_inv_rye": {(localize "STR_Item_Rye")};
	case "life_inv_hops": {(localize "STR_Item_Hops")};
	case "life_inv_methu": {(localize "STR_Item_Methu")};
	case "life_inv_phosphorus": {(localize "STR_Item_Phosphorus")};
	case "life_inv_meth": {(localize "STR_Item_Meth")};
	//case "life_inv_cornmeal": {(localize "STR_Item_Cornmeal")};
	case "life_inv_ziptie": {(localize "STR_Item_Ziptie")};
	case "life_inv_gpstracker": {(localize "STR_Item_gpstracker")};
	case "life_inv_lumber": {(localize "STR_Item_Lumber")};
	case "life_inv_kidney": {(localize "STR_Item_Kidney")};
	case "life_inv_scalpel": {(localize "STR_Item_Scalpel")};
	case "life_inv_cargobox": {(localize "STR_Item_cargobox")};
	case "life_inv_tobacco": {(localize "STR_Item_Tobacco")};
	case "life_inv_grape": {(localize "STR_Item_Grape")};
	case "life_inv_wine": {(localize "STR_Item_Wine")};
	case "life_inv_bloodbag": {(localize "STR_Item_Bloodbag")};
	case "life_inv_defibrillator": {(localize "STR_Item_Defibrillator")};
	case "life_inv_wl": {(localize "STR_Item_Wl")};
	case "life_inv_crack": {(localize "STR_Item_Crack")};
	case "life_inv_goldu": {(localize "STR_Item_Goldu")};
	case "life_inv_goldp": {(localize "STR_Item_Goldp")};
	case "life_inv_speedbomb": {(localize "STR_Item_speedbomb")};
	case "life_inv_yeast": {(localize "STR_Item_yeast")};
	case "life_inv_corn": {(localize "STR_Item_corn")};
	case "life_inv_sugar": {(localize "STR_Item_sugar")};
	case "life_inv_moonshine": {(localize "STR_Item_moonshine")};
	case "life_inv_dc": {(localize "STR_Item_dc")};
	case "life_inv_ephedra": {(localize "STR_Item_ephedra")};
	case "life_inv_lithium": {(localize "STR_Item_lithium")};
	case "life_inv_pallet": {(localize "STR_Item_pallet")};

	//License Block
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_cop_air": {(localize "STR_License_Pilot")};
	case "license_cop_swat": {(localize "STR_License_Swat")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_medm": {(localize "STR_License_Medm")};
	case "license_civ_cement": {(localize "STR_License_Cement")};
	case "license_med_air": {(localize "STR_License_Pilot")};
	case "license_civ_home": {(localize "STR_License_Home")};
	case "license_civ_shroom": {(localize "STR_License_Shroom")};
	case "license_civ_lsd": {(localize "STR_License_Lsd")};
	case "license_civ_stiller": {(localize "STR_License_Stiller")};
	case "license_civ_liquor": {(localize "STR_License_Liquor")};
	case "license_civ_bottler": {(localize "STR_License_Bottler")};
	case "license_civ_meth": {(localize "STR_License_Meth")};
	case "license_civ_law": {(localize "STR_License_Law")};
	case "license_civ_vigilante": {"STR_License_Vigilante"};
	case "license_civ_loading": {"STR_License_Loading"};
	case "license_civ_cigarette": {"STR_License_Cigarette"};
	case "license_civ_wine": {"STR_License_Wine"};
	case "license_civ_medical": {"STR_License_Medical"};
	case "license_civ_crack": {"STR_License_Crack"};
	case "license_civ_gold": {"STR_License_Gold"};
	case "license_civ_moonshine": {"STR_License_Moonshine"};
	case "license_civ_pallet": {"STR_License_pallet"};
	case "license_civ_news": {"STR_License_News"};
};
