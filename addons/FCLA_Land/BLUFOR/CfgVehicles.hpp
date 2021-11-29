
/********************************************************************************|
|                               VEHÍCULOS - BLUFOR                               |
|********************************************************************************/



/* -------------------------- UGV STOMPER (OTAN) --------------------------- */

class B_UGV_01_F: UGV_01_base_F {
  class TextureSources {
    class Blufor {
      author = "Bohemia Interactive";
      displayName = "BLUFOR";
      factions[] = {"BLU_F"};
      textures[] = {"\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_ext_co.paa","\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_int_co.paa","\A3\Data_F\Vehicles\Turret_co.paa"};
    };

    class EAF {
      author = "Bohemia Interactive";
      displayName = "LDF";
      factions[] = {"IND_E_F"};
      textures[] = {"\a3\Soft_F_Enoch\UGV_01\Data\UGV_01_ext_EAF_co.paa","\a3\Soft_F_Enoch\UGV_01\Data\UGV_01_int_EAF_co.paa","\a3\Soft_F_Enoch\UGV_01\Data\Turret_EAF_CO.paa"};
    };

    class GreenHex {
      author = "Bohemia Interactive";
      displayName = "Hex verde";
      factions[] = {"OPF_T_F"};
      textures[] = {"\A3\Soft_F_Exp\UGV_01\Data\UGV_01_ext_ghex_CO.paa","\A3\Soft_F_Exp\UGV_01\Data\UGV_01_int_ghex_CO.paa","\A3\Data_F_Exp\Vehicles\Turret_ghex_CO.paa"};
    };

    class IDAP {
      author = "Bohemia Interactive";
      displayName = "IDAP";
      factions[] = {"CIV_IDAP_F"};
      textures[] = {"\a3\Soft_F_Orange\UGV_01\Data\UGV_01_ext_IDAP_co.paa","\a3\Soft_F_Orange\UGV_01\Data\UGV_01_int_IDAP_co.paa","\a3\Soft_F_Orange\UGV_01\Data\Turret_IDAP_CO.paa"};
    };

    class Indep {
      author = "Bohemia Interactive";
      displayName = "AAF";
      factions[] = {"IND_F"};
      textures[] = {"\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_ext_INDP_co.paa","\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_int_INDP_co.paa","\A3\Data_F\Vehicles\Turret_INDP_co.paa"};
    };

    class Olive {
      author = "Bohemia Interactive";
      displayName = "Oliva";
      factions[] = {"BLU_T_F"};
      textures[] = {"\A3\Soft_F_Exp\UGV_01\Data\UGV_01_ext_olive_CO.paa","\A3\Soft_F_Exp\UGV_01\Data\UGV_01_int_olive_CO.paa","\A3\Data_F_Exp\Vehicles\Turret_olive_CO.paa"};
    };

    class Opfor {
      author = "Bohemia Interactive";
      displayName = "Hex";
      factions[] = {"OPF_F"};
      textures[] = {"\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_ext_OPFOR_co.paa","\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_int_OPFOR_co.paa","\A3\Data_F\Vehicles\Turret_OPFOR_co.paa"};
    };

    class Gray {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {"BLU_F", "BLU_T_F"};
      textures[] = {"\FCLA_Land\BLUFOR\data\B_UGV_01_F_Grey_1.paa", "\FCLA_Land\BLUFOR\data\B_UGV_01_F_Grey_2.paa"};
    };
  };
};



/* --------------------- UGV STOMPER (OTAN - PACÍFICO) --------------------- */

class B_T_UGV_01_olive_F: UGV_01_base_F {
  class TextureSources {
    class Blufor {
      author = "Bohemia Interactive";
      displayName = "BLUFOR";
      factions[] = {"BLU_F"};
      textures[] = {"\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_ext_co.paa","\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_int_co.paa","\A3\Data_F\Vehicles\Turret_co.paa"};
    };

    class EAF {
      author = "Bohemia Interactive";
      displayName = "LDF";
      factions[] = {"IND_E_F"};
      textures[] = {"\a3\Soft_F_Enoch\UGV_01\Data\UGV_01_ext_EAF_co.paa","\a3\Soft_F_Enoch\UGV_01\Data\UGV_01_int_EAF_co.paa","\a3\Soft_F_Enoch\UGV_01\Data\Turret_EAF_CO.paa"};
    };

    class GreenHex {
      author = "Bohemia Interactive";
      displayName = "Hex verde";
      factions[] = {"OPF_T_F"};
      textures[] = {"\A3\Soft_F_Exp\UGV_01\Data\UGV_01_ext_ghex_CO.paa","\A3\Soft_F_Exp\UGV_01\Data\UGV_01_int_ghex_CO.paa","\A3\Data_F_Exp\Vehicles\Turret_ghex_CO.paa"};
    };

    class IDAP {
      author = "Bohemia Interactive";
      displayName = "IDAP";
      factions[] = {"CIV_IDAP_F"};
      textures[] = {"\a3\Soft_F_Orange\UGV_01\Data\UGV_01_ext_IDAP_co.paa","\a3\Soft_F_Orange\UGV_01\Data\UGV_01_int_IDAP_co.paa","\a3\Soft_F_Orange\UGV_01\Data\Turret_IDAP_CO.paa"};
    };

    class Indep {
      author = "Bohemia Interactive";
      displayName = "AAF";
      factions[] = {"IND_F"};
      textures[] = {"\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_ext_INDP_co.paa","\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_int_INDP_co.paa","\A3\Data_F\Vehicles\Turret_INDP_co.paa"};
    };

    class Olive {
      author = "Bohemia Interactive";
      displayName = "Oliva";
      factions[] = {"BLU_T_F"};
      textures[] = {"\A3\Soft_F_Exp\UGV_01\Data\UGV_01_ext_olive_CO.paa","\A3\Soft_F_Exp\UGV_01\Data\UGV_01_int_olive_CO.paa","\A3\Data_F_Exp\Vehicles\Turret_olive_CO.paa"};
    };

    class Opfor {
      author = "Bohemia Interactive";
      displayName = "Hex";
      factions[] = {"OPF_F"};
      textures[] = {"\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_ext_OPFOR_co.paa","\A3\Drones_F\soft_f_gamma\UGV_01\data\UGV_01_int_OPFOR_co.paa","\A3\Data_F\Vehicles\Turret_OPFOR_co.paa"};
    };

    class Gray {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {"BLU_F", "BLU_T_F"};
      textures[] = {"\FCLA_Land\BLUFOR\data\B_UGV_01_F_Grey_1.paa", "\FCLA_Land\BLUFOR\data\B_UGV_01_F_Grey_2.paa"};
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
      displayName = "Árido";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Transport_F.paa"};
    };
  };
};


class FCLA_B_Van_02_Vehicle_F: C_Van_02_vehicle_F {
  crew = "B_engineer_F";
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
      displayName = "Árido";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Vehicle_F.paa"};
    };
  };
};


class FCLA_B_Van_02_Service_F: C_Van_02_service_F {
  crew = "B_engineer_F";
  displayName = "Furgoneta (servicios)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_Van_02_Service_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "a3\soft_f_orange\van_02\data\van_body_civservice_co.paa"};
  side = 1;
  faction = "BLU_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Árido";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "a3\soft_f_orange\van_02\data\van_body_civservice_co.paa"};
    };
  };
};


class FCLA_B_Van_02_Medevac_F: C_Van_02_medevac_F {
  crew = "B_medic_F";
  displayName = "Furgoneta (ambulancia)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_Van_02_Medevac_F.jpg";
  side = 1;
  faction = "BLU_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Arid", 1};
  class TextureSources {
    class Arid {
      author = "hozlucas28";
      displayName = "Árido";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Medevac_F_1.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_Van_02_Medevac_F_2.paa"};
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
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Transport_F.paa"};
    };
  };
};


class FCLA_B_T_Van_02_Vehicle_F: FCLA_B_Van_02_Vehicle_F {
  crew = "B_T_Engineer_F";
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
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Vehicle_F.paa"};
    };
  };
};


class FCLA_B_T_Van_02_Service_F: FCLA_B_Van_02_Service_F {
  crew = "B_T_Engineer_F";
  displayName = "Furgoneta (servicios)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_T_Van_02_Service_F.jpg";
  hiddenSelections[] = {"camo1", "camo2", "camo3", "emergency_lights"};
  hiddenSelectionsTextures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "a3\soft_f_orange\van_02\data\van_body_civservice_co.paa"};
  side = 1;
  faction = "BLU_T_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "a3\soft_f_orange\van_02\data\van_body_civservice_co.paa"};
    };
  };
};


class FCLA_B_T_Van_02_Medevac_F: FCLA_B_Van_02_Medevac_F {
  crew = "B_T_Medic_F";
  displayName = "Furgoneta (ambulancia)";
  //editorPreview = "\FCLA_Land\BLUFOR\data\pictures\FCLA_B_T_Van_02_Medevac_F.jpg";
  side = 1;
  faction = "BLU_T_F";
  editorSubcategory = "EdSubcat_Cars";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Olive", 1};
  class TextureSources {
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Medevac_F_1.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\FCLA_Land\BLUFOR\data\FCLA_B_T_Van_02_Medevac_F_2.paa"};
    };
  };
};



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
