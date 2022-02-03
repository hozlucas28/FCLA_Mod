
/***************************************************************************|
|                         VEHICULOS - "ELECTRONICA"                         |
|***************************************************************************/



/* --------------------------- ANTENA SATELITAL ---------------------------- */

class Satellite_Antenna_RF_3080: ThingX {
  author = "hozlucas28";
	displayName = "RF 3080 (SATCOM)";
  icon = "iconObject_5x4";
  model = "\FCLA_Objects\Electronics\data\Satellite_Antenna_RF_3080\Satellite_Antenna_RF_3080.p3d";
  editorPreview = "\FCLA_Objects\Electronics\data\pictures\Satellite_Antenna_RF_3080.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Electronics";
  ACE_Dragging_canDrag = 1;
  ACE_Dragging_cancarry = 1;
  ACE_Dragging_dragDirection = 135;
  ACE_Dragging_carryDirection = 135;
  ACE_Dragging_dragPosition[] = {0, 1, 0};
  ACE_Dragging_carryPosition[] = {0, 1, 0.5};
  scope = 2;
  scopeCurator = 2;

  class DestructionEffects {
    class Bullets {
      intensity = 1;
      interval = 1;
      lifeTime = 1.2;
      position = "";
      simulation = "particles";
      type = "AmmoBulletCore";
    };

    class Smoke2 {
      intensity = 1;
      interval = 1;
      lifeTime = 1;
      position = "";
      simulation = "particles";
      type = "AmmoSmokeParticles2";
    };
  };
};



/* -------------------------------- MONITOR -------------------------------- */

class Land_Custom_PCSet_01_screen_F: Land_PCSet_01_screen_F	{
  author = "hozlucas28";
	displayName = "Equipo de PC (pantalla, personalizada)";
	editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_PCSet_01_screen_F.jpg";
  hiddenSelections[] = {"Camo_1"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Electronics\data\Land_PCSet_01_screen_F_Desktop_CIA.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Electronics";
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
        	name = "Torreta autonoma (activada)";
        	value = "\a3\missions_f_oldman\data\img\screens\csatntbturretsonline_co.paa";
        };

        class Texture_7 {
        	name = "Torreta autonoma (desactivada)";
        	value = "\a3\missions_f_oldman\data\img\screens\csatntbturretsoffline_co.paa";
        };
			};
		};
	};
};



/* ------------------------- DISPOSITIVO DE HACKEO ------------------------- */

class Land_Hacking_Device_Black_F: Land_Laptop_03_black_F	{
  author = "hozlucas28";
	displayName = "Dispositivo de hackeo";
	editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Hacking_Device_Black_F.jpg";
  hiddenSelections[] = {"Camo_1", "Screen_1"};
	hiddenSelectionsTextures[] = {"FCLA_Objects\Electronics\data\Land_Hacking_Device_Black_F_FCLA.paa", "a3\missions_f_oldman\data\img\screens\millerntbscreen02_co.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Electronics";
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pegatina";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\FCLA_Objects\Electronics\data\Land_Hacking_Device_Black_F_FCLA.paa""";

    	class values {
        class Texture_1 {
        	name = "FCLA";
        	value = "\FCLA_Objects\Electronics\data\Land_Hacking_Device_Black_F_FCLA.paa";
        };

        class Texture_2 {
        	name = "Takana";
        	value = "\FCLA_Objects\Electronics\data\Land_Hacking_Device_Black_F_Takana.paa";
        };

        class Texture_3 {
        	name = "Jaguar";
        	value = "\FCLA_Objects\Electronics\data\Land_Hacking_Device_Black_F_Jaguar.paa";
        };

        class Texture_4 {
        	name = "Condor";
        	value = "\FCLA_Objects\Electronics\data\Land_Hacking_Device_Black_F_Condor.paa";
        };

        class Texture_5 {
        	name = "Salamandra";
        	value = "\FCLA_Objects\Electronics\data\Land_Hacking_Device_Black_F_Salamandra.paa";
        };

        class Texture_6 {
        	name = "Anaconda";
        	value = "\FCLA_Objects\Electronics\data\Land_Hacking_Device_Black_F_Anaconda.paa";
        };

        class Texture_7 {
        	name = "Quetzal";
        	value = "\FCLA_Objects\Electronics\data\Land_Hacking_Device_Black_F_Quetzal.paa";
        };
			};
		};
	};
};



/* ------------------------------- PORTATIL -------------------------------- */

class Land_Custom_Laptop_unfolded_F: Land_Laptop_unfolded_F {
  author = "hozlucas28";
	displayName = "Ordenador portatil (abierto, personalizado)";
	editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_Laptop_unfolded_F.jpg";
  hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\a3\missions_f_oldman\data\img\screens\syndiaktlaptopdesktop_co.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Electronics";
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



/* ------------------------ PORTATILES RESISTENTES ------------------------- */

class Land_Custom_Laptop_03_black_F: Land_Laptop_03_black_F	{
  author = "hozlucas28";
	displayName = "Portatil resistente (negro, personalizado)";
	editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_Laptop_03_black_F.jpg";
  hiddenSelections[] = {"Camo_1", "Screen_1"};
	hiddenSelectionsTextures[] = {"a3\Props_F_Enoch\Military\Equipment\data\Laptop_03_black_CO.paa", "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Electronics";
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
        	name = "Menu principal";
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
	displayName = "Portatil resistente (oliva, personalizado)";
	editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_Laptop_03_olive_F.jpg";
  hiddenSelections[] = {"Camo_1", "Screen_1"};
	hiddenSelectionsTextures[] = {"a3\Props_F_Enoch\Military\Equipment\data\Laptop_03_olive_CO.paa", "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Electronics";
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
        	name = "Menu principal";
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
	displayName = "Portatil resistente (arena, personalizado)";
	editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_Laptop_03_sand_F.jpg";
  hiddenSelections[] = {"Camo_1", "Screen_1"};
	hiddenSelectionsTextures[] = {"a3\Props_F_Enoch\Military\Equipment\data\Laptop_03_sand_CO.paa", "\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Electronics";
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
        	name = "Menu principal";
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



/* ------------------------- PANTALLAS RESISTENTES ------------------------- */

class Land_Custom_TripodScreen_01_large_black_F: Land_TripodScreen_01_large_black_F	{
  author = "hozlucas28";
	displayName = "Pantalla grande resistente (negra, personalizada)";
	editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_TripodScreen_01_large_black_F.jpg";
  hiddenSelections[] = {"Screen_0", "Screen_1", "Screen_2", "Screen_3", "Screen_4", "Screen_5", "Screen_6", "Screen_7", "Screen_8", "Screen_9", "Camo_1"};
	hiddenSelectionsTextures[] = {"\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa", "", "", "", "", "", "", "", "", "", "a3\Props_F_Enoch\Military\Camps\data\TripodScreen_01_black_CO.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Electronics";
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
        	name = "Menu principal";
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
	editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_TripodScreen_01_large_F.jpg";
  hiddenSelections[] = {"Screen_0", "Screen_1", "Screen_2", "Screen_3", "Screen_4", "Screen_5", "Screen_6", "Screen_7", "Screen_8", "Screen_9", "Camo_1"};
	hiddenSelectionsTextures[] = {"\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa", "", "", "", "", "", "", "", "", "", "a3\props_f_exp\military\camps\data\tripodscreen_01_co.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Electronics";
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
        	name = "Menu principal";
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
	editorPreview = "\FCLA_Objects\Electronics\data\pictures\Land_Custom_TripodScreen_01_large_sand_F.jpg";
  hiddenSelections[] = {"Screen_0", "Screen_1", "Screen_2", "Screen_3", "Screen_4", "Screen_5", "Screen_6", "Screen_7", "Screen_8", "Screen_9", "Camo_1"};
	hiddenSelectionsTextures[] = {"\a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_co.paa", "", "", "", "", "", "", "", "", "", "a3\Props_F_Enoch\Military\Camps\data\TripodScreen_01_sand_CO.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Electronics";
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
        	name = "Menu principal";
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
