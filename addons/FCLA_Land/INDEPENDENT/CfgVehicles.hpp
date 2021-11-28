
/********************************************************************************|
|                           VEHÍCULOS - INDEPENDIENTES                           |
|********************************************************************************/



/* ---------------------------- FURGONETA (AAF) ---------------------------- */

class FCLA_I_Van_02_Transport_F: C_Van_02_transport_F {
  crew = "I_soldier_F";
  displayName = "Furgoneta (transporte)";
  //editorPreview = "\FCLA_Land\INDEPENDENT\data\pictures\FCLA_I_Van_02_Transport_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Transport_F.paa"};
  side = 2;
  faction = "IND_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Transport_F.paa"};
    };
  };
};


class FCLA_I_Van_02_Vehicle_F: C_Van_02_vehicle_F {
  crew = "I_soldier_F";
  displayName = "Furgoneta (carga)";
  //editorPreview = "\FCLA_Land\INDEPENDENT\data\pictures\FCLA_I_Van_02_Vehicle_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Vehicle_F.paa"};
  side = 2;
  faction = "IND_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Vehicle_F.paa"};
    };
  };
};


class FCLA_I_Van_02_Service_F: C_Van_02_service_F {
  crew = "I_soldier_F";
  displayName = "Furgoneta (servicios)";
  //editorPreview = "\FCLA_Land\INDEPENDENT\data\pictures\FCLA_I_Van_02_Service_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Service_F.paa"};
  side = 2;
  faction = "IND_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Service_F.paa"};
    };
  };
};


class FCLA_I_Van_02_Medevac_F: C_Van_02_medevac_F {
  crew = "I_soldier_F";
  displayName = "Furgoneta (ambulancia)";
  //editorPreview = "\FCLA_Land\INDEPENDENT\data\pictures\FCLA_I_Van_02_Medevac_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "monitors", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Medevac_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\a3\soft_f_orange\van_02\data\van_ambulance_monitors_co.paa", "\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Medevac_F.paa"};
  side = 2;
  faction = "IND_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Medevac_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\a3\soft_f_orange\van_02\data\van_ambulance_monitors_co.paa", "\FCLA_Land\BLUFOR\data\FCLA_I_Van_02_Medevac_F.paa"};
    };
  };
};
