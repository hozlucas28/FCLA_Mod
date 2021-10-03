
/***************************************************************************|
|                         VEHÍCULOS - "ELECTRÓNICA"                         |
|***************************************************************************/

class FCLA_Land_Laptop_Unfolded_F: Land_Laptop_unfolded_F {
  author = "hozlucas28";
  displayName = "Portátil (FCLA)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  hiddenSelectionsTextures[] = {"\FCLA_Objects\Electronic\data\FCLA_Land_Laptop_Unfolded_F.paa"};
  editorPreview = "\A3\EditorPreviews_F\Data\CfgVehicles\Land_Laptop_unfolded_F.jpg";
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_PCSet_01_CSAT_turrets_F: Land_PCSet_01_screen_F {
  _generalMacro = "FCLA_Land_PCSet_01_CSAT_turrets_F";
  author = "hozlucas28";
  displayName = "Equipo de PC (pantalla, estado de torretas) [CSAT]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_PCSet_01_CSAT_turrets_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\Screens\CSATNtbTurretsOnline_co.paa"};
  scope = 2;
  scopeCurator = 2;

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar estado";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Online";
          value = "\A3\missions_f_oldman\Data\img\Screens\CSATNtbTurretsOnline_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\CSATNtbTurretsOnline_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Offline";
          value = "\A3\missions_f_oldman\Data\img\Screens\CSATNtbTurretsOffline_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\CSATNtbTurretsOffline_co.paa";
        };
      };
    };
  };
};

class FCLA_Land_PCSet_01_SoftwareReboot_F: Land_PCSet_01_screen_F {
  _generalMacro = "FCLA_Land_PCSet_01_SoftwareReboot_F";
  author = "hozlucas28";
  displayName = "Equipo de PC (pantalla, reinicio del sistema operativo)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_PCSet_01_SoftwareReboot_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\Screens\CSATNtbReboot25_co.paa"};
  scope = 2;
  scopeCurator = 2;

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar progreso de reinicio";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "22%";
          value = "\A3\missions_f_oldman\Data\img\Screens\CSATNtbReboot25_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\CSATNtbReboot25_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "56%";
          value = "\A3\missions_f_oldman\Data\img\Screens\CSATNtbReboot50_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\CSATNtbReboot50_co.paa";
        };

        class 3 {
          name = "78%";
          value = "\A3\missions_f_oldman\Data\img\Screens\CSATNtbReboot75_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\CSATNtbReboot75_co.paa";
        };
      };
    };
  };
};

class FCLA_Land_TripodScreen_01_large_NATO_F: Land_TripodScreen_01_large_F {
  _generalMacro="FCLA_Land_TripodScreen_01_large_NATO_F";
  author = "hozlucas28";
  displayName = "Pantalla grande resistente [OTAN]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_TripodScreen_01_large_NATO_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa","","","","","","","","","","a3\props_f_exp\military\camps\data\tripodscreen_01_co.paa"};
  reversed = 1;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 1.043;
    verticalOffsetWorld = 0;
    init = "''";
  };

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar textura";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Fondo";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Fondo (oscuro)";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background2_co.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background2_co.paa";
        };

        class 3 {
          name = "Ultra secreto";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_restricted_ca.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_restricted_ca.paa";
        };

        class 4 {
          name = "Pantalla rota";
          value = "\A3\missions_f_exp\data\Img\exp_m01_monitor_ca.paa";
          picture = "\A3\missions_f_exp\data\Img\exp_m01_monitor_ca.paa";
        };
      };
    };
  };
};

class FCLA_Land_TripodScreen_01_large_black_NATO_F: FCLA_Land_TripodScreen_01_large_NATO_F {
  _generalMacro = "FCLA_Land_TripodScreen_01_large_black_NATO_F";
  displayName = "Pantalla grande resistente (negra) [OTAN]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_TripodScreen_01_large_black_NATO_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa","","","","","","","","","","\a3\Props_F_Enoch\Military\Camps\data\TripodScreen_01_black_CO.paa"};
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_TripodScreen_01_large_VIDEO_F: Land_TripodScreen_01_large_F {
  _generalMacro = "FCLA_Land_TripodScreen_01_large_VIDEO_F";
  author = "hozlucas28";
  displayName = "Pantalla grande resistente [OTAN]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_TripodScreen_01_large_VIDEO_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa","","","","","","","","","","a3\props_f_exp\military\camps\data\tripodscreen_01_co.paa"};
  reversed = 1;
  scope = 2;
  scopeCurator = 2;

  class EventHandlers {init = "_this call FCLA_Objects_fnc_handleVideoElectronic";};
  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 1.043;
    verticalOffsetWorld = 0;
    init = "''";
  };
};

class FCLA_Land_TripodScreen_01_large_orange_F: Land_TripodScreen_01_large_F {
  _generalMacro = "FCLA_Land_TripodScreen_01_large_orange_F";
  author = "hozlucas28";
  displayName = "Pantalla resistente (grande, presentación) [IDAP]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  model = "\A3\Props_F_Exp\Military\Camps\TripodScreen_01_large_F.p3d";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_TripodScreen_01_large_orange_F.jpg";
  hiddenSelectionsTextures[] = {
                                "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation1_CO.paa",
                                "#(argb,8,8,3)color(0,0,0,0.0,co)",
                                "#(argb,8,8,3)color(0,0,0,0.0,co)",
                                "#(argb,8,8,3)color(0,0,0,0.0,co)",
                                "#(argb,8,8,3)color(0,0,0,0.0,co)",
                                "#(argb,8,8,3)color(0,0,0,0.0,co)",
                                "#(argb,8,8,3)color(0,0,0,0.0,co)",
                                "#(argb,8,8,3)color(0,0,0,0.0,co)",
                                "#(argb,8,8,3)color(0,0,0,0.0,co)",
                                "#(argb,8,8,3)color(0,0,0,0.0,co)",
                                "a3\props_f_exp\military\camps\data\tripodscreen_01_co.paa"
                               };
  reversed = 1;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 1.043;
    verticalOffsetWorld = 0;
    init = "''";
  };

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar diapositiva";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Diapositiva 1 (introducción)";
          value = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation1_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation1_CO.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Diapositiva 2";
          value = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation2_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation2_CO.paa";
        };

        class 3 {
          name = "Diapositiva 3";
          value = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation3_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation3_CO.paa";
        };

        class 4 {
          name = "Diapositiva 4";
          value = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation4_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation4_CO.paa";
        };

        class 5 {
          name = "Diapositiva 5";
          value = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation5_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation5_CO.paa";
        };

        class 6 {
          name = "Diapositiva 6 (conclusión)";
          value = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation6_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\showcase_low_presentation6_CO.paa";
        };
      };
    };
  };
};

class FCLA_Land_TripodScreen_01_large_sand_NATO_F: FCLA_Land_TripodScreen_01_large_NATO_F {
  _generalMacro = "FCLA_Land_TripodScreen_01_large_sand_NATO_F";
  displayName = "Pantalla grande resistente (arena) [OTAN]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_TripodScreen_01_large_sand_NATO_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa","","","","","","","","","","\a3\Props_F_Enoch\Military\Camps\data\TripodScreen_01_sand_CO.paa"};
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_Laptop_unfolded_AAN_01_F: Items_base_F {
  _generalMacro = "FCLA_Land_Laptop_unfolded_AAN_01_F";
  author = "hozlucas28";
  displayName = "Portátil (abierto, AAN, v1)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  model = "\A3\Structures_F\Items\Electronics\Laptop_unfolded_F.p3d";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Laptop_unfolded_AAN_01_F.jpg";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Orange\Data\Img\Orange_Compositions\C8\aan_co.paa"};
  hiddenSelectionsMaterials[] = {"\A3\Structures_F\Items\Electronics\Data\electronics_screens.rvmat"};
  icon = "iconObject_3x2";
  mapSize = 0.44999999;
  cost = 3000;
  reversed = 1;
  scope = 2;
  scopeCurator = 2;

  class EventHandlers {init = "_this call FCLA_Objects_fnc_showAANArticle1Electronic";};
  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.156;
    verticalOffsetWorld = 0;
    init = "''";
  };

  class Attributes {
    class ObjectTextureCustom0 {
      displayName = "Textura 0";
      tooltip = "Textura personalizada que se aplica a un objeto. Usa una ruta vinculada al directorio del escenario (por ejemplo, ""Textures\myTexture_ca.paa""), al directorio del juego (por ejemplo, ""\a3\Ui_f\data\Logos\arma3_white_ca.paa"") o a una textura prodecimental (por ejemplo, ""#(argb,8,8,3)color(1,0,1,1)"").";
      property = "ObjectTextureCustom0";
      control = "Edit";
      expression = "_this setObjectTextureGlobal [0,_value]";
      defaultValue = "getObjectTextures _this select 0";
    };
  };
};

class FCLA_Land_Laptop_unfolded_AAN_02_F: Items_base_F {
  _generalMacro = "FCLA_Land_Laptop_unfolded_AAN_02_F";
  author = "hozlucas28";
  displayName = "Portátil (abierto, AAN, v2)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  model = "\A3\Structures_F\Items\Electronics\Laptop_unfolded_F.p3d";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Laptop_unfolded_AAN_02_F.jpg";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Orange\Data\Img\Faction_IDAP\laptop_campaign_CO.paa"};
  hiddenSelectionsMaterials[] = {"\A3\Structures_F\Items\Electronics\Data\electronics_screens.rvmat"};
  icon = "iconObject_3x2";
  mapSize = 0.44999999;
  cost = 3000;
  reversed = 1;
  scope = 2;
  scopeCurator = 2;

  class EventHandlers {init = "_this call FCLA_Objects_fnc_showAANArticle2Electronic";};
  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.156;
    verticalOffsetWorld = 0;
    init = "''";
  };

  class Attributes {
    class ObjectTextureCustom0 {
      displayName = "Textura 0";
      tooltip = "Textura personalizada que se aplica a un objeto. Usa una ruta vinculada al directorio del escenario (por ejemplo, ""Textures\myTexture_ca.paa""), al directorio del juego (por ejemplo, ""\a3\Ui_f\data\Logos\arma3_white_ca.paa"") o a una textura prodecimental (por ejemplo, ""#(argb,8,8,3)color(1,0,1,1)"").";
      property = "ObjectTextureCustom0";
      control = "Edit";
      expression = "_this setObjectTextureGlobal [0,_value]";
      defaultValue = "getObjectTextures _this select 0";
    };
  };
};

class FCLA_Land_Laptop_targetsactivated_F: Land_Laptop_unfolded_F {
  _generalMacro = "FCLA_Land_Laptop_targetsactivated_F";
  author = "hozlucas28";
  displayName = "Portátil (abierto, estado objetivos)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Laptop_targetsactivated_F.jpg";
  hiddenSelectionsTextures[] = {"a3\missions_f_bootcamp\data\img\laptop\electronics_screens_laptop_targetactivated_co.paa"};
  reversed = 1;
  scope = 2;
  scopeCurator = 2;

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar estado";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Objetivos listos";
          value = "\A3\missions_f_bootcamp\data\img\laptop\electronics_screens_laptop_targetactivated_co.paa";
          picture = "\A3\missions_f_bootcamp\data\img\laptop\electronics_screens_laptop_targetactivated_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Objetivos derribados";
          value = "\A3\missions_f_bootcamp\data\img\laptop\electronics_screens_laptop_targetdeactivated_co.paa";
          picture = "\A3\missions_f_bootcamp\data\img\laptop\electronics_screens_laptop_targetdeactivated_co.paa";
        };

        class 3 {
          name = "Objetivo N°2 derribado";
          value = "\A3\missions_f_bootcamp\data\img\laptop\electronics_screens_laptop_targeterror_co.paa";
          picture = "\A3\missions_f_bootcamp\data\img\laptop\electronics_screens_laptop_targeterror_co.paa";
        };
      };
    };
  };
};

class FCLA_Land_Laptop_Syndiakt_F: Land_Laptop_unfolded_F {
  _generalMacro = "FCLA_Land_Laptop_Syndiakt_F";
  displayName = "Portátil (abierto, información) [Syndikat]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Laptop_Syndiakt_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\Screens\SyndiaktLaptopDesktop_co.paa"};
  reversed = 1;
  scope = 2;
  scopeCurator = 2;

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar foto";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Camara";
          value = "\A3\missions_f_oldman\Data\img\Screens\SyndiaktLaptopDesktop_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\SyndiaktLaptopDesktop_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Una ventana";
          value = "\A3\missions_f_oldman\Data\img\Screens\Desktop_Preview_Syndikat_intel_image_01_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\Desktop_Preview_Syndikat_intel_image_01_co.paa";
        };

        class 3 {
          name = "Dos ventanas";
          value = "\A3\missions_f_oldman\Data\img\Screens\Desktop_Preview_Syndikat_intel_image_02_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\Desktop_Preview_Syndikat_intel_image_02_co.paa";
        };
      };
    };
  };
};

class FCLA_Land_Laptop_Oldman_F: Land_Laptop_unfolded_F {
  _generalMacro = "FCLA_Land_Laptop_Oldman_F";
  displayName = "Portátil (abierto, información, El viejo)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Laptop_Oldman_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\Screens\OldmanNtbDesktop_co.paa"};
  reversed = 1;
  scope = 2;
  scopeCurator = 2;

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar foto";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Escritorio";
          value = "\A3\missions_f_oldman\Data\img\Screens\OldmanNtbDesktop_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\OldmanNtbDesktop_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Fotos 1";
          value = "\A3\missions_f_oldman\Data\img\Screens\Desktops_Edits_OldMan_intel_1_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\Desktops_Edits_OldMan_intel_1_co.paa";
        };

        class 3 {
          name = "Fotos 2";
          value = "\A3\missions_f_oldman\Data\img\Screens\Desktops_Edits_OldMan_intel_2_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\Desktops_Edits_OldMan_intel_2_co.paa";
        };

        class 4 {
          name = "Fotos 3";
          value = "\A3\missions_f_oldman\Data\img\Screens\Desktops_Edits_OldMan_intel_3_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\Desktops_Edits_OldMan_intel_3_co.paa";
        };
      };
    };
  };
};

class FCLA_Land_Laptop_03_sand_NATO_F: Land_Laptop_03_sand_F {
  _generalMacro = "FCLA_Land_Laptop_03_sand_NATO_F";
  displayName = "Portátil resistente (arena, abierto) [OTAN]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Laptop_03_sand_NATO_F.jpg";
  hiddenSelectionsTextures[] = {"a3\Props_F_Enoch\Military\Equipment\data\Laptop_03_sand_CO.paa","\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen01_co.paa"};
  scope = 2;
  scopeCurator = 2;

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar ventana";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [1, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Menú principal";
          value = "\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen01_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Guía";
          value = "\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen02_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen02_co.paa";
        };

        class 3 {
          name = "Fondo";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa";
        };

        class 4 {
          name = "Fondo (oscuro)";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background2_co.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background2_co.paa";
        };

        class 5 {
          name = "Ultra secreto";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_restricted_ca.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_restricted_ca.paa";
        };

        class 6 {
          name = "Pantalla rota";
          value = "\A3\missions_f_exp\data\Img\exp_m01_monitor_ca.paa";
          picture = "\A3\missions_f_exp\data\Img\exp_m01_monitor_ca.paa";
        };
      };
    };
  };
};

class FCLA_Land_Laptop_03_sand_NATO_random_F: FCLA_Land_Laptop_03_sand_NATO_F {
  _generalMacro = "FCLA_Land_Laptop_03_sand_NATO_random_F";
  displayName = "Portátil resistente (arena, abierto, aleatorio) [OTAN]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Laptop_03_sand_NATO_random_F.jpg";
  scope = 2;
  scopeCurator = 2;

  class Attributes {};
  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Electronic\scripts\Randomize.sqf'";
  };

};

class FCLA_Land_Laptop_03_black_NATO_F: Land_Laptop_03_black_F {
  _generalMacro = "FCLA_Land_Laptop_03_black_NATO_F";
  displayName = "Portátil resistente (negro, abierto) [OTAN]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Laptop_03_black_NATO_F.jpg";
  hiddenSelectionsTextures[] = {"a3\Props_F_Enoch\Military\Equipment\data\Laptop_03_black_CO.paa","\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen01_co.paa"};
  scope = 2;
  scopeCurator = 2;

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar ventana";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [1, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Menú principal";
          value = "\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen01_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen01_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Guía";
          value = "\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen02_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen02_co.paa";
        };

        class 3 {
          name = "Fondo";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa";
        };

        class 4 {
          name = "Fondo (oscuro)";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background2_co.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background2_co.paa";
        };

        class 5 {
          name = "Ultra secreto";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_restricted_ca.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_restricted_ca.paa";
        };

        class 6 {
          name = "Pantalla rota";
          value = "\A3\missions_f_exp\data\Img\exp_m01_monitor_ca.paa";
          picture = "\A3\missions_f_exp\data\Img\exp_m01_monitor_ca.paa";
        };
      };
    };
  };
};

class FCLA_Land_Laptop_03_black_NATO_random_F: FCLA_Land_Laptop_03_black_NATO_F {
  _generalMacro = "FCLA_Land_Laptop_03_black_NATO_random_F";
  displayName = "Portátil resistente (negro, abierto, aleatorio) [OTAN]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Laptop_03_black_NATO_random_F.jpg";
  scope = 2;
  scopeCurator = 2;

  class Attributes {};
  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Electronic\scripts\Randomize.sqf'";
  };
};

class FCLA_Land_Laptop_03_olive_NATO_F: Land_Laptop_03_olive_F {
  _generalMacro = "FCLA_Land_Laptop_03_olive_NATO_F";
  displayName = "Portátil resistente (oliva, abierto) [OTAN]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Laptop_03_olive_NATO_F.jpg";
  hiddenSelectionsTextures[] = {"a3\Props_F_Enoch\Military\Equipment\data\Laptop_03_olive_CO.paa","\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen01_co.paa"};
  scope = 2;
  scopeCurator = 2;

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar ventana";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [1, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Menú principal";
          value = "\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen01_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen01_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Guía";
          value = "\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen02_co.paa";
          picture = "\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen02_co.paa";
        };

        class 3 {
          name = "Fondo";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa";
        };

        class 4 {
          name = "Fondo (oscuro)";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background2_co.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background2_co.paa";
        };

        class 5 {
          name = "Ultra secreto";
          value = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_restricted_ca.paa";
          picture = "\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_restricted_ca.paa";
        };

        class 6 {
          name = "Pantalla rota";
          value = "\A3\missions_f_exp\data\Img\exp_m01_monitor_ca.paa";
          picture = "\A3\missions_f_exp\data\Img\exp_m01_monitor_ca.paa";
        };
      };
    };
  };
};

class FCLA_Land_Laptop_03_olive_NATO_random_F: FCLA_Land_Laptop_03_olive_NATO_F {
  _generalMacro = "FCLA_Land_Laptop_03_olive_NATO_random_F";
  displayName = "Portátil resistente (oliva, abierto, aleatorio) [OTAN]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Laptop_03_olive_NATO_random_F.jpg";
  scope = 2;
  scopeCurator = 2;

  class Attributes {};
  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Electronic\scripts\Randomize.sqf'";
  };
};

class FCLA_Land_Tablet_02_FD14_F: Land_Tablet_02_F {
  _generalMacro = "FCLA_Land_Tablet_02_FD14_F";
  author = "hozlucas28";
  displayName = "Tablet resistente (prácticas de tiro)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Tablet_02_FD14_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Beta\data\img\monitors\tablet_fd14_1_co.paa","a3\props_f_exp_a\military\equipment\data\ruggedtablet_co.paa"};
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.034000002;
    verticalOffsetWorld = 0;
    init = "''";
  };

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar textura";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Bloc de notas";
          value = "\A3\Missions_F_Beta\data\img\monitors\tablet_fd14_1_co.paa";
          picture = "\A3\Missions_F_Beta\data\img\monitors\tablet_fd14_1_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Tanques";
          value = "\A3\Missions_F_Beta\data\img\monitors\tablet_fd14_2_co.paa";
          picture = "\A3\Missions_F_Beta\data\img\monitors\tablet_fd14_2_co.paa";
        };

        class 3 {
          name = "Cámara 1";
          value = "\A3\Missions_F_Beta\Data\Img\Monitors\laptop_fd14_1_co.paa";
          picture = "\A3\Missions_F_Beta\Data\Img\Monitors\laptop_fd14_1_co.paa";
        };

        class 4 {
          name = "Cámara 2";
          value = "\A3\Missions_F_Beta\Data\Img\Monitors\monitor_fd14_1_co.paa";
          picture = "\A3\Missions_F_Beta\Data\Img\Monitors\monitor_fd14_1_co.paa";
        };

        class 5 {
          name = "Cámara 3";
          value = "\A3\Missions_F_Beta\Data\Img\Monitors\monitor_fd14_2_co.paa";
          picture = "\A3\Missions_F_Beta\Data\Img\Monitors\monitor_fd14_2_co.paa";
        };

        class 6 {
          name = "Cámara 4";
          value = "\A3\Missions_F_Beta\Data\Img\Monitors\monitor_fd14_3_co.paa";
          picture = "\A3\Missions_F_Beta\Data\Img\Monitors\monitor_fd14_3_co.paa";
        };
      };
    };
  };
};

class FCLA_Land_Tablet_02_sand_FD14_F: FCLA_Land_Tablet_02_FD14_F {
  _generalMacro = "FCLA_Land_Tablet_02_sand_FD14_F";
  displayName = "Tablet resistente (arena, prácticas de tiro)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Tablet_02_sand_FD14_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Beta\data\img\monitors\tablet_fd14_1_co.paa","a3\Props_F_Enoch\Military\Camps\data\RuggedTablet_sand_CO.paa"};
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_Tablet_02_black_FD14_F: FCLA_Land_Tablet_02_FD14_F {
  _generalMacro = "FCLA_Land_Tablet_02_black_FD14_F";
  displayName = "Tablet resistente (negra, prácticas de tiro)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Tablet_02_black_FD14_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Beta\data\img\monitors\tablet_fd14_1_co.paa","a3\Props_F_Enoch\Military\Camps\data\RuggedTablet_black_CO.paa"};
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_Tablet_01_IDAP_F: Land_Tablet_01_F {
  _generalMacro = "FCLA_Land_Tablet_01_IDAP_F";
  displayName = "Tableta [IDAP]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Electronic";
  editorPreview = "\FCLA_Objects\Electronic\data\pictures\FCLA_Land_Tablet_01_IDAP_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\Missions_F_AoW\Data\Img\Textures\idap_tablet_co.paa"};
  scope = 2;
  scopeCurator = 2;

  class Attributes {
    class ObjectTextureCustom0 {
      displayName = "Textura 0";
      tooltip = "Textura personalizada que se aplica a un objeto. Usa una ruta vinculada al directorio del escenario (por ejemplo, ""Textures\myTexture_ca.paa""), al directorio del juego (por ejemplo, ""\a3\Ui_f\data\Logos\arma3_white_ca.paa"") o a una textura prodecimental (por ejemplo, ""#(argb,8,8,3)color(1,0,1,1)"").";
      property = "ObjectTextureCustom0";
      control = "Edit";
      expression = "_this setObjectTextureGlobal [0,_value]";
      defaultValue = "getObjectTextures _this select 0";
    };
  };
};
