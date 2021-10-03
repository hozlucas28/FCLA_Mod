
/********************************************************************************|
|                               VEHÍCULOS - OPFOR                                |
|********************************************************************************/



/* ------------------------- MI - 48 KAJMAN (CSAT) ------------------------- */

class O_Heli_Attack_02_dynamicLoadout_F: Heli_Attack_02_dynamicLoadout_base_F {
  class UserActions {
    class DoorL1_Open {
      userActionID = 50;
      displayName = "$STR_A3_CfgVehicles_UserActions_OpenLdoor0";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      radius = 2.5;
      radiusView = 0.2;
      showIn3D = 17;
      available = 0;
      priority = 0.5;
      position = "door_L";
      showWindow = 1;
      onlyForPlayer = 0;
      shortcut = "";
      condition = "(this doorPhase 'door_L' < 0.5) && (alive this) && ((call CBA_fnc_currentUnit) in this)";
      statement = "this animateDoor ['door_L', 1]";
    };

    class DoorR1_Open: DoorL1_Open {
      userActionID = 51;
      displayName = "$STR_A3_CfgVehicles_UserActions_OpenRdoor0";
      position = "door_R";
      condition = "(this doorPhase 'door_R' < 0.5) && (alive this) && ((call CBA_fnc_currentUnit) in this)";
      statement = "this animateDoor ['door_R', 1]";
    };

    class DoorL1_Close: DoorL1_Open {
      userActionID = 53;
      displayName = "$STR_A3_CfgVehicles_UserActions_CloseLdoor0";
      condition = "(this doorPhase 'door_L' > 0.5) && (alive this) && ((call CBA_fnc_currentUnit) in this)";
      statement = "this animateDoor ['door_L', 0]";
    };

    class DoorR1_Close: DoorL1_Close {
      userActionID = 54;
      displayName = "$STR_A3_CfgVehicles_UserActions_CloseRdoor0";
      position = "door_R";
      condition = "(this doorPhase 'door_R' > 0.5) && (alive this) && ((call CBA_fnc_currentUnit) in this)";
      statement = "this animateDoor ['door_R', 0]";
    };
  };
};



/* ------------------------ Y - 32 XI'AN (CSAT)  ------------------------ */

class O_CSAT_VTOL_02_infantry_dynamicLoadout_F: O_T_VTOL_02_infantry_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_CSAT_VTOL_02_infantry_dynamicLoadout_F.jpg";
  side = 0;
  faction = "OPF_F";
  crew = "O_T_Pilot_F";
  typicalCargo[] = {"O_Soldier_F"};
  editorSubcategory = "EdSubcat_Planes";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3","Camo_4"};
  hiddenSelectionsTextures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_bhex_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_CO.paa"};
    };

    class Hex {
      author = "hozlucas28";
      displayName = "Hex";
      factions[] = {};
      textures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_bhex_CO.paa"};
    };
  };
};


class O_T_VTOL_02_vehicle_dynamicLoadout_F: VTOL_02_vehicle_dynamicLoadout_base_F {
  class UserActions {
    class Ramp_Close {
      available = 0;
      condition = "(this doorPhase 'Door_1_source' > 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) != 1)}";
      displayName = "Cerrar rampa";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      onlyForPlayer = 0;
      position = "";
      priority = 1.5;
      radius = 1.5;
      radiusView = 0.2;
      shortcut = "";
      showIn3D = 17;
      showWindow = 0;
      statement = "this animateDoor ['Door_1_source', 0]";
      textToolTip = "Cerrar rampa";
      userActionID = 61;
    };

    class Ramp_Open {
      available = 0;
      condition = "(this doorPhase 'Door_1_source' < 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) != 1)}";
      displayName = "Abrir rampa";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      onlyForPlayer = 0;
      position = "";
      priority = 1.5;
      radius = 1.5;
      radiusView = 0.2;
      shortcut = "";
      showIn3D = 17;
      showWindow = 0;
      statement = "this animateDoor ['Door_1_source', 1]";
      textToolTip = "Abrir rampa";
      userActionID = 60;
    };
  };
};


class O_CSAT_VTOL_02_vehicle_dynamicLoadout_F: O_T_VTOL_02_vehicle_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_CSAT_VTOL_02_vehicle_dynamicLoadout_F.jpg";
  side = 0;
  faction = "OPF_F";
  crew = "O_T_Pilot_F";
  typicalCargo[] = {"O_Soldier_F"};
  editorSubcategory = "EdSubcat_Planes";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3","Camo_4"};
  hiddenSelectionsTextures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_bhex_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_CO.paa"};
    };

    class Hex {
      author = "hozlucas28";
      displayName = "Hex";
      factions[] = {};
      textures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_bhex_CO.paa","\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_bhex_CO.paa"};
    };
  };
};



/* ---------------------- KA - 60 KASATKA (SPETSNAZ) ----------------------- */

class O_Spetsnaz_Heli_Light_02_unarmed_F: O_Heli_Light_02_unarmed_F {
  author = "hozlucas28";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_helipilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Helicopters";
  hiddenSelections[] = {"camo1"};
  hiddenSelectionsTextures[] = {"\A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_CO.paa"};
    };
  };
};


class O_Spetsnaz_Heli_Light_02_dynamicLoadout_F: O_Heli_Light_02_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Heli_Light_02_dynamicLoadout_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_helipilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Helicopters";
  hiddenSelections[] = {"camo1"};
  hiddenSelectionsTextures[] = {"\A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_CO.paa"};
    };
  };
};



/* ----------------------- MI - 48 KAJMAN (SPETSNAZ) ----------------------- */

class O_Spetsnaz_Heli_Attack_02_dynamicLoadout_F: O_Heli_Attack_02_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Heli_Attack_02_dynamicLoadout_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_helipilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Helicopters";
  hiddenSelections[] = {"camo1","camo2"};
  hiddenSelectionsTextures[] = {"A3\Air_F_Beta\Heli_Attack_02\Data\Heli_Attack_02_body1_black_CO.paa","A3\Air_F_Beta\Heli_Attack_02\Data\Heli_Attack_02_body2_black_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Beta\Heli_Attack_02\Data\Heli_Attack_02_body1_black_CO.paa","A3\Air_F_Beta\Heli_Attack_02\Data\Heli_Attack_02_body2_black_CO.paa"};
    };
  };
};



/* ----------------------- MI - 290 TARU (SPETSNAZ) ------------------------ */

class O_Spetsnaz_Heli_Transport_04_F: O_Heli_Transport_04_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Heli_Transport_04_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_helipilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Helicopters";
  hiddenSelections[] = {"Camo_1","Camo_2"};
  hiddenSelectionsTextures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa"};
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "O_R_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_R_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa"};
    };
  };
};


class O_Spetsnaz_Heli_Transport_04_bench_F: O_Heli_Transport_04_bench_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Heli_Transport_04_bench_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_helipilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Helicopters";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3"};
  hiddenSelectionsTextures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_bench_Black_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "O_R_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_R_helipilot_F";};
    class CargoTurret_01: CargoTurret_01 {gunnerType = "";};
    class CargoTurret_02: CargoTurret_02 {gunnerType = "";};
    class CargoTurret_03: CargoTurret_03 {gunnerType = "";};
    class CargoTurret_04: CargoTurret_04 {gunnerType = "";};
    class CargoTurret_05: CargoTurret_05 {gunnerType = "";};
    class CargoTurret_06: CargoTurret_06 {gunnerType = "";};
    class CargoTurret_07: CargoTurret_07 {gunnerType = "";};
    class CargoTurret_08: CargoTurret_08 {gunnerType = "";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_bench_Black_CO.paa"};
    };
  };
};


class O_Spetsnaz_Heli_Transport_04_covered_F: O_Heli_Transport_04_covered_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Heli_Transport_04_covered_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_helipilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Helicopters";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3","Camo_4"};
  hiddenSelectionsTextures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "O_R_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_R_helipilot_F";};
    class CargoTurret_01: CargoTurret_01 {gunnerType = "";};
    class CargoTurret_02: CargoTurret_02 {gunnerType = "";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
    };
  };
};


class O_Spetsnaz_Heli_Transport_04_medevac_F: O_Heli_Transport_04_medevac_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Heli_Transport_04_medevac_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_helipilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Helicopters";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3","Camo_4"};
  hiddenSelectionsTextures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "O_R_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_R_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
    };
  };
};


class O_Spetsnaz_Heli_Transport_04_repair_F: O_Heli_Transport_04_repair_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Heli_Transport_04_repair_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_helipilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Helicopters";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3","Camo_4"};
  hiddenSelectionsTextures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "O_R_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_R_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
    };
  };
};


class O_Spetsnaz_Heli_Transport_04_fuel_F: O_Heli_Transport_04_fuel_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Heli_Transport_04_fuel_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_helipilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Helicopters";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3"};
  hiddenSelectionsTextures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_fuel_black_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "O_R_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_R_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_fuel_black_CO.paa"};
    };
  };
};


class O_Spetsnaz_Heli_Transport_04_ammo_F: O_Heli_Transport_04_ammo_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Heli_Transport_04_ammo_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_helipilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Helicopters";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3","Camo_4"};
  hiddenSelectionsTextures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "O_R_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_R_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
    };
  };
};


class O_Spetsnaz_Heli_Transport_04_box_F: O_Heli_Transport_04_box_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Heli_Transport_04_box_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_helipilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Helicopters";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3","Camo_4"};
  hiddenSelectionsTextures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "O_R_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_R_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
    };
  };
};



/* ----------------------- Y - 32 XI'AN (SPETSNAZ)  ------------------------ */

class O_Spetsnaz_VTOL_02_infantry_dynamicLoadout_F: O_T_VTOL_02_infantry_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_VTOL_02_infantry_dynamicLoadout_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_Pilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Planes";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3","Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_1.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_2.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_3.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_4.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_1.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_2.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_3.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_4.paa"};
    };
  };
};


class O_Spetsnaz_VTOL_02_vehicle_dynamicLoadout_F: O_T_VTOL_02_vehicle_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_VTOL_02_vehicle_dynamicLoadout_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_Pilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Planes";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3","Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_1.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_2.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_3.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_4.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_1.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_2.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_3.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_4.paa"};
    };
  };
};



/* ---------------------- TO - 201 SHIKRA (SPETSNAZ)  ---------------------- */

class O_Spetsnaz_Plane_Fighter_02_Stealth_F: O_Plane_Fighter_02_Stealth_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Plane_Fighter_02_Stealth_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_Pilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Planes";
  hiddenSelections[] = {"Camo_01","Camo_02","","number_01","number_02","number_03"};
  hiddenSelectionsTextures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_Plane_Fighter_02_F_Grey_2.paa","a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa","a3\data_f\clear_empty.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Blue {
      author = "hozlucas28";
      displayName = "Azul";
      factions[] = {};
      textures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Blue_co.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_Plane_Fighter_02_F_Blue_2.paa","a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Blue_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa","a3\data_f\clear_empty.paa"};
    };

    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_Plane_Fighter_02_F_Grey_2.paa","a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa","a3\data_f\clear_empty.paa"};
    };
  };
};


class O_Spetsnaz_Plane_Fighter_02_F: O_Plane_Fighter_02_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_Spetsnaz_Plane_Fighter_02_F.jpg";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_R_Pilot_F";
  typicalCargo[] = {"O_R_JTAC_F"};
  editorSubcategory = "EdSubcat_Planes";
  hiddenSelections[] = {"Camo_01","Camo_02","","number_01","number_02","number_03"};
  hiddenSelectionsTextures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_Plane_Fighter_02_F_Grey_2.paa","a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa","a3\data_f\clear_empty.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Blue {
      author = "hozlucas28";
      displayName = "Azul";
      factions[] = {};
      textures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Blue_co.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_Plane_Fighter_02_F_Blue_2.paa","a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Blue_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa","a3\data_f\clear_empty.paa"};
    };

    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa","\FCLA_Air\OPFOR\data\O_Spetsnaz_Plane_Fighter_02_F_Grey_2.paa","a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa","a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa","a3\data_f\clear_empty.paa"};
    };
  };
};



/* ------------------------ BURRAQ UCAV (SPETSNAZ)  ------------------------ */

class O_Spetsnaz_UAV_04_CAS_F: O_T_UAV_04_CAS_F {
  author = "hozlucas28";
  side = 0;
  faction = "OPF_R_F";
  crew = "O_UAV_AI";
  typicalCargo[] = {"O_UAV_AI"};
  editorSubcategory = "EdSubcat_Drones";
  scope = 2;
  scopeCurator = 2;
};
