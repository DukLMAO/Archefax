class Life_cell_phone {
	idd = 3000;
	name= "life_cell_phone";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_cellphone";
	
	class controlsBackground {

		
		class EXphone : Life_RscPicture 
		{
			idc = 3001;
			text = "textures\phone.paa";
			x = 0.384999;
			y = -0.00433818;
			w = 0.8125;
			h = 1.03676;
		};
	
	};
			
	class controls {
		
		class TextToSend : Life_RscTitle 
		{
		
			colorBackground[] = {0, 0, 0, 0};
			idc = 3002;
			text = "$STR_CELL_TextToSend";
			x = 0.605607;
			y = 0.210809;
			w = 0.2725;
			h = 0.04;
		};
		
		   class textEdit : Life_RscEdit 
		{
		
		idc = 3003;
		
		text = "";
		x = 0.607904; y = 0.340086;
		w = 0.325; h = 0.26;
		
		};
		
		class TextMsgButton : life_RscButtonMenu 
		{
			idc = 3015;
			text = "Text";
			colorBackground[] = {1, 0, 1, .5};
			onButtonClick = "[] call TON_fnc_cell_textmsg";
			colorActive[] = {0,0,0,0};
			
			x = 0.6125;
			y = 0.64;
			w = 0.15;
			h = 0.05;
		};
		
		class PlayerList : Life_RscCombo 
		{
			idc = 3004;
			
			x = 0.6125; y = 0.28;
			w = 0.2375; h = 0.04;
		};

		class TextCopButton : life_RscButtonMenu 
		{
			idc = 3016;
			text = "Sheriff";
			colorBackground[] = {0, 0, 1, .5};
			onButtonClick = "[] call life_fnc_copMsg";
			
			x = 0.775;
			y = 0.64;
			w = 0.15;
			h = 0.05;
		};
		
		class TextAdminButton : life_RscButtonMenu 
		{
			idc = 3017;
			text = "Admin";
			colorBackground[] = {1, 0, 0, .5};
			onButtonClick = "[] call TON_fnc_cell_textadmin";
			
			x = 0.775;
			y = 0.72;
			w = 0.15;
			h = 0.05;
		};
		
		class AdminMsgButton : life_RscButtonMenu 
		{
			idc = 3020;
			text = "Admin Msg";
			colorBackground[] = {0,0.23,1,0.48};
			onButtonClick = "[] call TON_fnc_cell_adminmsg";
			
			x = 0.6125;
			y = 0.8;
			w = 0.15;
			h = 0.05;
		};
		
		class AdminMsgAllButton : life_RscButtonMenu 
		{
			idc = 3021;
			text = "Text All";
			colorBackground[] = {0,0.23,1,0.48};
			onButtonClick = "[] call TON_fnc_cell_adminmsgall";
			
			x = 0.775;
			y = 0.8;
			w = 0.15;
			h = 0.05;
		};
		
		class EMSRequest : life_RscButtonMenu
		{
			idc = 3022;
			text = "EMS";
			colorBackground[] = {0, 1, 0, .5};
			onButtonClick = "[] call TON_fnc_cell_emsrequest";
			
			x = 0.6125;
			y = 0.72;
			w = 0.15;
			h = 0.05;
		};
		
		class CloseButtonKey : Life_RscButtonInvisible {
			idc = -1;
			text = "";
			onButtonClick = "closeDialog 0;";
			colorBackground[] = {0,0,0,0};
			x = 0.743107;
			y = 0.886213;
			w = 0.05;
			h = 0.06;
		};
	};
};