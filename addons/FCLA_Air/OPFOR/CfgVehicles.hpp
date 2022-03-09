
/********************************************************************************|
|                               VEHICULOS - OPFOR                                |
|********************************************************************************/



/* -------------------------- DRONES (SPETSNAZ)  --------------------------- */

class FCLA_O_Spetsnaz_UAV_04_CAS_F: O_T_UAV_04_CAS_F {
  author = "hozlucas28";
  typicalCargo[] = {"O_UAV_AI"};
  crew = "O_UAV_AI";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Drones";
  side = 0;
  scope = 2;
  scopeCurator = 2;
};



/* -------------------------- HELICOPTEROS (CSAT) -------------------------- */

class O_Heli_Attack_02_dynamicLoadout_F: Heli_Attack_02_dynamicLoadout_base_F {
  class UserActions {
    class DoorL1_Open {
      position = "door_L";
      shortcut = "";
      condition = "(this doorPhase 'door_L' < 0.5) && (alive this) && (player in this)";
      statement = "this animateDoor ['door_L', 1];";
      displayName = "Abrir puerta izquierda";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      radius = 2.5;
      showIn3D = 17;
      available = 0;
      priority = 0.5;
      radiusView = 0.2;
      showWindow = 1;
      userActionID = 50;
      onlyForPlayer = 0;
    };

    class DoorR1_Open: DoorL1_Open {
      position = "door_R";
      condition = "(this doorPhase 'door_R' < 0.5) && (alive this) && (player in this)";
      statement = "this animateDoor ['door_R', 1];";
      displayName = "Abrir puerta derecha";
      userActionID = 51;
    };

    class DoorL1_Close: DoorL1_Open {
      condition = "(this doorPhase 'door_L' > 0.5) && (alive this) && (player in this)";
      statement = "this animateDoor ['door_L', 0];";
      displayName = "Cerrar puerta izquierda";
      userActionID = 53;
    };

    class DoorR1_Close: DoorL1_Close {
      position = "door_R";
      condition = "(this doorPhase 'door_R' > 0.5) && (alive this) && (player in this)";
      statement = "this animateDoor ['door_R', 0];";
      displayName = "Cerrar puerta derecha";
      userActionID = 54;
    };
  };
};



/* ------------------------ HELICOPTEROS (SPETSNAZ) ------------------------ */

class FCLA_O_Spetsnaz_Heli_Light_02_unarmed_F: O_Heli_Light_02_unarmed_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Heli_Light_02_unarmed_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"camo1"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Light_02_Green.paa"};
  crew = "FCLA_O_Spetsnaz_helipilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Helicopters";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_CO.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Light_02_Green.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Heli_Light_02_dynamicLoadout_F: O_Heli_Light_02_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Heli_Light_02_dynamicLoadout_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"camo1"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Light_02_Green.paa"};
  crew = "FCLA_O_Spetsnaz_helipilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Helicopters";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_CO.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Light_02_Green.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Heli_Attack_02_dynamicLoadout_F: O_Heli_Attack_02_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Heli_Attack_02_dynamicLoadout_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"camo1", "camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Attack_02_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Attack_02_Green_2.paa"};
  crew = "FCLA_O_Spetsnaz_helipilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Helicopters";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Beta\Heli_Attack_02\Data\Heli_Attack_02_body1_black_CO.paa", "A3\Air_F_Beta\Heli_Attack_02\Data\Heli_Attack_02_body2_black_CO.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Attack_02_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Attack_02_Green_2.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Heli_Transport_04_F: O_Heli_Transport_04_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Heli_Transport_04_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa"};
  crew = "FCLA_O_Spetsnaz_helipilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Helicopters";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Heli_Transport_04_bench_F: O_Heli_Transport_04_bench_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Heli_Transport_04_bench_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_bench_black_co.paa"};
  crew = "FCLA_O_Spetsnaz_helipilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Helicopters";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CargoTurret_01: CargoTurret_01 {gunnerType = "";};
    class CargoTurret_02: CargoTurret_02 {gunnerType = "";};
    class CargoTurret_03: CargoTurret_03 {gunnerType = "";};
    class CargoTurret_04: CargoTurret_04 {gunnerType = "";};
    class CargoTurret_05: CargoTurret_05 {gunnerType = "";};
    class CargoTurret_06: CargoTurret_06 {gunnerType = "";};
    class CargoTurret_07: CargoTurret_07 {gunnerType = "";};
    class CargoTurret_08: CargoTurret_08 {gunnerType = "";};
    class CopilotTurret: CopilotTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_bench_Black_CO.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_bench_black_co.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Heli_Transport_04_covered_F: O_Heli_Transport_04_covered_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Heli_Transport_04_covered_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3", "Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_2.paa"};
  crew = "FCLA_O_Spetsnaz_helipilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Helicopters";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CargoTurret_01: CargoTurret_01 {gunnerType = "";};
    class CargoTurret_02: CargoTurret_02 {gunnerType = "";};
    class CopilotTurret: CopilotTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_2.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Heli_Transport_04_medevac_F: O_Heli_Transport_04_medevac_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Heli_Transport_04_medevac_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3", "Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_2.paa"};
  crew = "FCLA_O_Spetsnaz_helipilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Helicopters";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_2.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Heli_Transport_04_repair_F: O_Heli_Transport_04_repair_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Heli_Transport_04_repair_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3", "Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_2.paa"};
  crew = "FCLA_O_Spetsnaz_helipilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Helicopters";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_2.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Heli_Transport_04_fuel_F: O_Heli_Transport_04_fuel_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Heli_Transport_04_fuel_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_fuel_black_co.paa"};
  crew = "FCLA_O_Spetsnaz_helipilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Helicopters";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_fuel_black_CO.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_fuel_black_co.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Heli_Transport_04_ammo_F: O_Heli_Transport_04_ammo_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Heli_Transport_04_ammo_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3", "Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_2.paa"};
  crew = "FCLA_O_Spetsnaz_helipilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Helicopters";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_2.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Heli_Transport_04_box_F: O_Heli_Transport_04_box_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Heli_Transport_04_box_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3", "Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_2.paa"};
  crew = "FCLA_O_Spetsnaz_helipilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Helicopters";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class Turrets: Turrets {
    class CopilotTurret: CopilotTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
    class LoadmasterTurret: LoadmasterTurret {gunnerType = "FCLA_O_Spetsnaz_helipilot_F";};
  };

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_Black_co.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_Black_CO.paa", "A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_Black_CO.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Heli_Transport_04_Green_Box_2.paa"};
    };
  };
};



/* ---------------------------- AVIONES (CSAT)  ---------------------------- */

class O_CSAT_VTOL_02_infantry_dynamicLoadout_F: O_T_VTOL_02_infantry_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_CSAT_VTOL_02_infantry_dynamicLoadout_F.jpg";
  typicalCargo[] = {"O_Soldier_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3", "Camo_4"};
  hiddenSelectionsTextures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_bhex_CO.paa"};
  crew = "O_T_Pilot_F";
  faction = "OPF_F";
  editorSubcategory = "EdSubcat_Planes";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_CO.paa"};
    };

    class Hex {
      author = "hozlucas28";
      displayName = "HEX";
      factions[] = {};
      textures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_bhex_CO.paa"};
    };
  };
};


class O_T_VTOL_02_vehicle_dynamicLoadout_F: VTOL_02_vehicle_dynamicLoadout_base_F {
  class UserActions {
    class Ramp_Close {
      position = "";
      shortcut = "";
      condition = "(this doorPhase 'Door_1_source' > 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) != 1)}";
      statement = "this animateDoor ['Door_1_source', 0];";
      displayName = "Cerrar rampa";
      textToolTip = "Cerrar rampa";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      radius = 1.5;
      priority = 1.5;
      showIn3D = 17;
      available = 0;
      radiusView = 0.2;
      showWindow = 0;
      userActionID = 61;
      onlyForPlayer = 0;
    };

    class Ramp_Open {
      position = "";
      shortcut = "";
      condition = "(this doorPhase 'Door_1_source' < 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) != 1)}";
      statement = "this animateDoor ['Door_1_source', 1];";
      displayName = "Abrir rampa";
      textToolTip = "Abrir rampa";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      radius = 1.5;
      priority = 1.5;
      showIn3D = 17;
      available = 0;
      radiusView = 0.2;
      showWindow = 0;
      userActionID = 60;
      onlyForPlayer = 0;
    };
  };
};


class O_CSAT_VTOL_02_vehicle_dynamicLoadout_F: O_T_VTOL_02_vehicle_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\O_CSAT_VTOL_02_vehicle_dynamicLoadout_F.jpg";
  typicalCargo[] = {"O_Soldier_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3", "Camo_4"};
  hiddenSelectionsTextures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_bhex_CO.paa"};
  crew = "O_T_Pilot_F";
  faction = "OPF_F";
  editorSubcategory = "EdSubcat_Planes";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_CO.paa"};
    };

    class Hex {
      author = "hozlucas28";
      displayName = "HEX";
      factions[] = {};
      textures[] = {"\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT01_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT02_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_L_bhex_CO.paa", "\A3\Air_F_Exp\VTOL_02\Data\VTOL_02_EXT03_R_bhex_CO.paa"};
    };
  };
};



/* -------------------------- AVIONES (SPETSNAZ)  -------------------------- */

class FCLA_O_Spetsnaz_VTOL_02_infantry_dynamicLoadout_F: O_T_VTOL_02_infantry_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_VTOL_02_infantry_dynamicLoadout_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3", "Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_3.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_4.paa"};
  crew = "FCLA_O_Spetsnaz_Pilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Planes";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_3.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_4.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_3.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_4.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_VTOL_02_vehicle_dynamicLoadout_F: O_T_VTOL_02_vehicle_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_VTOL_02_vehicle_dynamicLoadout_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3", "Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_3.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_4.paa"};
  crew = "FCLA_O_Spetsnaz_Pilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Planes";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black {
      author = "hozlucas28";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_3.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Black_4.paa"};
    };

    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_1.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_2.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_3.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_VTOL_02_dynamicLoadout_F_Green_4.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Plane_Fighter_02_Stealth_F: O_Plane_Fighter_02_Stealth_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Plane_Fighter_02_Stealth_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_01", "Camo_02", "", "number_01", "number_02", "number_03"};
  hiddenSelectionsTextures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Plane_Fighter_02_F_Grey_2.paa", "a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa", "a3\data_f\clear_empty.paa"};
  crew = "FCLA_O_Spetsnaz_Pilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Planes";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Blue {
      author = "hozlucas28";
      displayName = "Azul";
      factions[] = {};
      textures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Blue_co.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Plane_Fighter_02_F_Blue_2.paa", "a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Blue_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa", "a3\data_f\clear_empty.paa"};
    };

    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Plane_Fighter_02_F_Grey_2.paa", "a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa", "a3\data_f\clear_empty.paa"};
    };
  };
};


class FCLA_O_Spetsnaz_Plane_Fighter_02_F: O_Plane_Fighter_02_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\OPFOR\data\pictures\FCLA_O_Spetsnaz_Plane_Fighter_02_F.jpg";
  typicalCargo[] = {"O_R_JTAC_F"};
  hiddenSelections[] = {"Camo_01", "Camo_02", "", "number_01", "number_02", "number_03"};
  hiddenSelectionsTextures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Plane_Fighter_02_F_Grey_2.paa", "a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa", "a3\data_f\clear_empty.paa"};
  crew = "FCLA_O_Spetsnaz_Pilot_F";
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Planes";
  side = 0;
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Blue {
      author = "hozlucas28";
      displayName = "Azul";
      factions[] = {};
      textures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Blue_co.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Plane_Fighter_02_F_Blue_2.paa", "a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Blue_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa", "a3\data_f\clear_empty.paa"};
    };

    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa", "\FCLA_Air\OPFOR\data\FCLA_O_Spetsnaz_Plane_Fighter_02_F_Grey_2.paa", "a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Grey_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa", "a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa", "a3\data_f\clear_empty.paa"};
    };
  };
};
