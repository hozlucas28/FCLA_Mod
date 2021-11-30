
/********************************************************************************|
|                           VEHÍCULOS - INDEPENDIENTES                           |
|********************************************************************************/



/* -------------------------- HELICÓPTEROS (AAF) --------------------------- */

class I_Heli_Transport_02_F: Heli_Transport_02_base_F {
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
      condition = "(this doorPhase 'Door_Back_L' < 0.5) && (alive this) && ((call CBA_fnc_currentUnit) in this)";
      statement = "this animateDoor ['Door_Back_L', 1]";
    };

    class DoorR1_Open: DoorL1_Open {
      userActionID = 51;
      displayName = "$STR_A3_CfgVehicles_UserActions_OpenRdoor0";
      position = "door_R";
      condition = "(this doorPhase 'Door_Back_R' < 0.5) && (alive this) && ((call CBA_fnc_currentUnit) in this)";
      statement = "this animateDoor ['Door_Back_R', 1]";
    };

    class DoorL1_Close: DoorL1_Open {
      userActionID = 53;
      displayName = "$STR_A3_CfgVehicles_UserActions_CloseLdoor0";
      condition = "(this doorPhase 'Door_Back_L' > 0.5) && (alive this) && ((call CBA_fnc_currentUnit) in this)";
      statement = "this animateDoor ['Door_Back_L', 0]";
    };

    class DoorR1_Close: DoorL1_Close {
      userActionID = 54;
      displayName = "$STR_A3_CfgVehicles_UserActions_CloseRdoor0";
      position = "door_R";
      condition = "(this doorPhase 'Door_Back_R' > 0.5) && (alive this) && ((call CBA_fnc_currentUnit) in this)";
      statement = "this animateDoor ['Door_Back_R', 0]";
    };

    class Ramp_Open {
      userActionID = 60;
      displayName = "$STR_ACTION_RAMP_OPEN0";
      textToolTip = "$STR_ACTION_RAMP_OPEN0";
      displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
      position = "";
      condition = "(this doorPhase 'CargoRamp_Open' < 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['CargoRamp_Open', 1]";
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
      condition = "(this doorPhase 'CargoRamp_Open' > 0.5) && (alive this) && {((call CBA_fnc_currentUnit) in [driver this, this turretUnit [0], this turretUnit [3], this turretUnit [4]])} && {((this getVariable ['bis_disabled_Ramp',0]) isEqualTo 0)}";
      statement = "this animateDoor ['CargoRamp_Open', 0]";
    };
  };
};
