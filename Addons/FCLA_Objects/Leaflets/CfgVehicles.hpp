
/***************************************************************************|
|                          VEHÍCULOS - "PANFLETOS"                          |
|***************************************************************************/

class FCLA_Leaflet_05_AccommodationNorthernBalavu_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_AccommodationNorthernBalavu_F";
  displayName = "Panfleto (alojamiento v1)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_AccommodationNorthernBalavu_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Balavu_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Balavu_ca.paa', localize 'STR_A3_OM_LEAFLET_NorthenBala'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_AccommodationNorthernTanoa_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_AccommodationNorthernTanoa_F";
  displayName = "Panfleto (alojamiento v2)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_AccommodationNorthernTanoa_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\North_Tanoa_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\North_Tanoa_ca.paa', localize 'STR_A3_OM_LEAFLET_NorthenTanoa'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_AccommodationCentralTanoa_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_AccommodationCentralTanoa_F";
  displayName = "Panfleto (alojamiento v3)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_AccommodationCentralTanoa_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Central_tanoa_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Central_tanoa_ca.paa', localize 'STR_A3_OM_LEAFLET_CentralTanoa'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_AccommodationSouthernBalavu_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_AccommodationSouthernBalavu_F";
  displayName = "Panfleto (alojamiento v4)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_AccommodationSouthernBalavu_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Balavu_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Balavu_ca.paa', localize 'STR_A3_OM_LEAFLET_SouthernBala'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_AccommodationDutchIsland_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_AccommodationDutchIsland_F";
  displayName = "Panfleto (alojamiento v5)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_AccommodationDutchIsland_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Lijn_Islands_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Lijn_Islands_ca.paa', localize 'STR_A3_OM_LEAFLET_DutchIsland'] call BIS_fnc_initInspectable;";
  };
};


class FCLA_Leaflet_05_announcements_01_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_announcements_01_F";
  author = "hozlucas28";
  displayName = "Panfleto (anuncios)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_announcements_01_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

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
          name = "Perro perdido";
          value = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa";
          picture = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Gikas";
          value = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_02_co.paa";
          picture = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_02_co.paa";
        };

        class 3 {
          name = "Proyecto de Ayuda y Desarrollo Internacional";
          value = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_03_co.paa";
          picture = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_03_co.paa";
        };
      };
    };
  };
};

class FCLA_Leaflet_05_announcements_01_random_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_announcements_01_random_F";
  author = "hozlucas28";
  displayName = "Panfleto (anuncios, aleatorio)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_announcements_01_random_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Leaflets\scripts\randomize_Announcements.sqf'";
  };
};

class FCLA_Leaflet_05_BenjaminHope_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_BenjaminHope_F";
  displayName = "Panfleto (Benjamin Hope)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_BenjaminHope_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Oldman\Data\img\leaflets\hope_leaflet_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";
};

class FCLA_Leaflet_05_Crime_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_Crime_F";
  displayName = "Panfleto (crimen)";
  author = "hozlucas28";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Crime_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Oldman\Data\img\leaflets\dead_body_note_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\Missions_F_Oldman\Data\img\leaflets\dead_body_note_ca.paa', localize 'str_a3_om_leaflet_colaborator'] call BIS_fnc_initInspectable";
  };
};

class FCLA_Leaflet_05_IDAP_IHL_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_IDAP_IHL_F";
  author = "hozlucas28";
  displayName = "Panfleto (DIH)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_IDAP_IHL_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Selecciona una textura [IDAP]";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Distinción";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Buena fe";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_good_faith_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_good_faith_CA.paa";
        };

        class 3 {
          name = "Derecho Internacional Humanitario";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_ihl_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_ihl_CA.paa";
        };

        class 4 {
          name = "Necesidades militares";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_military_necessity_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_military_necessity_CA.paa";
        };

        class 5 {
          name = "Para Steam";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_mine_hunt_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_mine_hunt_CA.paa";
        };

        class 6 {
          name = "Jornada de puertas abiertas del IDAP";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_open_day_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_open_day_CA.paa";
        };

        class 7 {
          name = "Precaución";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_precaution_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_precaution_CA.paa";
        };

        class 8 {
          name = "Trato humano";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_prisoners_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_prisoners_CA.paa";
        };

        class 9 {
          name = "Proporcionalidad";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_proportionality_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_proportionality_CA.paa";
        };

        class 10 {
          name = "Campos de RV";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_showcase_low_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_showcase_low_CA.paa";
        };

        class 11 {
          name = "Sufrimiento innecesario";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_unnecessary_suffering_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_unnecessary_suffering_CA.paa";
        };
      };
    };
  };
};

class FCLA_Leaflet_05_IDAP_IHL_radnom_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_IDAP_IHL_radnom_F";
  author = "hozlucas28";
  displayName = "Panfleto (DIH, aleatorio)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_IDAP_IHL_radnom_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Leaflets\scripts\randomize_IHL.sqf'";
  };
};

class FCLA_Leaflet_05_New_AccommodationNorthernBalavu_F: Leaflet_05_New_F {
  _generalMacro = "FCLA_Leaflet_05_New_AccommodationNorthernBalavu_F";
  displayName = "Panfleto (nuevo, alojamiento v1)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_New_AccommodationNorthernBalavu_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Balavu_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Balavu_ca.paa', localize 'STR_A3_OM_LEAFLET_NorthenBala'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_New_AccommodationNorthernTanoa_F: Leaflet_05_New_F {
  _generalMacro = "FCLA_Leaflet_05_New_AccommodationNorthernTanoa_F";
  displayName = "Panfleto (nuevo, alojamiento v2)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_New_AccommodationNorthernTanoa_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\North_Tanoa_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\North_Tanoa_ca.paa', localize 'STR_A3_OM_LEAFLET_NorthenTanoa'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_New_AccommodationCentralTanoa_F: Leaflet_05_New_F {
  _generalMacro = "FCLA_Leaflet_05_New_AccommodationCentralTanoa_F";
  displayName = "Panfleto (nuevo, alojamiento v3)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_New_AccommodationCentralTanoa_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Central_tanoa_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Central_tanoa_ca.paa', localize 'STR_A3_OM_LEAFLET_CentralTanoa'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_New_AccommodationSouthernBalavu_F: Leaflet_05_New_F {
  _generalMacro = "FCLA_Leaflet_05_New_AccommodationSouthernBalavu_F";
  displayName = "Panfleto (nuevo, alojamiento v4)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_New_AccommodationSouthernBalavu_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Balavu_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Balavu_ca.paa', localize 'STR_A3_OM_LEAFLET_SouthernBala'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_New_AccommodationDutchIsland_F: Leaflet_05_New_F {
  _generalMacro = "FCLA_Leaflet_05_New_AccommodationDutchIsland_F";
  displayName = "Panfleto (nuevo, alojamiento v5)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_New_AccommodationDutchIsland_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Lijn_Islands_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Lijn_Islands_ca.paa', localize 'STR_A3_OM_LEAFLET_DutchIsland'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_New_announcements_01_F: Leaflet_05_New_F {
  _generalMacro = "FCLA_Leaflet_05_New_announcements_01_F";
  author = "hozlucas28";
  displayName = "Panfleto (nuevo, anuncios)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_New_announcements_01_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

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
          name = "Perro perdido";
          value = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa";
          picture = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Gikas";
          value = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_02_co.paa";
          picture = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_02_co.paa";
        };

        class 3 {
          name = "Proyecto de Ayuda y Desarrollo Internacional";
          value = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_03_co.paa";
          picture = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_03_co.paa";
        };
      };
    };
  };
};

class FCLA_Leaflet_05_New_announcements_01_random_F: Leaflet_05_New_F {
  _generalMacro = "FCLA_Leaflet_05_New_announcements_01_random_F";
  author = "hozlucas28";
  displayName = "Panfleto (nuevo, anuncios, aleatorio)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_New_announcements_01_random_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Leaflets\scripts\randomize_Announcements.sqf'";
  };
};

class FCLA_Leaflet_05_New_BenjaminHope_F: Leaflet_05_New_F {
  _generalMacro = "FCLA_Leaflet_05_New_BenjaminHope_F";
  displayName = "Panfleto (nuevo, Benjamin Hope)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_New_BenjaminHope_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Oldman\Data\img\leaflets\hope_leaflet_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";
};

class FCLA_Leaflet_05_New_Crime_F: Leaflet_05_New_F {
  _generalMacro = "FCLA_Leaflet_05_New_Crime_F";
  author = "hozlucas28";
  displayName = "Panfleto (nuevo, crimen)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_New_Crime_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Oldman\Data\img\leaflets\dead_body_note_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\Missions_F_Oldman\Data\img\leaflets\dead_body_note_ca.paa', localize 'str_a3_om_leaflet_colaborator'] call BIS_fnc_initInspectable";
  };
};

class FCLA_Leaflet_05_New_IDAP_IHL_F: Leaflet_05_New_F {
  _generalMacro = "FCLA_Leaflet_05_New_IDAP_IHL_F";
  author = "hozlucas28";
  displayName = "Panfleto (nuevo, DIH)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_New_IDAP_IHL_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Selecciona una textura [IDAP]";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Distinción";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Buena fe";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_good_faith_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_good_faith_CA.paa";
        };

        class 3 {
          name = "Derecho Internacional Humanitario";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_ihl_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_ihl_CA.paa";
        };

        class 4 {
          name = "Necesidades militares";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_military_necessity_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_military_necessity_CA.paa";
        };

        class 5 {
          name = "Para Steam";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_mine_hunt_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_mine_hunt_CA.paa";
        };

        class 6 {
          name = "Jornada de puertas abiertas del IDAP";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_open_day_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_open_day_CA.paa";
        };

        class 7 {
          name = "Precaución";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_precaution_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_precaution_CA.paa";
        };

        class 8 {
          name = "Trato humano";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_prisoners_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_prisoners_CA.paa";
        };

        class 9 {
          name = "Proporcionalidad";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_proportionality_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_proportionality_CA.paa";
        };

        class 10 {
          name = "Campos de RV";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_showcase_low_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_showcase_low_CA.paa";
        };

        class 11 {
          name = "Sufrimiento innecesario";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_unnecessary_suffering_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_unnecessary_suffering_CA.paa";
        };
      };
    };
  };
};

class FCLA_Leaflet_05_New_IDAP_IHL_radnom_F: Leaflet_05_New_F {
  _generalMacro = "FCLA_Leaflet_05_New_IDAP_IHL_radnom_F";
  author = "hozlucas28";
  displayName = "Panfleto (nuevo, DIH, aleatorio)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_New_IDAP_IHL_radnom_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Leaflets\scripts\randomize_IHL.sqf'";
  };
};

class FCLA_Leaflet_05_Old_AccommodationNorthernBalavu_F: Leaflet_05_Old_F {
  _generalMacro = "FCLA_Leaflet_05_Old_AccommodationNorthernBalavu_F";
  displayName = "Panfleto (viejo, alojamiento v1)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Old_AccommodationNorthernBalavu_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Balavu_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Balavu_ca.paa', localize 'STR_A3_OM_LEAFLET_NorthenBala'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_Old_AccommodationNorthernTanoa_F: Leaflet_05_Old_F {
  _generalMacro = "FCLA_Leaflet_05_Old_AccommodationNorthernTanoa_F";
  displayName = "Panfleto (viejo, alojamiento v2)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Old_AccommodationNorthernTanoa_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\North_Tanoa_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\North_Tanoa_ca.paa', localize 'STR_A3_OM_LEAFLET_NorthenTanoa'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_Old_AccommodationCentralTanoa_F: Leaflet_05_Old_F {
  _generalMacro = "FCLA_Leaflet_05_Old_AccommodationCentralTanoa_F";
  displayName = "Panfleto (viejo, alojamiento v3)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Old_AccommodationCentralTanoa_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Central_tanoa_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Central_tanoa_ca.paa', localize 'STR_A3_OM_LEAFLET_CentralTanoa'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_Old_AccommodationSouthernBalavu_F: Leaflet_05_Old_F {
  _generalMacro = "FCLA_Leaflet_05_Old_AccommodationSouthernBalavu_F";
  displayName = "Panfleto (viejo, alojamiento v4)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Old_AccommodationSouthernBalavu_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Balavu_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Balavu_ca.paa', localize 'STR_A3_OM_LEAFLET_SouthernBala'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_Old_AccommodationDutchIsland_F: Leaflet_05_Old_F {
  _generalMacro = "FCLA_Leaflet_05_Old_AccommodationDutchIsland_F";
  displayName = "Panfleto (viejo, alojamiento v5)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Old_AccommodationDutchIsland_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_oldman\Data\img\leaflets\Lijn_Islands_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\missions_f_oldman\data\img\leaflets\Lijn_Islands_ca.paa', localize 'STR_A3_OM_LEAFLET_DutchIsland'] call BIS_fnc_initInspectable;";
  };
};

class FCLA_Leaflet_05_Old_announcements_01_F: Leaflet_05_Old_F {
  _generalMacro = "FCLA_Leaflet_05_Old_announcements_01_F";
  author = "hozlucas28";
  displayName = "Panfleto (viejo, anuncios)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Old_announcements_01_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

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
          name = "Perro perdido";
          value = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa";
          picture = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Gikas";
          value = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_02_co.paa";
          picture = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_02_co.paa";
        };

        class 3 {
          name = "Proyecto de Ayuda y Desarrollo Internacional";
          value = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_03_co.paa";
          picture = "\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_03_co.paa";
        };
      };
    };
  };
};

class FCLA_Leaflet_05_Old_announcements_01_random_F: Leaflet_05_Old_F {
  _generalMacro = "FCLA_Leaflet_05_Old_announcements_01_random_F";
  author = "hozlucas28";
  displayName = "Panfleto (viejo, anuncios, aleatorio)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Old_announcements_01_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Leaflets\scripts\randomize_Announcements.sqf'";
  };
};

class FCLA_Leaflet_05_Old_BenjaminHope_F: Leaflet_05_Old_F {
  _generalMacro = "FCLA_Leaflet_05_Old_BenjaminHope_F";
  displayName = "Panfleto (viejo, Benjamin Hope)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Old_BenjaminHope_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Oldman\Data\img\leaflets\hope_leaflet_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";
};

class FCLA_Leaflet_05_Old_Crime_F: Leaflet_05_Old_F {
  _generalMacro = "FCLA_Leaflet_05_Old_Crime_F";
  author = "hozlucas28";
  displayName = "Panfleto (viejo, crimen)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Old_Crime_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\Missions_F_Oldman\Data\img\leaflets\dead_body_note_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "[(_this # 0), 'a3\Missions_F_Oldman\Data\img\leaflets\dead_body_note_ca.paa', localize 'str_a3_om_leaflet_colaborator'] call BIS_fnc_initInspectable";
  };
};

class FCLA_Leaflet_05_Old_IDAP_IHL_F: Leaflet_05_Old_F {
  _generalMacro = "FCLA_Leaflet_05_Old_IDAP_IHL_F";
  author = "hozlucas28";
  displayName = "Panfleto (viejo, DIH)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Old_IDAP_IHL_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class Attributes {
    class SwitchTexture {
      property = "SwitchTexture";
      displayName = "Selecciona una textura [IDAP]";
      control = "Combo";
      expression = "_this setObjectTextureGlobal [0, _value]";
      defaultValue = 0;
      typeName = "ARRAY";

      class values {
        class 1 {
          name = "Distinción";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa";
          defaultValue = 0;
        };

        class 2 {
          name = "Buena fe";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_good_faith_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_good_faith_CA.paa";
        };

        class 3 {
          name = "Derecho Internacional Humanitario";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_ihl_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_ihl_CA.paa";
        };

        class 4 {
          name = "Necesidades militares";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_military_necessity_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_military_necessity_CA.paa";
        };

        class 5 {
          name = "Para Steam";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_mine_hunt_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_mine_hunt_CA.paa";
        };

        class 6 {
          name = "Jornada de puertas abiertas del IDAP";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_open_day_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_open_day_CA.paa";
        };

        class 7 {
          name = "Precaución";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_precaution_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_precaution_CA.paa";
        };

        class 8 {
          name = "Trato humano";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_prisoners_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_prisoners_CA.paa";
        };

        class 9 {
          name = "Proporcionalidad";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_proportionality_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_proportionality_CA.paa";
        };

        class 10 {
          name = "Campos de RV";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_showcase_low_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_showcase_low_CA.paa";
        };

        class 11 {
          name = "Sufrimiento innecesario";
          value = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_unnecessary_suffering_CA.paa";
          picture = "\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_unnecessary_suffering_CA.paa";
        };
      };
    };
  };
};

class FCLA_Leaflet_05_Old_IDAP_IHL_radnom_F: Leaflet_05_Old_F {
  _generalMacro = "FCLA_Leaflet_05_Old_IDAP_IHL_radnom_F";
  author = "hozlucas28";
  displayName = "Panfleto (viejo, DIH, aleatorio)";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_Old_IDAP_IHL_radnom_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Leaflets\scripts\randomize_IHL.sqf'";
  };
};

class FCLA_alt_guer_a: Leaflet_05_F {
  _generalMacro = "FCLA_alt_guer_a";
  author = "hozlucas28";
  displayName = "Panfleto [AAF]";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_alt_guer_a.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_orange\Data\Img\Orange_Leaflets\alt_guer_co.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";
};

class FCLA_Leaflet_05_civilian_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_civilian_F";
  author = "hozlucas28";
  displayName = "Panfleto [civil]";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_civilian_F.jpg";
  hiddenSelectionsTextures[] = {"a3\ui_f_orange\data\cfgleaflets\civ_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Leaflets\scripts\init_leaflet.sqf'";
  };
};

class FCLA_Leaflet_05_CSAT_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_CSAT_F";
  author = "hozlucas28";
  displayName = "Panfleto [CSAT]";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_CSAT_F.jpg";
  hiddenSelectionsTextures[] = {"a3\ui_f_orange\data\cfgleaflets\east_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Leaflets\scripts\init_leaflet.sqf'";
  };
};

class FCLA_Leaflet_05_FIA_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_FIA_F";
  author = "hozlucas28";
  displayName = "Panfleto [FIA]";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_FIA_F.jpg";
  hiddenSelectionsTextures[] = {"a3\ui_f_orange\data\cfgleaflets\guer_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Leaflets\scripts\init_leaflet.sqf'";
  };
};

class FCLA_Leaflet_05_NATO_F: Leaflet_05_F {
  _generalMacro = "FCLA_Leaflet_05_NATO_F";
  author = "hozlucas28";
  displayName = "Panfleto [NATO]";
  editorPreview = "\FCLA_Objects\Leaflets\pictures\FCLA_Leaflet_05_NATO_F.jpg";
  hiddenSelectionsTextures[] = {"a3\ui_f_orange\data\cfgleaflets\west_ca.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Leaflets";

  class EventHandlers {
    init = "(_this # 0) execVM '\FCLA_Objects\Leaflets\scripts\init_leaflet.sqf'";
  };
};
