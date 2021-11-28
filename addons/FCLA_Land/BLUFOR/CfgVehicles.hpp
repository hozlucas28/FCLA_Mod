
/********************************************************************************|
|                               VEHÍCULOS - BLUFOR                               |
|********************************************************************************/



/* ---------------------------- NEMMERA (BASE) ----------------------------- */

class B_APC_Tracked_01_base_F: APC_Tracked_01_base_F {
  class UserActions {
    class Plow_Down {
      radius = 2.5;
      showIn3D = 17;
      priority = 0.5;
      position = "camera";
      shortcut = "";
      available = 0;
      condition = "((this animationPhase 'MovePlow') < 0.5) && (alive this) && (((driver this) == (call CBA_fnc_currentUnit)) || ((commander this) == (call CBA_fnc_currentUnit)) || ((gunner this) == (call CBA_fnc_currentUnit)))";
      statement = "this animate ['MovePlow', 1]";
      showWindow = 1;
      radiusView = 0.2;
      displayName = "Bajar pala";
      userActionID = 50;
      onlyForPlayer = 0;
      displayNameDefault = "Bajar pala";
    };

    class Plow_Up {
      radius = 2.5;
      showIn3D = 17;
      priority = 0.5;
      position = "camera";
      shortcut = "";
      available = 0;
      condition = "((this animationPhase 'MovePlow') > 0.5) && (alive this) && (((driver this) == (call CBA_fnc_currentUnit)) || ((commander this) == (call CBA_fnc_currentUnit)) || ((gunner this) == (call CBA_fnc_currentUnit)))";
      statement = "this animate ['MovePlow', 0]";
      showWindow = 1;
      radiusView = 0.2;
      displayName = "Subir pala";
      userActionID = 51;
      onlyForPlayer = 0;
      displayNameDefault = "Subir pala";
    };
  };
};



/* --------------------------- FURGONETA (OTAN) ---------------------------- */

class FCLA_B_Van_02_Transport_F: C_Van_02_transport_F {
  crew = "B_Soldier_F";
  displayName = "Furgoneta (transporte)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_Van_02_Transport_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Transport_F.paa"};
  side = 1;
  faction = "BLU_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Arido";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Transport_F.paa"};
    };
  };
};


class FCLA_B_Van_02_Vehicle_F: C_Van_02_vehicle_F {
  crew = "B_Soldier_F";
  displayName = "Furgoneta (carga)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_Van_02_Vehicle_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Vehicle_F.paa"};
  side = 1;
  faction = "BLU_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Arido";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Vehicle_F.paa"};
    };
  };
};


class FCLA_B_Van_02_Service_F: C_Van_02_service_F {
  crew = "B_Soldier_F";
  displayName = "Furgoneta (servicios)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_Van_02_Service_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Service_F.paa"};
  side = 1;
  faction = "BLU_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Arido";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Service_F.paa"};
    };
  };
};


class FCLA_B_Van_02_Medevac_F: C_Van_02_medevac_F {
  crew = "B_Soldier_F";
  displayName = "Furgoneta (ambulancia)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_Van_02_Medevac_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "monitors", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Medevac_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\a3\soft_f_orange\van_02\data\van_ambulance_monitors_co.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Medevac_F.paa"};
  side = 1;
  faction = "BLU_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Arido";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Medevac_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\a3\soft_f_orange\van_02\data\van_ambulance_monitors_co.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Medevac_F.paa"};
    };
  };
};



/* ---------------------- FURGONETA (OTAN - PACÍFICO) ---------------------- */

class FCLA_B_T_Van_02_Transport_F: FCLA_B_Van_02_Transport_F {
  crew = "B_T_Soldier_F";
  displayName = "Furgoneta (transporte)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_T_Van_02_Transport_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Transport_F.paa"};
  side = 1;
  faction = "BLU_T_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Transport_F.paa"};
    };
  };
};


class FCLA_B_T_Van_02_Vehicle_F: FCLA_B_Van_02_Vehicle_F {
  crew = "B_T_Soldier_F";
  displayName = "Furgoneta (carga)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_T_Van_02_Vehicle_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Vehicle_F.paa"};
  side = 1;
  faction = "BLU_T_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Vehicle_F.paa"};
    };
  };
};


class FCLA_B_T_Van_02_Service_F: FCLA_B_Van_02_Service_F {
  crew = "B_T_Soldier_F";
  displayName = "Furgoneta (servicios)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_T_Van_02_Service_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Service_F.paa"};
  side = 1;
  faction = "BLU_T_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Service_F.paa"};
    };
  };
};


class FCLA_B_T_Van_02_Medevac_F: FCLA_B_Van_02_Medevac_F {
  crew = "B_T_Soldier_F";
  displayName = "Furgoneta (ambulancia)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_T_Van_02_Medevac_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "monitors", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Medevac_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\a3\soft_f_orange\van_02\data\van_ambulance_monitors_co.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Medevac_F.paa"};
  side = 1;
  faction = "BLU_T_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Medevac_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\a3\soft_f_orange\van_02\data\van_ambulance_monitors_co.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Medevac_F.paa"};
    };
  };
};
