
/********************************************************************************|
|                               VEHÍCULOS - BLUFOR                               |
|********************************************************************************/



/* ------------------------ UH-80 GHOST HAWK (OTAN) ------------------------ */

class B_Heli_Transport_01_F: Heli_Transport_01_base_F {
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

  class TextureSources {
    class Black {
      author = "Bohemia Interactive";
      displayName = "Negro";
      textures[] = {"\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext01_CO.paa","\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext02_CO.paa"};
    };

    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      textures[] = {"\FCLA_Air\BLUFOR\data\B_Heli_Transport_01_F_Grey_1.paa","\FCLA_Air\BLUFOR\data\B_Heli_Transport_01_F_Grey_2.paa"};
    };

    class Green {
      author = "Bohemia Interactive";
      displayName = "Verde";
      textures[] = {"\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext01_BLUFOR_CO.paa","\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext02_BLUFOR_CO.paa"};
    };
  };
};


class B_Heli_Transport_Medvac_01_F: B_Heli_Transport_01_F {
  author = "hozlucas28";
  displayName = "UH-80 Ghost Hawk (médico)";
  editorPreview = "\FCLA_Air\BLUFOR\data\pictures\B_Heli_Transport_Medvac_01_F.jpg";
  hiddenSelections[] = {"camo1","camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\BLUFOR\data\B_Heli_Transport_Medvac_01_F.paa","\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext02_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black_Medvac {
      author = "hozlucas28";
      displayName = "Negro (médico)";
      textures[] = {"\FCLA_Air\BLUFOR\data\B_Heli_Transport_Medvac_01_F.paa","\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext02_CO.paa"};
    };
  };
};



/* ------------------------ UH-80 GHOST HAWK (CTRG) ------------------------ */

class B_CTRG_Heli_Transport_01_Sand_F: Heli_Transport_01_base_F {
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


class B_CTRG_Heli_Transport_01_tropic_F: Heli_Transport_01_base_F {
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



/* ------------------------ CH - 47I CHINNOK (OTAN) ------------------------ */

class B_Heli_Transport_03_F: Heli_Transport_03_base_F {
  waterLeakiness = 0.1;
  class UserActions {
    class Ramp_Open {
      userActionID = 60;
      displayName = "$STR_ACTION_RAMP_OPEN0";
      textToolTip = "$STR_ACTION_RAMP_OPEN0";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      position = "";
      condition = "(this doorPhase 'Door_rear_source' < 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_rear_source', 1]";
      priority = 1.5;
      radius = 1.5;
      radiusView = 0.2;
      showIn3D = 17;
      available = 0;
      showWindow = 0;
      onlyForPlayer = 0;
      shortcut = "";
    };

    class Ramp_Close: Ramp_Open {
      userActionID = 61;
      displayName = "$STR_ACTION_RAMP_CLOSE0";
      textToolTip = "$STR_ACTION_RAMP_CLOSE0";
      condition = "(this doorPhase 'Door_rear_source' > 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_rear_source', 0]";
    };

    class Right_Door_Open: Ramp_Open {
      displayName = "$STR_A3_CfgVehicles_UserActions_OpenRdoor0";
      textToolTip = "$STR_A3_CfgVehicles_UserActions_OpenRdoor0";
      condition = "(this doorPhase 'Door_R_source' < 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_R_source', 1]";
    };

    class Right_Door_Colse: Ramp_Close {
      displayName = "$STR_A3_CfgVehicles_UserActions_CloseRdoor0";
      textToolTip = "$STR_A3_CfgVehicles_UserActions_CloseRdoor0";
      condition = "(this doorPhase 'Door_R_source' > 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_R_source', 0]";
    };

    class Left_Door_Open: Ramp_Open {
      displayName = "$STR_A3_CfgVehicles_UserActions_OpenLdoor0";
      textToolTip = "$STR_A3_CfgVehicles_UserActions_OpenLdoor0";
      condition = "(this doorPhase 'Door_L_source' < 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_L_source', 1]";
    };

    class Left_Door_Colse: Ramp_Close {
      displayName = "$STR_A3_CfgVehicles_UserActions_CloseLdoor0";
      textToolTip = "$STR_A3_CfgVehicles_UserActions_CloseLdoor0";
      condition = "(this doorPhase 'Door_L_source' > 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_L_source', 0]";
    };
  };

  class TextureSources {
    class Black {
      author = "Bohemia Interactive";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\A3\Air_F_Heli\Heli_Transport_03\Data\Heli_Transport_03_ext01_black_CO.paa","\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_black_co.paa"};
    };

    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"\FCLA_Air\BLUFOR\data\B_Heli_Transport_03_F_Grey_1.paa","\FCLA_Air\BLUFOR\data\B_Heli_Transport_03_F_Grey_2.paa"};
    };

    class Green {
      author = "Bohemia Interactive";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext01_co.paa","\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_co.paa"};
    };
  };
};


class B_Heli_Transport_03_unarmed_F: Heli_Transport_03_unarmed_base_F {
  waterLeakiness = 0.1;
  class UserActions {
    class Ramp_Open {
      userActionID = 60;
      displayName = "$STR_ACTION_RAMP_OPEN0";
      textToolTip = "$STR_ACTION_RAMP_OPEN0";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      position = "";
      condition = "(this doorPhase 'Door_rear_source' < 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_rear_source', 1]";
      priority = 1.5;
      radius = 1.5;
      radiusView = 0.2;
      showIn3D = 17;
      available = 0;
      showWindow = 0;
      onlyForPlayer = 0;
      shortcut = "";
    };

    class Ramp_Close: Ramp_Open {
      userActionID = 61;
      displayName = "$STR_ACTION_RAMP_CLOSE0";
      textToolTip = "$STR_ACTION_RAMP_CLOSE0";
      condition = "(this doorPhase 'Door_rear_source' > 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_rear_source', 0]";
    };

    class Right_Door_Open: Ramp_Open {
      displayName = "$STR_A3_CfgVehicles_UserActions_OpenRdoor0";
      textToolTip = "$STR_A3_CfgVehicles_UserActions_OpenRdoor0";
      condition = "(this doorPhase 'Door_R_source' < 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_R_source', 1]";
    };

    class Right_Door_Colse: Ramp_Close {
      displayName = "$STR_A3_CfgVehicles_UserActions_CloseRdoor0";
      textToolTip = "$STR_A3_CfgVehicles_UserActions_CloseRdoor0";
      condition = "(this doorPhase 'Door_R_source' > 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_R_source', 0]";
    };

    class Left_Door_Open: Ramp_Open {
      displayName = "$STR_A3_CfgVehicles_UserActions_OpenLdoor0";
      textToolTip = "$STR_A3_CfgVehicles_UserActions_OpenLdoor0";
      condition = "(this doorPhase 'Door_L_source' < 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_L_source', 1]";
    };

    class Left_Door_Colse: Ramp_Close {
      displayName = "$STR_A3_CfgVehicles_UserActions_CloseLdoor0";
      textToolTip = "$STR_A3_CfgVehicles_UserActions_CloseLdoor0";
      condition = "(this doorPhase 'Door_L_source' > 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_L_source', 0]";
    };
  };

  class TextureSources {
    class Black {
      author = "Bohemia Interactive";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\A3\Air_F_Heli\Heli_Transport_03\Data\Heli_Transport_03_ext01_black_CO.paa","\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_black_co.paa"};
    };

    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"\FCLA_Air\BLUFOR\data\B_Heli_Transport_03_F_Grey_1.paa","\FCLA_Air\BLUFOR\data\B_Heli_Transport_03_F_Grey_2.paa"};
    };

    class Green {
      author = "Bohemia Interactive";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext01_co.paa","\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_co.paa"};
    };
  };
};



/* ----------------- V - 44 X BLACKFISH (OTAN - PACÍFICO) ------------------ */

class B_T_VTOL_01_vehicle_F: VTOL_01_vehicle_base_F {
  class UserActions {
    class Ramp_Open {
      available = 0;
      condition = "(this doorPhase ""Door_1_source"" < 0.5) && (alive this) && ({(call CBA_fnc_currentUnit) == _x} count [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]] > 0) && ((this getVariable ['bis_disabled_Ramp',0]) != 1)";
      displayName = "Abrir rampa";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      onlyForPlayer = 0;
      position = "";
      priority = 1.5;
      radius = 15;
      radiusView = 0.2;
      shortcut = "";
      showIn3D = 17;
      showWindow = 0;
      statement = "this animateDoor ['Door_1_source', 1]";
      textToolTip = "Abrir rampa";
      userActionID = 60;
    };

    class Ramp_Close {
      available = 0;
      condition = "(this doorPhase ""Door_1_source"" > 0.5) && (alive this) && ({(call CBA_fnc_currentUnit) == _x} count [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]] > 0) && ((this getVariable ['bis_disabled_Ramp',0]) != 1)";
      displayName = "Cerrar rampa";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      onlyForPlayer = 0;
      position = "";
      priority = 1.5;
      radius = 15;
      radiusView = 0.2;
      shortcut = "";
      showIn3D = 17;
      showWindow = 0;
      statement = "this animateDoor ['Door_1_source', 0]";
      textToolTip = "Cerrar rampa";
      userActionID = 61;
    };
  };
};



/* ------------------------ Y - 32 XI'AN (OTAN - PACÍFICO)  ------------------------ */

class B_T_VTOL_02_infantry_dynamicLoadout_F: O_T_VTOL_02_infantry_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\BLUFOR\data\pictures\B_T_VTOL_02_infantry_dynamicLoadout_F.jpg";
  side = 1;
  faction = "BLU_T_F";
  crew = "B_T_Pilot_F";
  typicalCargo[] = {"B_T_Soldier_F"};
  editorSubcategory = "EdSubcat_Planes";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3","Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_1.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_2.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_3.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_4.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_1.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_2.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_3.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_4.paa"};
    };
  };
};


class B_T_VTOL_02_vehicle_dynamicLoadout_F: O_T_VTOL_02_vehicle_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\BLUFOR\data\pictures\B_T_VTOL_02_vehicle_dynamicLoadout_F.jpg";
  side = 1;
  faction = "BLU_T_F";
  crew = "B_T_Pilot_F";
  typicalCargo[] = {"B_T_Soldier_F"};
  editorSubcategory = "EdSubcat_Planes";
  hiddenSelections[] = {"Camo_1","Camo_2","Camo_3","Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_1.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_2.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_3.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_4.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_1.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_2.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_3.paa","\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_4.paa"};
    };
  };
};
