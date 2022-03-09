
/********************************************************************************|
|                               VEHICULOS - CIVIL                                |
|********************************************************************************/



/* -------------------------- HELICOPTEROS (IDAP) -------------------------- */

class C_IDAP_Heli_Transport_02_F: Heli_Transport_02_base_F {
  class UserActions {
    class DoorL1_Open {
      position = "door_L";
      shortcut = "";
      condition = "(this doorPhase 'Door_Back_L' < 0.5) && (alive this) && (player in this)";
      statement = "this animateDoor ['Door_Back_L', 1];";
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
      condition = "(this doorPhase 'Door_Back_R' < 0.5) && (alive this) && (player in this)";
      statement = "this animateDoor ['Door_Back_R', 1];";
      displayName = "Abrir puerta derecha";
      userActionID = 51;
    };

    class DoorL1_Close: DoorL1_Open {
      condition = "(this doorPhase 'Door_Back_L' > 0.5) && (alive this) && (player in this)";
      statement = "this animateDoor ['Door_Back_L', 0];";
      displayName = "Cerrar puerta izquierda";
      userActionID = 53;
    };

    class DoorR1_Close: DoorL1_Close {
      position = "door_R";
      condition = "(this doorPhase 'Door_Back_R' > 0.5) && (alive this) && (player in this)";
      statement = "this animateDoor ['Door_Back_R', 0];";
      displayName = "Cerrar puerta derecha";
      userActionID = 54;
    };

    class Ramp_Open {
      position = "";
      shortcut = "";
      condition = "(this doorPhase 'CargoRamp_Open' < 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['CargoRamp_Open', 1];";
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
      condition = "(this doorPhase 'CargoRamp_Open' > 0.5) && (alive this) && {(player in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['CargoRamp_Open', 0];";
      displayName = "Cerrar rampa";
      textToolTip = "Cerrar rampa";
      userActionID = 61;
    };
  };
};
