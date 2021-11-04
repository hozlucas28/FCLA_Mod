
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Define los classnames para colocar la información en la identificación.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_ID_Card_Dialog {
	idd = 10001;
	movingenabe = true;

	class ControlsBackground {
		class background_display: FCLA_ID_Card_Picture {
			idc = 1001;
			moving = 1;
			text = "\FCLA_Interactions\ID_Card\data\Card_Display.paa";
			x = 0.236458 * safezoneW + safezoneX;
			y = 0.225107 * safezoneH + safezoneY;
			w = 0.509167 * safezoneW;
			h = 0.703726 * safezoneH;
		};

		class header_name: FCLA_ID_Card_Header_Text {
			idc = 1002;
			moving = 1;
			text = "NOMBRE:";
			x = 0.48 * safezoneW + safezoneX;
			y = 0.335064 * safezoneH + safezoneY;
			w = 0.35 * safezoneW;
			h = 0.0219914 * safezoneH;
		};

		class header_date_of_birth: FCLA_ID_Card_Header_Text {
			idc = 1003;
			moving = 1;
			text = "AÑOS:";
			x = 0.48 * safezoneW + safezoneX;
			y = 0.390043 * safezoneH + safezoneY;
			w = 0.2699917 * safezoneW;
			h = 0.0219914 * safezoneH;
		};

		class header_place_of_birth: FCLA_ID_Card_Header_Text {
			idc = 1004;
			text = "LUGAR DE NACIMIENTO:";
			x = 0.48 * safezoneW + safezoneX;
			y = 0.445021 * safezoneH + safezoneY;
			w = 0.2692917 * safezoneW;
			h = 0.0219914 * safezoneH;
			moving = 1;
		};

		class header_date_of_expiry: FCLA_ID_Card_Header_Text {
			idc = 1005;
			moving = 1;
			text = "FECHA DE EXPIRACIÓN:";
			x = 0.48 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.2695625 * safezoneW;
			h = 0.0219914 * safezoneH;
		};

		class header_signature: FCLA_ID_Card_Header_Text {
			idc = 1006;
			moving = 1;
			text = "FIRMA:";
			x = 0.48 * safezoneW + safezoneX;
			y = 0.543983 * safezoneH + safezoneY;
			w = 0.2790208 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
	};

	class Controls {
		class name: FCLA_ID_Card_Text {
			idc = 1007;
			text = "X-X-X-X-X-X";
			x = 0.48 * safezoneW + safezoneX;
			y = 0.357056 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.0219914 * safezoneH;
		};

		class date_of_birth: FCLA_ID_Card_Text {
			idc = 1008;
			text = "X-X-X-X-X-X";
			x = 0.48 * safezoneW + safezoneX;
			y = 0.412034 * safezoneH + safezoneY;
			w = 0.2992083 * safezoneW;
			h = 0.0219914 * safezoneH;
		};

		class place_of_birth: FCLA_ID_Card_Text {
			idc = 1009;
			text = "X-X-X-X-X-X";
			x = 0.48 * safezoneW + safezoneX;
			y = 0.467013 * safezoneH + safezoneY;
			w = 0.2992083 * safezoneW;
			h = 0.0219914 * safezoneH;
		};

		class expiry_date: FCLA_ID_Card_Text {
			idc = 1010;
			text = "26.07.2048";
			x = 0.48 * safezoneW + safezoneX;
			y = 0.521991 * safezoneH + safezoneY;
			w = 0.2872083 * safezoneW;
			h = 0.0219914 * safezoneH;
		};

		class close_button: FCLA_ID_Card_Button {
			idc = 1011;
			text = "X";
			action = "closeDialog 0";
			x = 0.620313 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.0194583 * safezoneW;
			h = 0.0219914 * safezoneH;
		};
	};
};
