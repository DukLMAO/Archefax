/* Price Coefficients */
#define ins 0.9
#define chop 0.95
#define sell 0.95
#define store 0.01
/* End Price Coefficients */

/* Vehicle Prices */
#define phatchback 3000
#define pquadbike 1500
#define poffroad 4000
#define psuv 6000
#define phatchbacksport 12000
#define pkart 20000

#define poffroadmed 5000
#define pzamakmed 7500
#define pm900med 10000
#define porcamed 15000

#define pboxer 25000
#define pzamaktrans 40000
#define pzamakcov 65000
#define phemtttrans 85000
#define ptempesttrans 100000
#define ptempestcov 135000
#define phemttbox 200000
#define ptempestdev 120000
#define ftruck 40000
#define pbabyboxer 12500


#define pifrit 200000
#define p50cal 300000

#define poffroadcop 4000
#define psuvcop 6000
#define phuntercop 100000
#define pmh9cop 45000
#define pghosthawkcop 100000
#define phellcatcop 70000
#define phellcatmed 40000
#define porcacop 60000

#define pmh9civ 115000
#define pm900 90000
#define porcaciv 175000
#define ptarutrans 250000
#define ptarubench 200000
#define ptarufuel 130000

#define psdv 10000
#define prescueboat 3000
#define pspeedboat 5000
#define passaultboat 3000

#define huron 215000
#define mohawk 250000

#define civhellcat 180000
/* End Vehicle Prices */

class CarShops {
	/*
		Format:
		{ Classname, rental price, license required, { varname, >= value } }

		{ varname, >= value} this is a "level" requirement mainly used by cops and rebels, do not fill this in if you are not utilizing it.
	*/
	class civ_car {
		side = "civ";
		vehicles[] = {
			{ "B_Quadbike_01_F", pquadbike, "" }, 
			{ "C_Hatchback_01_F", phatchback, "driver" }, 
			{ "C_Offroad_01_F", poffroad, "driver" },
			{ "C_SUV_01_F", psuv, "driver" },
			{ "C_Hatchback_01_sport_F", phatchbacksport, "driver" },
			{ "C_Van_01_transport_F", pbabyboxer, "driver" },
			{ "C_Kart_01_Blu_F", pkart , "driver" },
			{ "C_Kart_01_Fuel_F", pkart, "driver" },
			{ "C_Kart_01_Red_F", pkart, "driver" },
			{ "C_Kart_01_Vrana_F", pkart, "driver" },
		};
	};

	class kart_shop {
		side = "civ";	
		vehicles[] = {
			{ "C_Kart_01_Blu_F", pkart , "driver" },
			{ "C_Kart_01_Fuel_F", pkart, "driver" },
			{ "C_Kart_01_Red_F", pkart, "driver" },
			{ "C_Kart_01_Vrana_F", pkart, "driver" },
		};
	};

	class med_shop {
		side = "med";
		vehicles[] = {
			{ "C_Offroad_01_repair_F", poffroadmed, "" },
			{ "C_Hatchback_01_sport_F", phatchbacksport, "", { "life_medicLevel", 3 } },
			{ "C_SUV_01_F", psuvcop, "", { "life_mediclevel", 2 } },
			{ "C_Van_01_box_F", poffroadmed, "" },
		};
	};

	class med_air_hs {
		side = "med";
		vehicles[] = {
			{ "C_Heli_Light_01_civil_F", pm900med, "mAir" , { "life_medicLevel", 2 } },
			{ "O_Heli_Light_02_unarmed_F", porcamed, "mAir" , { "life_medicLevel", 3 } },
			{ "I_Heli_light_03_unarmed_F", phellcatmed, "mAir", { "life_mediclevel", 4 } },
		};
	};

	class civ_truck {
		side = "civ";
		vehicles[] = {
			{ "C_Van_01_box_F", pboxer, "trucking" },
			{ "C_Van_01_fuel_F", ftruck, "trucking" },
			{ "I_Truck_02_transport_F", pzamaktrans, "trucking" },
			{ "I_Truck_02_covered_F", pzamakcov, "trucking" },
			{ "B_Truck_01_transport_F", phemtttrans, "trucking" },
			{ "O_Truck_03_transport_F", ptempesttrans, "trucking" },
			{ "O_Truck_03_covered_F", ptempestcov, "trucking" },
			{ "B_Truck_01_box_F", phemttbox, "trucking" },
			{ "O_Truck_03_device_F", ptempestdev, "trucking" },
		};
	};

	class reb_car {
		side = "civ";
		vehicles[] = {
			{ "B_Quadbike_01_F", pquadbike, "" },
			{ "B_G_Offroad_01_F", poffroad, "" },
			{ "O_MRAP_02_F", pifrit, "rebel" },
			{ "B_Heli_Light_01_F", pmh9civ, "rebel" },
			{ "O_Heli_Light_02_unarmed_F", porcaciv, "rebel" },
			{ "B_Heli_Transport_03_unarmed_F", huron, "rebel" },
			{ "I_Heli_Transport_02_F", mohawk, "rebel" },
			{ "I_Heli_light_03_unarmed_F", civhellcat, "rebel" },
			{ "O_Heli_Transport_04_box_F", ptarutrans, "rebel" },
			{ "O_Heli_Transport_04_bench_F", ptarubench, "rebel" },
			{ "O_Heli_Transport_04_fuel_F", ptarufuel, "rebel" },
		};
	};

	class arms_car {
		side = "civ";
		vehicles[] = {
			{ "B_G_Offroad_01_armed_F", p50cal, "" },
		};
	};

	class cop_car {
		side = "cop";
		vehicles[] = {
			{ "C_Offroad_01_F", poffroadcop, "" },
			{ "C_SUV_01_F", psuvcop, "", { "life_coplevel", 2 } },
			{ "B_MRAP_01_F", phuntercop, "", { "life_coplevel", 4 } },
			{ "I_MRAP_03_F", phuntercop, "", { "life_coplevel", 6 } },
			{ "C_Hatchback_01_sport_F", phatchbacksport, "", { "life_coplevel", 2 } }
		};
	};

	class civ_air {
		side = "civ";
		vehicles[] = {
			{ "C_Heli_Light_01_civil_F", pm900, "pilot" },
			{ "O_Heli_Light_02_unarmed_F", porcaciv, "pilot" },
			{ "O_Heli_Transport_04_fuel_F", ptarufuel, "pilot" },
			{ "O_Heli_Transport_04_box_F", ptarutrans, "pilot" },
			{ "I_Heli_Transport_02_F", mohawk, "pilot" }
		};
	};
	class civ_jet {
		side = "civ";
		vehicles[] = {
			{ "B_Plane_CAS_01_F", ptarutrans, "pilot",{ "life_donator", 3 } }
		};
	};

	class cop_air {
		side = "cop";
		vehicles[] = {
			{ "B_Heli_Light_01_F", pmh9cop, "", { "life_coplevel", 3 } },
			{ "B_Heli_Transport_01_F", pghosthawkcop, "", { "life_coplevel", 5 } },
			{ "I_Heli_light_03_unarmed_F", phellcatcop, "", { "life_coplevel", 4 } },
			{ "O_Heli_Light_02_unarmed_F", porcacop, "", { "life_coplevel", 3 } }
		};
	};

	class cop_airhq {
		side = "cop";
		vehicles[] = {
			{ "B_Heli_Light_01_F", pmh9cop, "", { "life_coplevel", 2 } },
			{ "B_Heli_Transport_01_F", pghosthawkcop, "", { "life_coplevel", 4 } }
		};
	};

	class cop_ship {
		side = "cop";
		vehicles[] = {
			{ "B_Boat_Transport_01_F", passaultboat, "" },
			{ "C_Boat_Civil_01_police_F", pspeedboat, "" },
			{ "B_SDV_01_F", psdv, "" }
		};
	};

	class civ_ship {
		side = "civ";
		vehicles[] = {
			{ "C_Rubberboat", prescueboat, "boat" },
			{ "C_Boat_Civil_01_F", pspeedboat, "boat" },
			{ "B_SDV_01_F", psdv, "boat" }
		};
	};
};

/*
	Vehicle Configs (Contains textures and other stuff)

	storageFee (Getting vehicles out of garage) format:
		INDEX 0: Civilian Price
		INDEX 1: Cop Price
		INDEX 3: EMS Price
		INDEX 4: OPFOR Price (Not implemented in vanilla but still leaving support

	Textures config follows { Texture Name, side, {texture(s)path}}
	Texture(s)path follows this format:
		INDEX 0: Texture Layer 0
		INDEX 1: Texture Layer 1
		INDEX 2: Texture Layer 2
		etc etc etc
*/
class CfgVehicles {
	class Default {
		vItemSpace = -1;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 0, 0, 0, 0 };
		insurance = 2500;
		chopShop = chop;
		textures[] = {};
	};

	class I_Truck_02_medical_F : Default {
		vItemSpace = 10;
		storageFee[] = { 0, 0, 1500, 0 };
		garageSell[] = { 0, 0, 5000, 0 };
		insurance = 2500;
		chopShop = 3000;
	};

	class O_Truck_03_medical_F : Default {
		vItemSpace = 20;
		storageFee[] = { 0, 0, 3000, 0 };
		garageSell[] = { 0, 0, 10000, 0 };
		insurance = 2500;
		chopShop = 7500;
	};

	class B_Truck_01_medical_F : Default {
		vItemSpace = 20;
		storageFee[] = { 0, 0, 6500, 0 };
		garageSell[] = { 0, 0, 25000, 0 };
		insurance = 2500;
		chopShop = 12500;
	};

	class C_Rubberboat {
        vItemSpace = 45;
        storageFee[] = { 100, 300, 0, 0 };
		garageSell[] = { 300, 350, 0, 0 };
        insurance = 2000;
        chopShop = 300;
        textures[] = { };
    };

	class B_Heli_Transport_01_F {
		vItemSpace = 20;
		storageFee[] = { 0, 100, 0, 0 };
		garageSell[] = { 0, 100, 0, 0 };
		insurance = 30000;
		chopShop = 40000;
		textures[] = {
            { "APD", "cop", {
                "textures\hawk1.jpg",
                "textures\hawk2.jpg"
            } }
        };
    };

	class B_MRAP_01_hmg_F : Default {
		vItemSpace = 100;
	};

	class O_Boat_Armed_01_hmg_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 21000, 21000, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        storageFee[] = { 0, 16500, 0, 0 };
		garageSell[] = { 0, 21000, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class I_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_G_Boat_Transport_01_F {
        vItemSpace = 45;
        storageFee[] = { 100, 0, 0, 0 };
        insurance = 2500;
        chopShop = 1000;
        textures[] = { };
    };

	class B_Boat_Transport_01_F {
        vItemSpace = 45;
        storageFee[] = { 0, 100, 0, 0 };
		garageSell[] = { 0, 100, 0, 0 };
        insurance = 2500;
        chopShop = 1000;
        textures[] = { };
    };

	class O_Truck_03_transport_F {
        vItemSpace = 300;
        storageFee[] = { 100, 0, 0, 0 };
        garageSell[] = { 15000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 25000;
        textures[] = { };
    };

	class O_Truck_03_device_F {
        vItemSpace = 650;
        storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 75000, 0, 0, 0 };
        insurance = 120000;
        chopShop = 80000;
        textures[] = { };
    };

	class Land_CargoBox_V1_F : Default {
        vItemSpace = 200;
    };

	class Box_IND_Grenades_F : Default {
        vItemSpace = 100;
    };

	class B_supplyCrate_F {
        vItemSpace = 1000;
    };

	class B_G_Offroad_01_F {
        vItemSpace = 50;
        storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 1500, 0, 0, 0 };
		insurance = 6000;
        chopShop = 1500;
        textures[] = { };
    };

	class B_G_Offroad_01_armed_F {
        vItemSpace = 10;
        storageFee[] = { 20000, 0, 0, 0 };
		garageSell[] = { 1500, 0, 0, 0 };
		insurance = 300000;
        chopShop = 250000;
        textures[] = { };
    };

	class I_G_Van_01_transport_F {
        vItemSpace = 100;
        storageFee[] = { 1000, 0, 0, 0 };
        insurance = 200000;
        chopShop = 5000;
        textures[] = { };
    };

	class C_Boat_Civil_01_F {
        vItemSpace = 85;
        storageFee[] = { 100, 100, 0, 0 };
		garageSell[] = { 1000, 1000, 0, 0 };
        insurance = 2500;
        chopShop = 1000;
        textures[] = { };
    };

	class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        storageFee[] = { 0, 100, 0, 0 };
		garageSell[] = { 0, 1000, 0, 0 };
        insurance = 2500;
        chopShop = 1000;
        textures[] = { };
    };

	class C_Boat_Civil_01_rescue_F {
        vItemSpace = 85;
        storageFee[] = { 100, 0, 0, 0 };
        garageSell[] = { 1000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 1000;
        textures[] = { };
    };

	class B_Truck_01_box_F {
        vItemSpace = 1000;
        storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 65000, 0, 0, 0 };
        insurance = 200000;
        chopShop = 150000;
        textures[] = { };
    };

	class B_Truck_01_transport_F {
        vItemSpace = 210;
        storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 45000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 45000;
        textures[] = { };
    };

	class O_MRAP_02_F {
        vItemSpace = 40;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 65000, 0, 0, 0 };
        insurance = 200000;
        chopShop = 165000;
        textures[] = { };
    };

	class I_MRAP_03_F {
        vItemSpace = 10;
        storageFee[] = { 100, 100, 100, 100 };
        insurance = 100000;
        chopShop = 70000;
       textures[] = {
            { "AsukaFag", "cop", {
	                "textures\bobey.jpg"
            } },
	    };
    };

	class C_Offroad_01_F {
        vItemSpace = 50;
        storageFee[] = { 100, 100, 100, 100 };
		garageSell[] = { 1500, 1500, 1500, 1500 };
		insurance = 7000;
        chopShop = 2500;
        textures[] = {
        	{ "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            } },
			{ "Yellow", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"
            } },
			{ "White", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            } },
			{ "Blue", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            } },
			{ "Dark Red", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            } },
			{ "Blue / White", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            } },
            { "Fed", "fed", {
	                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Deputy Wagon", "cop", {
	                "textures\offroad_cop.jpg"
            } },
            { "Taxi", "civ", {
	                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } }
	    };
    };

	class C_Kart_01_Blu_F {
		vItemSpace = 5;
		storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 3500, 0, 0, 0 };
		inusrance = 10000;
		chopShop = 3500;
		textures[] = {};
	};

	class C_Kart_01_Fuel_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class
	class C_Kart_01_Red_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class
	class C_Kart_01_Vrana_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class

	class C_Hatchback_01_sport_F {
        vItemSpace = 30;
        storageFee[] = { 100, 100, 100, 0 };
		garageSell[] = { 3000, 100, 100, 0 };
        insurance = 12000;
        chopShop = 5000;
        textures[] = {
        	{ "Interceptor", "cop", {
                "textures\hatchbacksport.jpg"
            } },
        	{ "Red", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            } },
			{ "Dark Blue", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            } },
			{ "Orange", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            } },
			{ "Black / White", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            } },
			{ "Beige", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
            } },
			{ "Green", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
            } },
			{ "Rockstar", "civ", {
	                "textures\rockstar.paa"
            } },
			{ "Quick Response", "med", {
	                "textures\hatchmedic.jpg"
            } }
        };
    };

	class B_Quadbike_01_F {
        vItemSpace = 20;
        storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 125, 0, 0, 0 };
        insurance = 1500;
        chopShop = 500;
        textures[] = {
        	{ "Brown", "cop", {
                "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
            } },
			{ "Digi Desert", "reb", {
	                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"
	        } },
			{ "Black", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
	        } },
			{ "Blue", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
	        } },
			{ "Red", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
	        } },
			{ "White", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
	        } },
			{ "Digi Green", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
	        } },
			{ "Hunter Camo", "civ", {
	                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
	        } },
	        { "Rebel Camo", "reb", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            } }
        };
    };

	class I_Truck_02_covered_F {
        vItemSpace = 200;
        storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 20000, 0, 0, 0 };
        insurance = 55000;
        chopShop = 25000;
        textures[] = {
        	{ "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "fed", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

	class I_Truck_02_transport_F {
        vItemSpace = 175;
        storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 15000, 0, 0, 0 };
		insurance = 40000;
		chopShop = 20000;
		textures[] = {};
    };

	class O_Truck_03_covered_F {
		vItemSpace = 405;
		storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 35000, 0, 0, 0 };
		insurance = 85000;
		chopShop = 40000;
		textures[] = {};
	};

	class C_Hatchback_01_F {
        vItemSpace = 30;
        storageFee[] = { 100, 100, 0, 0 };
		garageSell[] = { 500, 100, 0, 0 };
        insurance = 3000;
        chopShop = 1000;
        textures[] = {
        	{ "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
            } },
			{ "Green", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
            } },
			{ "Blue", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
            } },
			{ "Dark Blue", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
            } },
			{ "Yellow", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
            } },
			{ "White", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
            } },
			{ "Grey", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
            } },
            { "Black", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa"
            } }
        };
    };

	class C_SUV_01_F {
        vItemSpace = 50;
        storageFee[] = { 100, 100, 0, 0 };
		garageSell[] = { 2500, 100, 0, 0 };
        insurance = 8000;
        chopShop = 3000;
        textures[] = {
        	{ "Dark Red", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
            } },
			{ "Silver", "civ", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
            } },
			{ "Orange", "civ", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
            } },
            { "Squad Car", "cop", {
                "textures\suv.jpg"
            } },
            { "Rainbow", "civ", {
                "textures\rainbowsuv.jpg"
            } },
            { "Medic", "med", {
                "textures\msuv.jpg"
            } },
            { "White", "civ", {
                "textures\swagsuv.jpg"
            } }
	        };
    };

	class C_Van_01_transport_F {
        vItemSpace = 100;
        storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 5000, 0, 0, 0 };
        insurance = 12500;
        chopShop = 6000;
        textures[] = {
        	{ "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

	class C_Van_01_box_F {
        vItemSpace = 140;
        storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 12000, 0, 0, 0 };
        insurance = 20000;
        chopShop = 13000;
        textures[] = {
        	{ "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } },
            { "Ambulance", "med", {
                "textures\van_rtw1.jpg",
                "textures\van_rtw2.jpg"
            } }
        };
    };
	class B_MRAP_01_F {
        vItemSpace = 65;
        storageFee[] = { 0, 100, 0, 0 };
		garageSell[] = { 0, 100, 0, 0 };
        insurance = 20000;
        chopShop = 50000;
        textures[] = {
        	{ "Swat", "cop", {
               "textures\hunter1.jpg",
               "textures\hunter2.jpg"
            } },
        };
    };

	class I_Heli_light_03_unarmed_F {
        vItemSpace = 75;
        storageFee[] = { 100, 100, 0, 0 };
		garageSell[] = { 1000, 100, 0, 0 };
        insurance = 150000;
        chopShop = 130000;
        textures[] = {
        	{ "Black", "civ", {
                "textures\asd.paa"
            } },
        	{ "APD", "cop", {
                "textures\hellcat_cop_maverick.jpg"
            } },
        	{ "Hellcat", "med", {
                "textures\mhellcat.jpg"
            } },
        };
    };

	class B_Heli_Light_01_F {
        vItemSpace = 60;
        storageFee[] = { 100, 100, 0, 0 };
		garageSell[] = { 30000, 100, 0, 0 };
        insurance = 75000;
        chopShop = 40000;
        textures[] = {
        	{ "APD", "cop", {
                "textures\bird.jpg"
            } },
			{ "Black", "fed", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"
            } },
			{ "Civ Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            } },
			{ "Civ Red", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            } },
			{ "Digi Green", "donate", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            } },
			{ "Blueline", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            } },
			{ "Elliptical", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            } },
			{ "Furious", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            } },
			{ "Jeans Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            } },
			{ "Speedy Redline", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            } },
			{ "Sunset", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            } },
			{ "Vrana", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            } },
			{ "Waves Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            } },
			{ "Rebel Digital", "reb", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } },
            { "EMS White", "med", {
                "#(argb,8,8,3)color(1,1,1,0.8)"
            } }
        };
    };

	class O_Heli_Light_02_unarmed_F {
        vItemSpace = 220;
        storageFee[] = { 100, 100, 100, 0 };
		garageSell[] = { 40000, 100, 100, 0 };
        insurance = 150000;
        chopShop = 100000;
        textures[] = {
			{ "White / Blue", "civ", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"   
            } },
			{ "Digi Green", "civ", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            } },
			{ "Desert Digi", "civ", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa" 
            } },
            { "Black", "cop", {
                "textures\coporca.jpg"
            } },
            { "Medic", "med", {
                "textures\medicorca.jpg"
            } }
        };
    };

	class I_Heli_Transport_02_F {
        vItemSpace = 350;
        storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 50000, 0, 0, 0 };
        insurance = 200000;
        chopShop = 175000;
        textures[] = {
        	{ "Ion", "civ", {
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_ion_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_ion_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_ion_co.paa"
            } },
            { "Dahoman", "civ", {
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_dahoman_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_dahoman_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_dahoman_co.paa"
            } }
        };
    };

    class B_Heli_Transport_03_unarmed_F {
		vItemSpace = 275;
		storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 35000, 0, 0, 0 };
		insurance = 175000;
		chopShop = 150000;
		textures[] = {};
	};

    class O_Heli_Transport_04_bench_F {
		vItemSpace = 30;
		storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 30000, 0, 0, 0 };
		insurance = 150000;
		chopShop = 120000;
		textures[] = {};
	};

    class O_Heli_Transport_04_box_F {
		vItemSpace = 350;
		storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 30000, 0, 0, 0 };
		insurance = 200000;
		chopShop = 175000;
		textures[] = {};
	};

    class O_Heli_Transport_04_fuel_F {
		vItemSpace = 225;
		storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 30000, 0, 0, 0 };
		insurance = 130000;
		chopShop = 100000;
		textures[] = {};
	};

    class C_Heli_Light_01_civil_F {
		vItemSpace = 50;
		storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 30000, 0, 0, 0 };
		insurance = 60000;
		chopShop = 40000;
		textures[] = {
            { "Civ Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            } },
			{ "Civ Red", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            } },
			{ "Digi Green", "donate", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            } },
			{ "Blueline", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            } },
			{ "Elliptical", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            } },
			{ "Furious", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            } },
			{ "Jeans Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            } },
			{ "Speedy Redline", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            } },
			{ "Sunset", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            } },
			{ "Vrana", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            } },
			{ "Waves Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            } },
            { "Medic", "med", {
                "textures\m900.jpg"
            } }
        };
    };

	class C_Van_01_fuel_F {
		vItemSpace = 200;
		storageFee[] = { 100, 0, 0, 0 };
		garageSell[] = { 3000, 0, 0, 0 };
		insurance = 20000;
		chopShop = 15000;
		textures[] = {};
	};

	class C_Offroad_01_repair_F {
		vItemSpace = 10;
		storageFee[] = { 100, 100, 100, 100 };
		garageSell[] = { 100, 0, 0, 0 };
		insurance = 2500;
		chopShop = 10;
		textures[] = {};
	};
};