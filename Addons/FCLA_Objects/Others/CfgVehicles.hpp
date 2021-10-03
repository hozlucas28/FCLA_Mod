
/***************************************************************************|
|                            VEHÍCULOS - "OTROS"                            |
|***************************************************************************/

class FCLA_Land_infoStand_V2_F: Land_InfoStand_V2_F {
  author = "hozlucas28";
  displayName = "Stand de información (FCLA)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  hiddenSelectionsTextures[] = {"\FCLA_Objects\Others\data\FCLA_Land_infoStand_V2_F.paa"};
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_infoStand_V2_F.jpg";
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_Teleport_V2_F: Land_InfoStand_V2_F {
  author = "hozlucas28";
  displayName = "Stand de información (teleport)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  hiddenSelectionsTextures[] = {"\FCLA_Objects\Others\data\FCLA_Land_Teleport_V2_F.paa"};
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_Teleport_V2_F.jpg";
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_Commanders_V2_F: Land_InfoStand_V2_F {
  author = "hozlucas28";
  displayName = "Stand de información (altos mandos)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  hiddenSelectionsTextures[] = {"\FCLA_Objects\Others\data\FCLA_Land_Commanders_V2_F.paa"};
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_Commanders_V2_F.jpg";
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_InfoStand_V2_IDAP_random_F: Infostand_base_F {
  _generalMacro = "FCLA_Land_InfoStand_V2_IDAP_random_F";
  author = "hozlucas28";
  displayName = "Stand de información (2 patas, aleatorio) [IDAP]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  model = "\A3\Structures_F\Civ\InfoBoards\InfoStand_V2_F.p3d";
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_InfoStand_V2_IDAP_random_F.jpg";
  icon = "iconObject_3x2";
  scope = 2;
  scopeCurator = 2;

  class EventHandlers {init = "(_this # 0) execVM ""\FCLA_Objects\Others\scripts\Randomize_infoStands_IDAP.sqf""";};
  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.588;
    verticalOffsetWorld = 0;
    init = "[this, '', []] call bis_fnc_initVehicle";
  };
};

class FCLA_Land_InfoStand_V1_IDAP_random_F: FCLA_Land_InfoStand_V2_IDAP_random_F {
  _generalMacro = "FCLA_Land_InfoStand_V1_IDAP_random_F";
  author = "hozlucas28";
  displayName = "Stand de información (1 pata, aleatorio) [IDAP]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  model = "\A3\Structures_F\Civ\InfoBoards\InfoStand_V1_F.p3d";
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_InfoStand_V1_IDAP_F.jpg";
  icon = "iconObject_1x1";
  mapSize = 0.36000001;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.57499999;
    verticalOffsetWorld = 0;
    init = "[this, '', []] call bis_fnc_initVehicle";
  };
};

class FCLA_Patches_Land_wallSign_01_Chalkboard_F: Land_WallSign_01_chalkboard_F {
  author = "hozlucas28";
  displayName = "Pizarra (parches)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  hiddenSelectionsTextures[] = {"a3\structures_f_orange\signs\special\data\wallsign_01_f_chalkboard_co.paa","\FCLA_Objects\Others\data\FCLA_Patches_Land_wallSign_01_Chalkboard_F.paa"};
  editorPreview = "";
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Rules_Land_wallSign_01_Chalkboard_F: Land_WallSign_01_chalkboard_F {
  author = "hozlucas28";
  displayName = "Pizarra (reglas)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  hiddenSelectionsTextures[] = {"a3\structures_f_orange\signs\special\data\wallsign_01_f_chalkboard_co.paa","\FCLA_Objects\Others\data\FCLA_Rules_Land_wallSign_01_Chalkboard_F.paa"};
  editorPreview = "";
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Medic_Land_wallSign_01_Chalkboard_F: Land_WallSign_01_chalkboard_F {
  author = "hozlucas28";
  displayName = "Pizarra médica";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  hiddenSelectionsTextures[] = {"a3\structures_f_orange\signs\special\data\wallsign_01_f_chalkboard_co.paa","\FCLA_Objects\Others\data\FCLA_Medic_Land_wallSign_01_Chalkboard_F.paa"};
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Medic_Land_wallSign_01_Chalkboard_F.jpg";
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Anatomy_Poster_1: Poster_base_F {
  _generalMacro = "FCLA_Anatomy_Poster_1";
  author = "hozlucas28";
  displayName = "Cartel (anatómia, v1)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  model = "\A3\structures_f_enoch\furniture\school_equipment\anatomy_poster_1.p3d";
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Anatomy_Poster_1.jpg";
  mapSize = 1.25;
  icon = "iconObject_1x2";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 0;
    animate[] = {};
    hide[] = {};
    verticalOffset = 4.2470002;
    verticalOffsetWorld = 0;
    init = "''";
  };
};

class FCLA_Anatomy_Poster_2: FCLA_Anatomy_Poster_1 {
  _generalMacro = "FCLA_Anatomy_Poster_2";
  author = "hozlucas28";
  displayName = "Cartel (anatómico, v2)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  model = "\A3\structures_f_enoch\furniture\school_equipment\anatomy_poster_2.p3d";
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Anatomy_Poster_2.jpg";
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Poster_Sign_AntiCSAT: Land_Poster_04_F {
  _generalMacro = "FCLA_Poster_Sign_AntiCSAT";
  author = "hozlucas28";
  displayName = "Cartel (Anti-CSAT)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Orange\Data\Img\Orange_Compositions\C13+C14+C15\Poster_Sign_AntiCSAT_CO.paa"};
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Poster_Sign_AntiCSAT.jpg";
  mapSize = 1.85;
  scope = 2;
  scopeCurator = 2;

  class EventHandlers {init = "";};
  class SimpleObject {
    eden = 0;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.048999999;
    verticalOffsetWorld = 0;
    init = "''";
  };
};

class FCLA_Land_WhiteBoard_Oldman_F: Land_MapBoard_F {
  _generalMacro = "FCLA_Land_WhiteBoard_Oldman_F";
  author = "hozlucas28";
  displayName = "Pizarra (Anciano)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_WhiteBoard_Oldman_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\data\img\Whiteboards\CSAT_Whtb_Oumere_mosq_co.paa"};
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.96899998;
    verticalOffsetWorld = 0;
    init = "''";
  };

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar bando";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "CSAT";
          value = "\A3\missions_f_oldman\data\img\Whiteboards\CSAT_Whtb_Oumere_mosq_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Syndikat";
          value = "\A3\missions_f_oldman\data\img\Whiteboards\SYN_Whtb_Cerebu_co.paa";
        };
      };
    };
  };
};

class FCLA_Land_WhiteBoard_vanila_F: Land_MapBoard_F {
  _generalMacro = "FCLA_Land_WhiteBoard_vanila_F";
  author = "hozlucas28";
  displayName = "Pizarra (El viento del este)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_WhiteBoard_vanila_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_epa\data\img\whiteboards\whiteboard_A_in_lz_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.96899998;
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
          name = "Stratis (puesto de observación)";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_A_in_lz_CO.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Repliegue 2035 (Campamento Rogain)";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_A_in_camp_CO.paa";
        };

        class 3 {
          name = "Blackfoot derribado";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m01_CO.paa";
        };

        class 4 {
          name = "Valle de la Muerte";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m02_CO.paa";
        };

        class 5 {
          name = "Silencio de radio";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m03_CO.paa";
        };

        class 6 {
          name = "Cruce de caminos";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m04_CO.paa";
          defaultValue = 0;
        };

        class 7 {
          name = "Trabajo sucio";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m05_CO.paa";
        };

        class 8 {
          name = "Momento crítico";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_out_CO.paa";
        };

        class 9 {
          name = "Señal perdida";
          value = "\A3\missions_f_epa\data\img\whiteboards\MapBoard_Altis_C_in1_CO.paa";
        };

        class 10 {
          name = "Bomos";
          value = "\A3\missions_f_epa\data\img\papermaps\papermap_briefing_B_hub01_CO.paa";
        };
      };
    };
  };
};

class FCLA_Land_MapBoard_01_Wall_Orange_F: Land_MapBoard_01_Wall_base_F {
  _generalMacro = "FCLA_Land_MapBoard_01_Wall_Orange_F";
  author = "hozlucas28";
  displayName = "Pizarra (pared) [IDAP]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_MapBoard_01_Wall_Orange_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\whiteboard_main_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 0;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.55199999;
    verticalOffsetWorld = 0;
    init = "''";
  };

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccione «Laws of War» Escenario";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Programa de entrenamiento IDAP";
          value = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\whiteboard_main_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Showcase_LawsOfWar\whiteboard_main_CO.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Actividad";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_activity_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_activity_CO.paa";
        };

        class 3 {
          name = "Desminado";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_aid_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_aid_CO.paa";
        };

        class 4 {
          name = "EH302";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_air_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_air_CO.paa";
        };

        class 5 {
          name = "Dron";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_autonomous_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_autonomous_CO.paa";
        };

        class 6 {
          name = "Desminado";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_expo_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_expo_CO.paa";
        };

        class 7 {
          name = "Información";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_idap_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_idap_CO.paa";
        };

        class 8 {
          name = "Derecho Internacional Humanitario";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_ihl_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_ihl_CO.paa";
        };

        class 9 {
          name = "Jornada de puertas abiertas del IDAP";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_kiosk_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_kiosk_CO.paa";
        };

        class 10 {
          name = "Tierra";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_land_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_land_CO.paa";
        };

        class 11 {
          name = "Nuestra historia: cómo comenzó";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap1_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap1_CO.paa";
        };

        class 12 {
          name = "Objetivos";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap2_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap2_CO.paa";
        };

        class 13 {
          name = "Minas terrestres: una breve historia";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap3_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap3_CO.paa";
        };

        class 14 {
          name = "Minas terrestres: ¿son legales?";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap4_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap4_CO.paa";
        };

        class 15 {
          name = "Minas terrestres: hoy y mañana";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap5_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap5_CO.paa";
        };

        class 16 {
          name = "Municiones de racimo: el problema";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap6_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap6_CO.paa";
        };

        class 17 {
          name = "Campamento Splandid";
          value = "\A3\missions_f_orange\Data\Img\Orange_Compositions\A1\Whiteboard_CampSplendid_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Orange_Compositions\A1\Whiteboard_CampSplendid_CO.paa";
        };

        class 18 {
          name = "Camp Splandid (pos-guerra)";
          value = "\A3\missions_f_orange\Data\Img\Orange_Compositions\A1\Whiteboard_CampSplendid_PostWar_CO.paa";
          picture = "\A3\missions_f_orange\Data\Img\Orange_Compositions\A1\Whiteboard_CampSplendid_PostWar_CO.paa";
        };
      };
    };
  };
};

class FCLA_Land_MapBoard_01_Wall_Orange_random_F: FCLA_Land_MapBoard_01_Wall_Orange_F {
  _generalMacro = "FCLA_Land_MapBoard_01_Wall_Orange_random_F";
  author = "hozlucas28";
  displayName = "Pizarra (pared, aleatorio) [IDAP]";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_MapBoard_01_Wall_Orange_random_F.jpg";
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "(_this # 0) execVM '\FCLA_Objects\Others\scripts\Randomize.sqf'";};

  class Attributes {
    class ObjectTextureCustom0 {
      displayName = "STR_3den_object_attribute_objecttexturecustom0_displayname";
      tooltip = "Textura personalizada que se aplica a un objeto. Usa una ruta vinculada al directorio del escenario (por ejemplo, ""Textures\myTexture_ca.paa""), al directorio del juego (por ejemplo, ""\a3\Ui_f\data\Logos\arma3_white_ca.paa"") o a una textura prodecimental (por ejemplo, ""#(argb,8,8,3)color(1,0,1,1)"").";
      property = "ObjectTextureCustom0";
      control = "Edit";
      expression = "_this setObjectTextureGlobal [0,_value]";
      defaultValue = "getObjectTextures _this select 0";
    };
  };
};

class FCLA_Land_MapBoard_01_Wall_Oldman_F: Land_MapBoard_01_Wall_base_F {
  _generalMacro = "FCLA_Land_MapBoard_01_Wall_Oldman_F";
  author = "hozlucas28";
  displayName = "Pizarra (pared, El viejo)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_MapBoard_01_Wall_oldman_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\data\img\Whiteboards\CSAT_Whtb_Oumere_mosq_co.paa"};
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 0;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.55199999;
    verticalOffsetWorld = 0;
    init = "''";
  };

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Seleccionar bando";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "CSAT";
          value = "\A3\missions_f_oldman\data\img\Whiteboards\CSAT_Whtb_Oumere_mosq_co.paa";
          picture = "\A3\missions_f_oldman\data\img\Whiteboards\CSAT_Whtb_Oumere_mosq_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Syndikat 1";
          value = "\A3\missions_f_oldman\data\img\Whiteboards\SYN_Whtb_Cerebu_co.paa";
          picture = "\A3\missions_f_oldman\data\img\Whiteboards\SYN_Whtb_Cerebu_co.paa";
        };

        class 3 {
          name = "Syndikat 2";
          value = "\a3\Structures_F_Oldman\signs\boards\data\mapboard_tanoa_syndikat_co.paa";
          picture = "\a3\Structures_F_Oldman\signs\boards\data\mapboard_tanoa_syndikat_co.paa";
        };
      };
    };
  };
};

class FCLA_Land_MapBoard_01_Wall_Vanila_F: Land_MapBoard_01_Wall_base_F {
  _generalMacro = "FCLA_Land_MapBoard_01_Wall_Vanila_F";
  author = "hozlucas28";
  displayName = "Pizarra (pared, El viento del este)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_MapBoard_01_Wall_vanila_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_epa\data\img\whiteboards\whiteboard_A_in_lz_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 0;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.55199999;
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
          name = "Repliegue 2035 (Zona de aterrizaje Connor)";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_A_in_lz_CO.paa";
          picture = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_A_in_lz_CO.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Repliegue 2035 (Campamento Rogain)";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_A_in_camp_CO.paa";
          picture = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_A_in_camp_CO.paa";
        };

        class 3 {
          name = "Blackfoot derribado";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m01_CO.paa";
          picture = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m01_CO.paa";
        };

        class 4 {
          name = "Valle de la Muerte";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m02_CO.paa";
          picture = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m02_CO.paa";
        };

        class 5 {
          name = "Silencio de radio";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m03_CO.paa";
          picture = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m03_CO.paa";
        };

        class 6 {
          name = "Cruce de caminos";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m04_CO.paa";
          picture = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m04_CO.paa";
          defaultValue = 0;
        };

        class 7 {
          name = "Trabajo sucio";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m05_CO.paa";
          picture = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_m05_CO.paa";
        };

        class 8 {
          name = "Momento crítico";
          value = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_out_CO.paa";
          picture = "\A3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_A_out_CO.paa";
        };

        class 9 {
          name = "Señal perdida";
          value = "\A3\missions_f_epa\data\img\whiteboards\MapBoard_Altis_C_in1_CO.paa";
          picture = "\A3\missions_f_epa\data\img\whiteboards\MapBoard_Altis_C_in1_CO.paa";
        };

        class 10 {
          name = "Bomos";
          value = "\A3\missions_f_epa\data\img\papermaps\papermap_briefing_B_hub01_CO.paa";
          picture = "\A3\missions_f_epa\data\img\papermaps\papermap_briefing_B_hub01_CO.paa";
        };
      };
    };
  };
};

class Land_SignWarning_01_CheckpointZone1_F: SignAd_Sponsor_F {
  author = "hozlucas28";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  editorPreview = "\FCLA_Objects\Others\data\pictures\Land_SignWarning_01_CheckpointZone1_F.jpg";
  scope = 2;
  scopeCurator = 2;
};

class Land_SignWarning_01_CheckpointZone2_F: SignAd_Sponsor_F {
  author = "hozlucas28";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  editorPreview = "\FCLA_Objects\Others\data\pictures\Land_SignWarning_01_CheckpointZone2_F.jpg";
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_SignWarning_01_CheckpointZone3_F: SignAd_Sponsor_F {
  _generalMacro = "FCLA_Land_SignWarning_01_CheckpointZone3_F";
  author = "hozlucas28";
  displayName = "Señal (Punto de control AAF)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Miscellaneous";
  editorPreview = "\FCLA_Objects\Others\data\pictures\FCLA_Land_SignWarning_01_CheckpointZone3_F.jpg";
  hiddenSelectionsTextures[] = {"a3\missions_f_orange\Data\Img\Orange_Compositions\Checkpoint\SignSpec_checkpoint_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 0;
    animate[] = {};
    hide[] = {};
    verticalOffset = 1.041;
    verticalOffsetWorld = 0;
    init = "''";
  };
};
