
/********************************************************************************|
|                             VEHÍCULOS - "VANILLA"                              |
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
