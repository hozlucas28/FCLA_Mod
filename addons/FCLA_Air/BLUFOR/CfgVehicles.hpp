
/********************************************************************************|
|                               VEHICULOS - BLUFOR                               |
|********************************************************************************/



/* -------------------------- HELICOPTEROS (OTAN) -------------------------- */

class B_Heli_Transport_01_F: Heli_Transport_01_base_F {
  class UserActions {
    class DoorL1_Open {
      shortcut = "";
      position = "door_L";
      condition = "(this doorPhase 'door_L' < 0.5) && (alive this) && (player in this)";
      statement = "this animateDoor ['door_L', 1];";
      displayName = "Abrir puerta izquierda";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      radius = 2.5;
      showIn3D = 17;
      priority = 0.5;
      available = 0;
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
      userActionID = 53;
      displayName = "Cerrar puerta izquierda";
      condition = "(this doorPhase 'door_L' > 0.5) && (alive this) && (player in this)";
      statement = "this animateDoor ['door_L', 0];";
    };

    class DoorR1_Close: DoorL1_Close {
      position = "door_R";
      condition = "(this doorPhase 'door_R' > 0.5) && (alive this) && (player in this)";
      statement = "this animateDoor ['door_R', 0];";
      displayName = "Cerrar puerta derecha";
      userActionID = 54;
    };
  };

  class TextureSources {
    class Black {
      author = "Bohemia Interactive";
      displayName = "Negro";
      textures[] = {"\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext01_CO.paa", "\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext02_CO.paa"};
    };

    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      textures[] = {"\FCLA_Air\BLUFOR\data\B_Heli_Transport_01_F_Grey_1.paa", "\FCLA_Air\BLUFOR\data\B_Heli_Transport_01_F_Grey_2.paa"};
    };

    class Green {
      author = "Bohemia Interactive";
      displayName = "Verde";
      textures[] = {"\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext01_BLUFOR_CO.paa", "\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext02_BLUFOR_CO.paa"};
    };
  };
};


class B_Heli_Transport_Medvac_01_F: B_Heli_Transport_01_F {
  author = "hozlucas28";
  displayName = "UH-80 Ghost Hawk (medico)";
  editorPreview = "\FCLA_Air\BLUFOR\data\pictures\B_Heli_Transport_Medvac_01_F.jpg";
  hiddenSelections[] = {"camo1","camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\BLUFOR\data\B_Heli_Transport_Medvac_01_F.paa", "\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext02_CO.paa"};
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Black_Medvac {
      author = "hozlucas28";
      displayName = "Negro (medico)";
      textures[] = {"\FCLA_Air\BLUFOR\data\B_Heli_Transport_Medvac_01_F.paa", "\A3\Air_F_Beta\Heli_Transport_01\Data\Heli_Transport_01_ext02_CO.paa"};
    };
  };
};


class B_Heli_Transport_03_F: Heli_Transport_03_base_F {
  waterLeakiness = 0.1;
  class UserActions {
    class Ramp_Open {
      position = "";
      shortcut = "";
      condition = "(this doorPhase 'Door_rear_source' < 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_rear_source', 1];";
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

    class Ramp_Close: Ramp_Open {
      condition = "(this doorPhase 'Door_rear_source' > 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_rear_source', 0];";
      displayName = "Cerrar rampa";
      textToolTip = "Cerrar rampa";
      userActionID = 61;
    };

    class Right_Door_Open: Ramp_Open {
      condition = "(this doorPhase 'Door_R_source' < 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_R_source', 1];";
      displayName = "Abrir puerta derecha";
      textToolTip = "Abrir puerta derecha";
    };

    class Right_Door_Close: Ramp_Close {
      condition = "(this doorPhase 'Door_R_source' > 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_R_source', 0];";
      displayName = "Cerrar puerta derecha";
      textToolTip = "Cerrar puerta derecha";
    };

    class Left_Door_Open: Ramp_Open {
      condition = "(this doorPhase 'Door_L_source' < 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_L_source', 1];";
      displayName = "Abrir puerta izquierda";
      textToolTip = "Abrir puerta izquierda";
    };

    class Left_Door_Close: Ramp_Close {
      condition = "(this doorPhase 'Door_L_source' > 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_L_source', 0];";
      displayName = "Cerrar puerta izquierda";
      textToolTip = "Cerrar puerta izquierda";
    };
  };

  class TextureSources {
    class Black {
      author = "Bohemia Interactive";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\A3\Air_F_Heli\Heli_Transport_03\Data\Heli_Transport_03_ext01_black_CO.paa", "\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_black_co.paa"};
    };

    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"\FCLA_Air\BLUFOR\data\B_Heli_Transport_03_F_Grey_1.paa", "\FCLA_Air\BLUFOR\data\B_Heli_Transport_03_F_Grey_2.paa"};
    };

    class Green {
      author = "Bohemia Interactive";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext01_co.paa", "\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_co.paa"};
    };
  };
};


class B_Heli_Transport_03_unarmed_F: Heli_Transport_03_unarmed_base_F {
  waterLeakiness = 0.1;
  class UserActions {
    class Ramp_Open {
      position = "";
      shortcut = "";
      condition = "(this doorPhase 'Door_rear_source' < 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_rear_source', 1];";
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

    class Ramp_Close: Ramp_Open {
      condition = "(this doorPhase 'Door_rear_source' > 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_rear_source', 0];";
      displayName = "Cerrar rampa";
      textToolTip = "Cerrar rampa";
      userActionID = 61;
    };

    class Right_Door_Open: Ramp_Open {
      condition = "(this doorPhase 'Door_R_source' < 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_R_source', 1];";
      displayName = "Abrir puerta derecha";
      textToolTip = "Abrir puerta derecha";
    };

    class Right_Door_Close: Ramp_Close {
      condition = "(this doorPhase 'Door_R_source' > 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_R_source', 0];";
      displayName = "Cerrar puerta derecha";
      textToolTip = "Cerrar puerta derecha";
    };

    class Left_Door_Open: Ramp_Open {
      condition = "(this doorPhase 'Door_L_source' < 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_L_source', 1];";
      displayName = "Abrir puerta izquierda";
      textToolTip = "Abrir puerta izquierda";
    };

    class Left_Door_Close: Ramp_Close {
      condition = "(this doorPhase 'Door_L_source' > 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [1], this turretUnit [2]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['Door_L_source', 0];";
      displayName = "Cerrar puerta izquierda";
      textToolTip = "Cerrar puerta izquierda";
    };
  };

  class TextureSources {
    class Black {
      author = "Bohemia Interactive";
      displayName = "Negro";
      factions[] = {};
      textures[] = {"\A3\Air_F_Heli\Heli_Transport_03\Data\Heli_Transport_03_ext01_black_CO.paa", "\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_black_co.paa"};
    };

    class Grey {
      author = "hozlucas28";
      displayName = "Gris";
      factions[] = {};
      textures[] = {"\FCLA_Air\BLUFOR\data\B_Heli_Transport_03_F_Grey_1.paa", "\FCLA_Air\BLUFOR\data\B_Heli_Transport_03_F_Grey_2.paa"};
    };

    class Green {
      author = "Bohemia Interactive";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext01_co.paa", "\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_co.paa"};
    };
  };
};



/* -------------------------- HELICOPTEROS (CTRG) -------------------------- */

class B_CTRG_Heli_Transport_01_Sand_F: Heli_Transport_01_base_F {
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
      priority = 0.5;
      available = 0;
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


class B_CTRG_Heli_Transport_01_tropic_F: Heli_Transport_01_base_F {
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
      priority = 0.5;
      available = 0;
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



/* ----------------------- AVIONES (OTAN - PACIFICO) ----------------------- */

class B_T_VTOL_01_vehicle_F: VTOL_01_vehicle_base_F {
  class UserActions {
    class Ramp_Open {
      position = "";
      shortcut = "";
      condition = "(this doorPhase ""Door_1_source"" < 0.5) && (alive this) && ({player == _x} count [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]] > 0) && ((this getVariable ['bis_disabled_Ramp',0]) != 1)";
      statement = "this animateDoor ['Door_1_source', 1];";
      displayName = "Abrir rampa";
      textToolTip = "Abrir rampa";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      radius = 15;
      priority = 1.5;
      showIn3D = 17;
      available = 0;
      radiusView = 0.2;
      showWindow = 0;
      userActionID = 60;
      onlyForPlayer = 0;
    };

    class Ramp_Close {
      position = "";
      shortcut = "";
      condition = "(this doorPhase ""Door_1_source"" > 0.5) && (alive this) && ({player == _x} count [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]] > 0) && ((this getVariable ['bis_disabled_Ramp',0]) != 1)";
      statement = "this animateDoor ['Door_1_source', 0];";
      displayName = "Cerrar rampa";
      textToolTip = "Cerrar rampa";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      radius = 15;
      available = 0;
      priority = 1.5;
      showIn3D = 17;
      radiusView = 0.2;
      showWindow = 0;
      userActionID = 61;
      onlyForPlayer = 0;
    };
  };
};


class B_T_VTOL_02_infantry_dynamicLoadout_F: O_T_VTOL_02_infantry_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\BLUFOR\data\pictures\B_T_VTOL_02_infantry_dynamicLoadout_F.jpg";
  typicalCargo[] = {"B_T_Soldier_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3", "Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_1.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_2.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_3.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_4.paa"};
  crew = "B_T_Pilot_F";
  faction = "BLU_T_F";
  editorSubcategory = "EdSubcat_Planes";
  side = 1;
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_1.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_2.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_3.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_4.paa"};
    };
  };
};


class B_T_VTOL_02_vehicle_dynamicLoadout_F: O_T_VTOL_02_vehicle_dynamicLoadout_F {
  author = "hozlucas28";
  editorPreview = "\FCLA_Air\BLUFOR\data\pictures\B_T_VTOL_02_vehicle_dynamicLoadout_F.jpg";
  typicalCargo[] = {"B_T_Soldier_F"};
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3", "Camo_4"};
  hiddenSelectionsTextures[] = {"\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_1.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_2.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_3.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_4.paa"};
  crew = "B_T_Pilot_F";
  faction = "BLU_T_F";
  editorSubcategory = "EdSubcat_Planes";
  side = 1;
  scope = 2;
  scopeCurator = 2;

  class TextureSources {
    class Green {
      author = "hozlucas28";
      displayName = "Verde";
      factions[] = {};
      textures[] = {"\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_1.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_2.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_3.paa", "\FCLA_Air\BLUFOR\data\B_T_VTOL_02_dynamicLoadout_F_Green_4.paa"};
    };
  };
};
