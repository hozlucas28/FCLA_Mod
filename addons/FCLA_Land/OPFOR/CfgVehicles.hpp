
/********************************************************************************|
|                               VEHÍCULOS - OPFOR                                |
|********************************************************************************/



/* ------------------------- TORRETAS (SPETSNAZ) -------------------------- */

class FCLA_O_Spetsnaz_SAM_System_04_F: O_SAM_System_04_F {
  crew = "O_UAV_AI";
  hiddenSelections[] = {"camo1", "camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_SAM_System_04_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_SAM_System_04_F_2.paa"};
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Spetsnaz_SAM_System_04_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"RusHex", 1};
  class TextureSources {
    class RusHex {
      author = "hozlucas28";
      displayName = "Hex verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_SAM_System_04_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_SAM_System_04_F_2.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Radar_System_02_F: O_Radar_System_02_F {
  crew = "O_UAV_AI";
  hiddenSelections[] = {"camo1", "camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_Radar_System_02_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_Radar_System_02_F_2.paa"};
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Spetsnaz_Radar_System_02_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"RusHex", 1};
  class TextureSources {
    class RusHex {
      author = "hozlucas28";
      displayName = "Hex verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_Radar_System_02_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_Radar_System_02_F_2.paa"};
    };
  };
};



/* -------------------------- FURGONETAS (CSAT) ---------------------------- */

class FCLA_O_Van_02_Transport_F: C_Van_02_transport_F {
  crew = "O_soldier_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Van_02_Transport_F.jpg";
  side = 0;
  faction = "OPF_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Arid", 1};
  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Árido";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Transport_F.paa"};
    };
  };
};


class FCLA_O_Van_02_Vehicle_F: C_Van_02_vehicle_F {
  crew = "O_engineer_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Van_02_Vehicle_F.jpg";
  side = 0;
  faction = "OPF_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Arid", 1};
  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Árido";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Vehicle_F.paa"};
    };
  };
};


class FCLA_O_Van_02_Service_F: C_Van_02_service_F {
  crew = "O_engineer_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Van_02_Service_F.jpg";
  side = 0;
  faction = "OPF_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Arid", 1};
  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Árido";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "a3\soft_f_orange\van_02\data\van_body_civservice_co.paa"};
    };
  };
};


class FCLA_O_Van_02_Medevac_F: C_Van_02_medevac_F {
  crew = "O_medic_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Van_02_Medevac_F.jpg";
  side = 0;
  faction = "OPF_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Arid", 1};
  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Árido";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Medevac_F_1.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Medevac_F_2.paa"};
    };
  };
};



/* --------------------- FURGONETAS (CSAT - PACÍFICO) ---------------------- */

class FCLA_O_T_Van_02_Transport_F: FCLA_O_Van_02_Transport_F {
  crew = "O_T_Soldier_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_T_Van_02_Transport_F.jpg";
  side = 0;
  faction = "OPF_T_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Olive", 1};
  class TextureSources {
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Transport_F.paa"};
    };
  };
};


class FCLA_O_T_Van_02_Vehicle_F: FCLA_O_Van_02_Vehicle_F {
  crew = "O_T_Engineer_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_T_Van_02_Vehicle_F.jpg";
  side = 0;
  faction = "OPF_T_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Olive", 1};
  class TextureSources {
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Vehicle_F.paa"};
    };
  };
};


class FCLA_O_T_Van_02_Service_F: FCLA_O_Van_02_Service_F {
  crew = "O_T_Engineer_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_T_Van_02_Service_F.jpg";
  side = 0;
  faction = "OPF_T_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Olive", 1};
  class TextureSources {
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Service_F.paa"};
    };
  };
};


class FCLA_O_T_Van_02_Medevac_F: FCLA_O_Van_02_Medevac_F {
  crew = "O_T_Medic_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_T_Van_02_Medevac_F.jpg";
  side = 0;
  faction = "OPF_T_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Olive", 1};
  class TextureSources {
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Medevac_F_1.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Medevac_F_2.paa"};
    };
  };
};



/* ------------------------- ANTIAÉREO (SPETSNAZ) -------------------------- */

class FCLA_O_Spetsnaz_APC_Tracked_02_AA_ghex_F: O_T_APC_Tracked_02_AA_ghex_F {
  crew = "O_FCLA_Spetsnaz_crew_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Spetsnaz_APC_Tracked_02_AA_ghex_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"RusHex", 1};
  class TextureSources {
    class RusHex {
      author = "hozlucas28";
      displayName = "Hex verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_APC_Tracked_02_AA_ghex_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_APC_Tracked_02_AA_ghex_F_2.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_APC_Tracked_02_AA_ghex_F_3.paa"};
    };
  };
};



/* ------------------------- ARTILLERÍA (SPETSNAZ) ------------------------- */

class FCLA_O_Spetsnaz_MBT_02_arty_ghex_F: O_T_MBT_02_arty_ghex_F {
  crew = "O_FCLA_Spetsnaz_crew_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Spetsnaz_MBT_02_arty_ghex_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"RusHex", 1};
  class TextureSources {
    class RusHex {
      author = "hozlucas28";
      displayName = "Hex verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_02_arty_ghex_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_02_arty_ghex_F_2.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_02_arty_ghex_F_3.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_02_arty_ghex_F_4.paa"};
    };
  };
};



/* -------------------------- TANQUES (SPETSNAZ) --------------------------- */

class FCLA_O_Spetsnaz_MBT_02_cannon_ghex_F: O_T_MBT_02_cannon_ghex_F {
  crew = "O_FCLA_Spetsnaz_crew_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Spetsnaz_MBT_02_cannon_ghex_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"RusHex", 1};
  class TextureSources {
    class RusHex {
      author = "hozlucas28";
      displayName = "Hex verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_02_cannon_ghex_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_02_cannon_ghex_F_2.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_02_cannon_ghex_F_3.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_MBT_04_cannon_F: O_T_MBT_04_cannon_F {
  crew = "O_FCLA_Spetsnaz_crew_F";
  hiddenSelections[] = {"Camo1", "Camo2", "CamoNet"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_04_cannon_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_04_cannon_F_2.paa", "A3\Armor_F\Data\camonet_CSAT_HEX_Green_CO.paa"};
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Spetsnaz_MBT_04_cannon_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"RusHex", 1};
  class TextureSources {
    class RusHex {
      author = "hozlucas28";
      displayName = "Hex verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_04_cannon_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_04_cannon_F_2.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_MBT_04_command_F: O_T_MBT_04_command_F {
  crew = "O_FCLA_Spetsnaz_crew_F";
  hiddenSelections[] = {"Camo1", "Camo2", "CamoNet"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_04_command_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_04_command_F_2.paa", "A3\Armor_F\Data\camonet_CSAT_HEX_Green_CO.paa"};
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Spetsnaz_MBT_04_command_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"RusHex", 1};
  class TextureSources {
    class RusHex {
      author = "hozlucas28";
      displayName = "Hex verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_04_command_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_MBT_04_command_F_2.paa"};
    };
  };
};



/* ------------------- VEHÍCULOS DE PERSONAL (SPETSNAZ) -------------------- */

class FCLA_O_Spetsnaz_APC_Wheeled_02_rcws_v2_ghex_F: O_T_APC_Wheeled_02_rcws_v2_ghex_F {
  crew = "O_FCLA_Spetsnaz_crew_F";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Spetsnaz_APC_Wheeled_02_rcws_v2_ghex_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"RusHex", 1};
  class TextureSources {
    class RusHex {
      author = "hozlucas28";
      displayName = "Hex verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_APC_Wheeled_02_rcws_v2_ghex_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_APC_Wheeled_02_rcws_v2_ghex_F_2.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_APC_Wheeled_02_rcws_v2_ghex_F_3.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_APC_Tracked_02_cannon_ghex_F: O_T_APC_Tracked_02_cannon_ghex_F {
  crew = "O_FCLA_Spetsnaz_crew_F";
  //hiddenSelectionsTextures[] = {"Kish_Vehi_Test\data\Kish_IFV_01.paa","Kish_Vehi_Test\data\Kish_IFV_02.paa","Kish_Vehi_Test\data\Kish_RC30.paa"};
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Spetsnaz_APC_Tracked_02_cannon_ghex_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"RusHex", 1};
  class TextureSources {
    class RusHex {
      author = "hozlucas28";
      displayName = "Hex verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_APC_Tracked_02_cannon_ghex_F_1.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_APC_Tracked_02_cannon_ghex_F_2.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Spetsnaz_APC_Tracked_02_cannon_ghex_F_3.paa"};
    };
  };
};
