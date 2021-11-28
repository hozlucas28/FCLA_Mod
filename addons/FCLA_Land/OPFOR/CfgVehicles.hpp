
/********************************************************************************|
|                               VEHÍCULOS - OPFOR                                |
|********************************************************************************/



/* --------------------------- FURGONETA (CSAT) ---------------------------- */

class FCLA_O_Van_02_Transport_F: C_Van_02_transport_F {
  crew = "O_soldier_F";
  displayName = "Furgoneta (transporte)";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Van_02_Transport_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Transport_F.paa"};
  side = 0;
  faction = "OPF_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Arido";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Transport_F.paa"};
    };
  };
};


class FCLA_O_Van_02_Vehicle_F: C_Van_02_vehicle_F {
  crew = "O_engineer_F";
  displayName = "Furgoneta (carga)";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Van_02_Vehicle_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Vehicle_F.paa"};
  side = 0;
  faction = "OPF_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Arido";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Vehicle_F.paa"};
    };
  };
};


class FCLA_O_Van_02_Service_F: C_Van_02_service_F {
  crew = "O_engineer_F";
  displayName = "Furgoneta (servicios)";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Van_02_Service_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "a3\soft_f_orange\van_02\data\van_body_civservice_co.paa"};
  side = 0;
  faction = "OPF_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Arido";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "a3\soft_f_orange\van_02\data\van_body_civservice_co.paa"};
    };
  };
};


class FCLA_O_Van_02_Medevac_F: C_Van_02_medevac_F {
  crew = "O_medic_F";
  displayName = "Furgoneta (ambulancia)";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_Van_02_Medevac_F.jpg";
  side = 0;
  faction = "OPF_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Arid", 1};
  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Arido";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Medevac_F_1.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\FCLA_Land\OPFOR\data\FCLA_O_Van_02_Medevac_F_2.paa"};
    };
  };
};



/* ---------------------- FURGONETA (CSAT - PACÍFICO) ---------------------- */

class FCLA_O_T_Van_02_Transport_F: FCLA_O_Van_02_Transport_F {
  crew = "O_T_Soldier_F";
  displayName = "Furgoneta (transporte)";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_T_Van_02_Transport_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Transport_F.paa"};
  side = 0;
  faction = "OPF_T_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Transport_F.paa"};
    };
  };
};


class FCLA_O_T_Van_02_Vehicle_F: FCLA_O_Van_02_Vehicle_F {
  crew = "O_T_Engineer_F";
  displayName = "Furgoneta (carga)";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_T_Van_02_Vehicle_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Vehicle_F.paa"};
  side = 0;
  faction = "OPF_T_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Vehicle_F.paa"};
    };
  };
};


class FCLA_O_T_Van_02_Service_F: FCLA_O_Van_02_Service_F {
  crew = "O_T_Engineer_F";
  displayName = "Furgoneta (servicios)";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_T_Van_02_Service_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Service_F.paa"};
  side = 0;
  faction = "OPF_T_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Service_F.paa"};
    };
  };
};


class FCLA_O_T_Van_02_Medevac_F: FCLA_O_Van_02_Medevac_F {
  crew = "O_T_Medic_F";
  displayName = "Furgoneta (ambulancia)";
  //editorPreview = "\FCLA_Land\OPFOR\data\pictures\FCLA_O_T_Van_02_Medevac_F.jpg";
  side = 0;
  faction = "OPF_T_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Green", 1};
  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Medevac_F_1.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\FCLA_Land\OPFOR\data\FCLA_O_T_Van_02_Medevac_F_2.paa"};
    };
  };
};
