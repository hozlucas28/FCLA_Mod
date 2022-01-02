
/***************************************************************************|
|                         VEHÍCULOS - "ELECTRÓNICA"                         |
|***************************************************************************/



/* ------------------------ PORTÁTILES RESISTENTES ------------------------- */

class Land_Custom_Laptop_03_black_F: Land_Laptop_03_black_F	{
  author = "hozlucas28";
	displayName = "Portátil resistente (negro, personalizado)";
	//editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_Laptop_03_black_F.jpg";
  hiddenSelections[] = {"Camo_1", "Screen_1"};
	hiddenSelectionsTextures[] = {"a3\Props_F_Enoch\Military\Equipment\data\Laptop_03_black_CO.paa", "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa"};
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pantalla";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [1, _value];";
      defaultValue = """\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa""";

    	class values {
        class Texture_1 {
        	name = "Fondo (v1)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa";
        };

        class Texture_2 {
        	name = "Fondo (v2)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background2_co.paa";
        };

        class Texture_3 {
        	name = "Menú principal";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen01_co.paa";
        };

        class Texture_4 {
        	name = "Escritorio (CIA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_CIA.paa";
        };

        class Texture_5 {
        	name = "Escritorio (FCLA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_FCLA.paa";
        };

        class Texture_6 {
        	name = "Hackeo completado";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen02_co.paa";
        };

        class Texture_7 {
        	name = "Ultra secreto";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_restricted_ca.paa";
        };

        class Texture_8 {
        	name = "AAN";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_AAN.paa";
        };

        class Texture_9 {
        	name = "Rota";
        	value = "\a3\missions_f_exp\data\img\exp_m01_monitor_ca.paa";
        };
			};
		};
	};
};


class Land_Custom_Laptop_03_olive_F: Land_Laptop_03_olive_F	{
  author = "hozlucas28";
	displayName = "Portátil resistente (oliva, personalizado)";
	//editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_Laptop_03_olive_F.jpg";
  hiddenSelections[] = {"Camo_1", "Screen_1"};
	hiddenSelectionsTextures[] = {"a3\Props_F_Enoch\Military\Equipment\data\Laptop_03_olive_CO.paa", "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa"};
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pantalla";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [1, _value];";
      defaultValue = """\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa""";

    	class values {
        class Texture_1 {
        	name = "Fondo (v1)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa";
        };

        class Texture_2 {
        	name = "Fondo (v2)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background2_co.paa";
        };

        class Texture_3 {
        	name = "Menú principal";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen01_co.paa";
        };

        class Texture_4 {
        	name = "Escritorio (CIA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_CIA.paa";
        };

        class Texture_5 {
        	name = "Escritorio (FCLA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_FCLA.paa";
        };

        class Texture_6 {
        	name = "Hackeo completado";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen02_co.paa";
        };

        class Texture_7 {
        	name = "Ultra secreto";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_restricted_ca.paa";
        };

        class Texture_8 {
        	name = "AAN";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_AAN.paa";
        };

        class Texture_9 {
        	name = "Rota";
        	value = "\a3\missions_f_exp\data\img\exp_m01_monitor_ca.paa";
        };
			};
		};
	};
};


class Land_Custom_Laptop_03_sand_F: Land_Laptop_03_sand_F	{
  author = "hozlucas28";
	displayName = "Portátil resistente (arena, personalizado)";
	//editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_Laptop_03_sand_F.jpg";
  hiddenSelections[] = {"Camo_1", "Screen_1"};
	hiddenSelectionsTextures[] = {"a3\Props_F_Enoch\Military\Equipment\data\Laptop_03_sand_CO.paa", "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa"};
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pantalla";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [1, _value];";
      defaultValue = """\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa""";

    	class values {
        class Texture_1 {
        	name = "Fondo (v1)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa";
        };

        class Texture_2 {
        	name = "Fondo (v2)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background2_co.paa";
        };

        class Texture_3 {
        	name = "Menú principal";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen01_co.paa";
        };

        class Texture_4 {
        	name = "Escritorio (CIA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_CIA.paa";
        };

        class Texture_5 {
        	name = "Escritorio (FCLA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_FCLA.paa";
        };

        class Texture_6 {
        	name = "Hackeo completado";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen02_co.paa";
        };

        class Texture_7 {
        	name = "Ultra secreto";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_restricted_ca.paa";
        };

        class Texture_8 {
        	name = "AAN";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_AAN.paa";
        };

        class Texture_9 {
        	name = "Rota";
        	value = "\a3\missions_f_exp\data\img\exp_m01_monitor_ca.paa";
        };
			};
		};
	};
};



/* ------------------------------ PORTÁTILES ------------------------------- */

class Land_Custom_Laptop_unfolded_F: Land_Laptop_unfolded_F {
  author = "hozlucas28";
	displayName = "Ordenador portátil (abierto, personalizado)";
	//editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_Laptop_unfolded_F.jpg";
  hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\a3\missions_f_oldman\data\img\screens\syndiaktlaptopdesktop_co.paa"};
	scope = 2;
  scopeCurator = 2;

  class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pantalla";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\missions_f_oldman\data\img\screens\syndiaktlaptopdesktop_co.paa""";

    	class values {
        class Texture_1 {
        	name = "Escritorio (v1)";
        	value = "\a3\missions_f_oldman\data\img\screens\syndiaktlaptopdesktop_co.paa";
        };

        class Texture_2 {
        	name = "Escritorio (v2)";
        	value = "\a3\missions_f_oldman\data\img\screens\oldmanntbdesktop_co.paa";
        };

        class Texture_3 {
        	name = "Escritorio (CIA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_unfolded_F_Desktop_CIA.paa";
        };

        class Texture_4 {
        	name = "Escritorio (FCLA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_unfolded_F_Desktop_FCLA.paa";
        };

        class Texture_5 {
        	name = "AAN (v1)";
        	value = "\a3\missions_f_orange\data\img\orange_compositions\c8\aan_co.paa";
        };

        class Texture_6 {
        	name = "AAN (v2)";
        	value = "\a3\missions_f_orange\data\img\faction_idap\laptop_campaign_co.paa";
        };

        class Texture_7 {
        	name = "Dianas (v1)";
        	value = "\a3\missions_f_bootcamp\data\img\laptop\electronics_screens_laptop_targetactivated_co.paa";
        };

        class Texture_8 {
        	name = "Dianas (v2)";
        	value = "\a3\missions_f_bootcamp\data\img\laptop\electronics_screens_laptop_targeterror_co.paa";
        };

        class Texture_9 {
        	name = "Dianas (v3)";
        	value = "\a3\missions_f_bootcamp\data\img\laptop\electronics_screens_laptop_targetdeactivated_co.paa";
        };
			};
		};
	};
};



/* ------------------------------- MONITORES ------------------------------- */

class Land_Custom_PCSet_01_screen_F: Land_PCSet_01_screen_F	{
  author = "hozlucas28";
	displayName = "Equipo de PC (pantalla, personalizada)";
	//editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_PCSet_01_screen_F.jpg";
  hiddenSelections[] = {"Camo_1"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Electronics\data\Land_PCSet_01_screen_F_Desktop_CIA.paa"};
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pantalla";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\FCLA_Objects\Electronics\data\Land_PCSet_01_screen_F_Desktop_CIA.paa""";

    	class values {
        class Texture_1 {
        	name = "Escritorio (CIA)";
        	value = "\FCLA_Objects\Electronics\data\Land_PCSet_01_screen_F_Desktop_CIA.paa";
        };

        class Texture_2 {
        	name = "Escritorio (FCLA)";
        	value = "\FCLA_Objects\Electronics\data\Land_PCSet_01_screen_F_Desktop_FCLA.paa";
        };

        class Texture_3 {
        	name = "Programando";
        	value = "\a3\data_f_exp_b\data\fm_learn_combataudio_ca.paa";
        };

        class Texture_4 {
        	name = "Reiniciando";
        	value = "\a3\missions_f_oldman\data\img\screens\csatntbreboot50_co.paa";
        };

        class Texture_5 {
        	name = "Actualizando";
        	value = "\a3\missions_f_orange\data\img\showcase_lawsofwar\monitor_vr_updating_na_co.paa";
        };

        class Texture_6 {
        	name = "Torreta autónoma (activada)";
        	value = "\a3\missions_f_oldman\data\img\screens\csatntbturretsonline_co.paa";
        };

        class Texture_7 {
        	name = "Torreta autónoma (desactivada)";
        	value = "\a3\missions_f_oldman\data\img\screens\csatntbturretsoffline_co.paa";
        };
			};
		};
	};
};



/* ------------------------- PANTALLAS RESISTENTES ------------------------- */

class Land_Custom_TripodScreen_01_large_black_F: Land_TripodScreen_01_large_black_F	{
  author = "hozlucas28";
	displayName = "Pantalla grande resistente (negra, personalizada)";
	//editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_TripodScreen_01_large_black_F.jpg";
  hiddenSelections[] = {"Screen_0", "Screen_1", "Screen_2", "Screen_3", "Screen_4", "Screen_5", "Screen_6", "Screen_7", "Screen_8", "Screen_9", "Camo_1"};
	hiddenSelectionsTextures[] = {"\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa", "", "", "", "", "", "", "", "", "", "a3\Props_F_Enoch\Military\Camps\data\TripodScreen_01_black_CO.paa"};
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pantalla";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa""";

    	class values {
        class Texture_1 {
        	name = "Fondo (v1)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa";
        };

        class Texture_2 {
        	name = "Fondo (v2)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background2_co.paa";
        };

        class Texture_3 {
        	name = "Menú principal";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen01_co.paa";
        };

        class Texture_4 {
        	name = "Escritorio (CIA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_CIA.paa";
        };

        class Texture_5 {
        	name = "Escritorio (FCLA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_FCLA.paa";
        };

        class Texture_6 {
        	name = "Hackeo completado";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen02_co.paa";
        };

        class Texture_7 {
        	name = "Ultra secreto";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_restricted_ca.paa";
        };

        class Texture_8 {
        	name = "AAN";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_AAN.paa";
        };

        class Texture_9 {
        	name = "Rota";
        	value = "\a3\missions_f_exp\data\img\exp_m01_monitor_ca.paa";
        };
			};
		};
	};
};


class Land_Custom_TripodScreen_01_large_F: Land_TripodScreen_01_large_F	{
  author = "hozlucas28";
	displayName = "Pantalla grande resistente (grande, personalizada)";
	//editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_TripodScreen_01_large_F.jpg";
  hiddenSelections[] = {"Screen_0", "Screen_1", "Screen_2", "Screen_3", "Screen_4", "Screen_5", "Screen_6", "Screen_7", "Screen_8", "Screen_9", "Camo_1"};
	hiddenSelectionsTextures[] = {"\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa", "", "", "", "", "", "", "", "", "", "a3\props_f_exp\military\camps\data\tripodscreen_01_co.paa"};
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pantalla";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa""";

    	class values {
        class Texture_1 {
        	name = "Fondo (v1)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa";
        };

        class Texture_2 {
        	name = "Fondo (v2)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background2_co.paa";
        };

        class Texture_3 {
        	name = "Menú principal";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen01_co.paa";
        };

        class Texture_4 {
        	name = "Escritorio (CIA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_CIA.paa";
        };

        class Texture_5 {
        	name = "Escritorio (FCLA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_FCLA.paa";
        };

        class Texture_6 {
        	name = "Hackeo completado";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen02_co.paa";
        };

        class Texture_7 {
        	name = "Ultra secreto";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_restricted_ca.paa";
        };

        class Texture_8 {
        	name = "AAN";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_AAN.paa";
        };

        class Texture_9 {
        	name = "Rota";
        	value = "\a3\missions_f_exp\data\img\exp_m01_monitor_ca.paa";
        };
			};
		};
	};
};


class Land_Custom_TripodScreen_01_large_sand_F: Land_TripodScreen_01_large_sand_F	{
  author = "hozlucas28";
	displayName = "Pantalla grande resistente (arena, personalizada)";
	//editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_TripodScreen_01_large_sand_F.jpg";
  hiddenSelections[] = {"Screen_0", "Screen_1", "Screen_2", "Screen_3", "Screen_4", "Screen_5", "Screen_6", "Screen_7", "Screen_8", "Screen_9", "Camo_1"};
	hiddenSelectionsTextures[] = {"\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa", "", "", "", "", "", "", "", "", "", "a3\Props_F_Enoch\Military\Camps\data\TripodScreen_01_sand_CO.paa"};
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pantalla";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa""";

    	class values {
        class Texture_1 {
        	name = "Fondo (v1)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa";
        };

        class Texture_2 {
        	name = "Fondo (v2)";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background2_co.paa";
        };

        class Texture_3 {
        	name = "Menú principal";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen01_co.paa";
        };

        class Texture_4 {
        	name = "Escritorio (CIA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_CIA.paa";
        };

        class Texture_5 {
        	name = "Escritorio (FCLA)";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_Desktop_FCLA.paa";
        };

        class Texture_6 {
        	name = "Hackeo completado";
        	value = "\a3\missions_f_oldman\data\img\screens\millerntbscreen02_co.paa";
        };

        class Texture_7 {
        	name = "Ultra secreto";
        	value = "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_restricted_ca.paa";
        };

        class Texture_8 {
        	name = "AAN";
        	value = "\FCLA_Objects\Electronics\data\Laptop_03_F_AAN.paa";
        };

        class Texture_9 {
        	name = "Rota";
        	value = "\a3\missions_f_exp\data\img\exp_m01_monitor_ca.paa";
        };
			};
		};
	};
};
