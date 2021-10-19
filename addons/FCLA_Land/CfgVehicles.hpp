
/***************************************************************************|
|                            VEHÍCULOS - GENERAL                            |
|***************************************************************************/

class B_APC_Tracked_01_CRV_F {
  editorCategory = "FCLA_Category_Side";
  editorSubcategory = "FCLA_subCategory_Armored";

  class UserActions {
    class Plow_Down {
      userActionID = 50;
      displayName = "Bajar pala";
      displayNameDefault = "";
      radius = 2.5;
      radiusView = 0.2;
      showIn3D = 17;
      available = 0;
      priority = 0.5;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "(this animationPhase 'MovePlow' < 0.5) && (alive this) && (((driver this) isEqualTo player) || ((commander this) isEqualTo player))";
      statement = "this animate ['MovePlow', 1]";
    };

    class Plow_Up: Plow_Down {
      userActionID = 51;
      displayName = "Subir pala";
      condition = "(this animationPhase 'MovePlow' > 0.5) && (alive this) && (((driver this) isEqualTo player) || ((commander this) isEqualTo player))";
      statement = "this animate ['MovePlow', 0]";
    };
  };
};


class B_T_APC_Tracked_01_CRV_F {
  editorCategory = "FCLA_Category_Side";
  editorSubcategory = "FCLA_subCategory_Armored";

  class UserActions {
    class Plow_Down {
      userActionID = 50;
      displayName = "Bajar pala";
      displayNameDefault = "";
      radius = 2.5;
      radiusView = 0.2;
      showIn3D = 17;
      available = 0;
      priority = 0.5;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "(this animationPhase 'MovePlow' < 0.5) && (alive this) && (((driver this) isEqualTo player) || ((commander this) isEqualTo player))";
      statement = "this animate ['MovePlow', 1]";
    };

    class Plow_Up: Plow_Down {
      userActionID = 51;
      displayName = "Subir pala";
      condition = "(this animationPhase 'MovePlow' > 0.5) && (alive this) && (((driver this) isEqualTo player) || ((commander this) isEqualTo player))";
      statement = "this animate ['MovePlow', 0]";
    };
  };
};
