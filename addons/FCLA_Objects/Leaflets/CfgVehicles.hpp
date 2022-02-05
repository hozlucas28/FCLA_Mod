
/***************************************************************************|
|                          VEHICULOS - "PANFLETOS"                          |
|***************************************************************************/

class Custom_Leaflet_05_F: Leaflet_05_F {
  author = "hozlucas28";
  displayName = "Panfleto (personalizado)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\Custom_Leaflet_05_F.jpg";
  hiddenSelectionsTextures[] = {"a3\ui_f_orange\data\cfgleaflets\west_ca.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Intel";
	scope = 2;
  scopeCurator = 2;

  class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Panfleto";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\ui_f_orange\data\cfgleaflets\west_ca.paa""";

    	class values {
        class Texture_1 {
        	name = "Numero 1";
        	value = "\a3\ui_f_orange\data\cfgleaflets\west_ca.paa";
        };

        class Texture_2 {
        	name = "Numero 2";
        	value = "\a3\ui_f_orange\data\cfgleaflets\east_ca.paa";
        };

        class Texture_3 {
        	name = "Numero 3";
        	value = "\a3\ui_f_orange\data\cfgleaflets\guer_ca.paa";
        };

        class Texture_4 {
        	name = "Numero 4";
        	value = "\a3\ui_f_orange\data\cfgleaflets\civ_ca.paa";
        };

        class Texture_5 {
        	name = "Numero 5";
        	value = "\a3\missions_f_aow\data\img\leaflets\dead_letter_ca.paa";
        };

        class Texture_6 {
        	name = "Numero 6";
        	value = "\a3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa";
        };

        class Texture_7 {
        	name = "Numero 7";
        	value = "\a3\missions_f_orange\data\img\orange_compositions\tree\treenote_02_co.paa";
        };

        class Texture_8 {
        	name = "Numero 8";
        	value = "\a3\missions_f_orange\data\img\orange_compositions\tree\treenote_03_co.paa";
        };

        class Texture_9 {
        	name = "Numero 9";
        	value = "\a3\missions_f_oldman\data\img\leaflets\dead_body_note_ca.paa";
        };

        class Texture_10 {
        	name = "Numero 10";
        	value = "\a3\missions_f_oldman\data\img\leaflets\hope_leaflet_ca.paa";
        };

        class Texture_11 {
        	name = "Numero 11";
        	value = "\a3\missions_f_oldman\data\img\leaflets\balavu_ca.paa";
        };

        class Texture_12 {
        	name = "Numero 12";
        	value = "\a3\missions_f_oldman\data\img\leaflets\north_tanoa_ca.paa";
        };

        class Texture_13 {
        	name = "Numero 13";
        	value = "\a3\missions_f_oldman\data\img\leaflets\central_tanoa_ca.paa";
        };

        class Texture_14 {
        	name = "Numero 14";
        	value = "\a3\missions_f_oldman\data\img\leaflets\balavu_ca.paa";
        };

        class Texture_15 {
        	name = "Numero 15";
        	value = "\a3\missions_f_oldman\data\img\leaflets\lijn_islands_ca.paa";
        };
			};
		};
	};
};
