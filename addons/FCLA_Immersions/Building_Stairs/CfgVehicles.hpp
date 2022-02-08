
/********************************************************************************|
|                      VEHICULOS - "ESCALERAS DE EDIFICIOS"                      |
|********************************************************************************/



/* -------------------------------- VANILLA -------------------------------- */

class Land_MultistoryBuilding_01_F: House_F {
  class UserActions {
    class Go_Stairs_Balcony_Up {
      displayName = "Ir al balcon";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 34;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-17.4587, -17.6226, -21.0173]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);"; 
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-12.3358, -17.6931, -14.6502], (getDir this)+90, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 41;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-12.3358, -17.6931, -14.6502]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-17.4587, -17.6226, -21.0173], getDir this, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 32;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-17.512, -12.0719, -21.0165]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [3.0877, 13.328, 19.2671], getDir this, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 30;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-17.4983, 6.97291, -21.0165]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [3.0877, 13.328, 19.2671], getDir this, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_3 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 30;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [17.9146, 4.36052, -21.0165]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [3.0877, 13.328, 19.2671], getDir this, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 25;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [3.0877, 13.328, 19.2671]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [10.0984, -11.9656, -21.0165], (getDir this)+270, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_MultistoryBuilding_03_F: House_F{
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 27;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-7.1592, -1.62682, -24.2182]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.707389, 11.0242, 25.919], (getDir this)+90, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 31;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.00740668, -13.1225, -25.9038]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.707389, 11.0242, 25.919], (getDir this)+90, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 30;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.707389, 11.0242, 25.919]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-1.57538, 5.14032, -25.9038], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_MultistoryBuilding_04_F: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 40;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-8.81798, -4.26666, -36.3137]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [5.3093, 2.27957, 22.3974], (getDir this)+270, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 41;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [7.08506, -9.41359, -36.3137]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [5.3093, 2.27957, 22.3974], (getDir this)+270, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 25;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [5.3093, 2.27957, 22.3974]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-8.81798, -4.26666, -36.3137], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Shop_City_04_F: House_F {
  class UserActions {
    class Go_Stairs_Balcony_Up_1 {
      displayName = "Ir al balcon";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 12;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [0.293517, -10.1212, -3.96194]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [0.214312, -10.5859, 3.62691], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 14;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [0.214312, -10.5859, 3.62691]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [0.293517, -10.1212, -3.96194], (getDir this)+270, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 11;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [7.99442, 2.70278, -3.96194]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [1.26571, 3.79288, 4.19687], (getDir this)+270, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 11;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-8.07868, -1.69372, -3.96194]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-1.22675, -4.99467, 7.00576], (getDir this)+90, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 8;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [1.25828, 3.82576, 4.19687]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [7.99677, 2.70421, -3.96194], (getDir this), 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 11;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-1.22675, -4.99467, 7.00576]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-8.07868, -1.69372, -3.96194], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Shop_City_05_F: House_F {
  class UserActions {
    class Go_Stairs_Balcony_Up_1 {
      displayName = "Ir al balcon (derecho)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 21;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-9.18351, 15.0192, -7.47618]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-5.20329, 15.4759, -3.70688], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Up_2 {
      displayName = "Ir al balcon (inquierdo)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 21;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-9.18351, 15.0192, -7.47618]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [5.40994, 15.4744, -3.70954], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down_1 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 19;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [5.40994, 15.4744, -3.70954]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-9.18351, 15.0192, -7.47618], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down_2 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 19;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) &&  (([this modelToWorld [-5.20329, 15.4759, -3.70688]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-9.18351, 15.0192, -7.47618], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 18;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [0.983169, 14.6631, -7.47618]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.0615847, 1.69433, 4.11352], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 15;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.332568, -10.4033, -7.30859]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.0615847, 1.69433, 4.11352], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_3 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 15;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [9.85053, 4.94553, -7.47618]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [5.16387, 7.26027, 4.11352], (getDir this)+270, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 6;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.0615847, 1.69433, 4.11352]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [0.983169, 14.6631, -7.47618], (getDir this), 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 6;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.0615847, 1.69433, 4.11352]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.332568, -10.4033, -7.30859], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_3 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 12;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [5.16387, 7.26027, 4.11352]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [9.85053, 4.94553, -7.47618], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Hotel_02_F: House_F {
  class UserActions {
    class Go_Stairs_Balcony_Up_1 {
      displayName = "Ir al balcon";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-6.30013, -0.834253, 0.109366]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-8.70617, -3.60269, 0.0956259], (getDir this)+90, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down_1 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 13;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-8.70617, -3.60269, 0.0956259]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-6.30013, -0.834253, 0.109366], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Up_2 {
      displayName = "Ir al balcon";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 6;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [1.69122, -0.82265, 0.109366]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [5.00811, -3.9505, 0.0956259], (getDir this)+270, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down_2 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [5.00811, -3.9505, 0.0956259]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [1.69122, -0.82265, 0.109366], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Up_3 {
      displayName = "Ir al balcon";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-6.80754, 2.73215, 0.109366]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-8.70757, 5.92076, 0.0935259], (getDir this)+90, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down_3 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 13;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-8.70757, 5.92076, 0.0935259]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-6.80754, 2.73215, 0.109366], (getDir this), 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Up_4 {
      displayName = "Ir al balcon";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 13;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [1.64025, 2.73108, 0.109366]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [4.99385, 5.51732, 0.0935259], (getDir this)+270, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down_4 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [4.99385, 5.51732, 0.0935259]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [1.64025, 2.73108, 0.109366], (getDir this), 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Cathedral_01_F: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir al techo de la torre (derecha)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 13;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [7.59095, -5.00461, -9.37976]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [9.19095, -13.0103, 11.1967], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir al techo de la torre (izquierda)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 13;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-7.58171, -4.67861, -9.37976]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-9.20429, -13.4737, 11.1967], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 33;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [9.19095, -13.0103, 11.1967]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [7.59095, -5.00461, -9.37976], (getDir this)+270, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 33;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-9.20429, -13.4737, 11.1967]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-7.58171, -4.67861, -9.37976], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};



/* --------------------------------- CUPS ---------------------------------- */

class Land_OrlHot: House_F {
  class UserActions {
    class Go_Stairs_Balcony_Up_1 {
      displayName = "Ir al balcon (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 7;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.0255127, 5.48958, -3.83391]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [0.00389099, 5.24121, 0.0881996], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down_1 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [0.00389099, 5.24121, 0.0881996]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.0255127, 5.48958, -3.83391], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Up_2 {
      displayName = "Ir al balcon (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 7;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.0255127, 5.48958, -3.83391]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [5.53221, -3.07261, -0.08393], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down_2 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [5.53221, -3.07261, -0.08393]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.0255127, 5.48958, -3.83391], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Up_3 {
      displayName = "Ir al balcon (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-5.47333, -4.0481, -3.83391]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [4.60422, -4.01637, -0.08393], (getDir this)+270, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down_3 {
      displayName = "Bajar las escaleras (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [4.60422, -4.01637, -0.08393]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-5.47333, -4.0481, -3.83391], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Mil_House: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.05295, 6.09406, -5.1429]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.20322, -5.62192, 3.37913], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 12;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.20322, -5.62192, 3.37913]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.05295, 6.09406, -5.1429], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Mil_House_dam: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.594055, 7.53996, -5.24809]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.689865, -4.41565, 3.40647], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 12;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.689865, -4.41565, 3.40647]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.594055, 7.53996, -5.24809], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_A_MunicipalOffice: House_F {
  class UserActions {
    class Go_Stairs_Balcony_Up_1 {
      displayName = "Ir al balcon (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 23;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.296906, 10.1464, -18.4241]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-3.10941, 11.3457, -11.5891], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Down_1 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 17;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.80463, 10.4239, -11.5891]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.296906, 10.1464, -18.4241], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_HouseB_Tenement: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 25;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-7.86343, 5.70817, -20.7845]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-9.9642, 2.70815, 18.4924], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir al techo (derecho)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 25;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-10.6301, 5.65852, -20.7845]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-9.9642, 2.70815, 18.4924], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 23;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-9.9642, 2.70815, 18.4924]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-7.86343, 5.70817, -20.7845], (getDir this), 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Mil_House_EP1: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir al techo de la torre (derecha)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.05295, 6.09406, -5.1429]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.20322, -5.62192, 3.37913], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 12;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.20322, -5.62192, 3.37913]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.05295, 6.09406, -5.1429], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Mil_House_dam_EP1: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.594055, 7.53996, -5.24809]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.689865, -4.41565, 3.40647], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 12;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.689865, -4.41565, 3.40647]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.594055, 7.53996, -5.24809], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_istan2_01: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-6.05463, 0.171122, -7.36417]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [1.10847, -0.326059, 6.28773], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 15;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [1.10847, -0.326059, 6.28773]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-6.05463, 0.171122, -7.36417], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_istan2_02: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_Right {
      displayName = "Ir a la salida del techo (derecha)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 5;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-1.23128, 0.0799637, -4.14961]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [6.1339, -9.77591, 5.98289], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_Left {
      displayName = "Ir a la salida del techo (izquierda)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 5;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-1.23128, 0.0799637, -4.14961]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [6.48677, 9.72869, 5.98289], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_Right {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 16;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [6.1339, -9.77591, 5.98289]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-1.23128, 0.0799637, -4.14961], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_Left {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 16;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [6.48677, 9.72869, 5.98289]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-1.23128, 0.0799637, -4.14961], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_istan2_03: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 8;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-3.69959, -4.86586, -6.50645]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [1.44265, 0.0844555, 0.690866], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [6.22047, 5.36641, -6.50645]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [1.44265, 0.0844555, 0.690866], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [1.44265, 0.0844555, 0.690866]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-3.69959, -4.86586, -6.50645], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [1.44265, 0.0844555, 0.690866]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [6.22047, 5.36641, -6.50645], (getDir this)+270, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_istan2_03a: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 8;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-3.69959, -4.86586, -6.50645]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [1.44265, 0.0844555, 0.690866], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [6.22047, 5.36641, -6.50645]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [1.44265, 0.0844555, 0.690866], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [1.44265, 0.0844555, 0.690866]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-3.69959, -4.86586, -6.50645], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [1.44265, 0.0844555, 0.690866]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [6.22047, 5.36641, -6.50645], (getDir this)+270, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_istan2_04a: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 10;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-1.19003, -7.04561, -3.96176]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [2.5227, -4.17255, 2.65847], (getDir this), 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 12;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [2.5227, -4.17255, 2.65847]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-1.19003, -7.04561, -3.96176], (getDir this), 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 7;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-7.23273, 2.11963, -3.96176]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [0.417642, 0.67778, 2.65847], (getDir this)+90, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 12;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [0.417642, 0.67778, 2.65847]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-7.23273, 2.11963, -3.96176], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_istan3_hromada: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_Right {
      displayName = "Ir a la azotea (derecha)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 5;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-3.21511, 0.144741, -3.24189]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.51211, 1.85963, 2.64392], (getDir this)+270, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_Left {
      displayName = "Ir a la azotea (izquierda)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 5;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-3.21511, 0.144741, -3.24189]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-4.83307, -3.1396, 2.64392], (getDir this)+90, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_Right {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 11;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.51211, 1.85963, 2.64392]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-3.21511, 0.144741, -3.24189], (getDir this), 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_Left {
      displayName = "Bajar las escaleras";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 11;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-4.83307, -3.1396, 2.64392]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-3.21511, 0.144741, -3.24189], (getDir this), 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_mesto3_istan: House_F {
  class UserActions {
    class Go_Stairs_Balcony_Up_1 {
      displayName = "Ir al balcon";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 8;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-5.65726, 0.187855, -3.22397]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.60907, 4.00632, 0.894894], (getDir this)+90, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Balcony_Up_2 {
      displayName = "Ir al balcon";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 8;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [5.98054, -0.182106, -3.22397]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.60907, 4.00632, 0.894894], (getDir this)+90, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.60907, 4.00632, 0.894894]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [0.52441, 6.06948, -7.29237], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.60907, 4.00632, 0.894894]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [5.98054, -0.182106, -3.22397], (getDir this)+270, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_istan4: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [0.52441, 6.06948, -7.29237]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.43475, -0.334198, 4.75763], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 8;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [2.70084, -2.62489, -4.34236]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.43475, -0.334198, 4.75763], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 14;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.43475, -0.334198, 4.75763]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [0.52441, 6.06948, -7.29237], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 14;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.43475, -0.334198, 4.75763]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [2.70084, -2.62489, -4.34236], (getDir this)+270, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_istan4_big: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 13;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [0.514347, 5.58255, -10.2886]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.4571, -0.432369, 7.78447], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 8;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [2.72283, -2.90434, -7.33857]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.4571, -0.432369, 7.78447], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 20;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.4571, -0.432369, 7.78447]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [0.514347, 5.58255, -10.2886], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 20;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.4571, -0.432369, 7.78447]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [2.72283, -2.90434, -7.33857], (getDir this)+270, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_istan4_big_inverse: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 13;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.521198, 5.60997, -10.2863]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [2.52451, -0.0461845, 7.7867], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 8;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.74318, -2.73177, -7.33634]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [2.52451, -0.0461845, 7.7867], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 20;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [2.52451, -0.0461845, 7.7867]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.521198, 5.60997, -10.2863], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 20;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [2.52451, -0.0461845, 7.7867]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.74318, -2.73177, -7.33634], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_istan4_detaily1: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [0.52441, 6.06948, -7.29237]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.43475, -0.334198, 4.75763], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 8;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [2.70084, -2.62489, -4.34236]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.43475, -0.334198, 4.75763], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 14;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.43475, -0.334198, 4.75763]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [0.52441, 6.06948, -7.29237], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 14;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.43475, -0.334198, 4.75763]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [2.70084, -2.62489, -4.34236], (getDir this)+270, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};


class Land_Dum_istan4_inverse: House_F {
  class UserActions {
    class Go_Stairs_Roof_Up_1 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 9;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-0.390488, 5.68618, -7.28588]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [2.51975, 0.278011, 4.76412], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Up_2 {
      displayName = "Ir a la azotea";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 8;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [-2.6432, -2.52747, -4.33588]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [2.51975, 0.278011, 4.76412], (getDir this)+180, 'Up'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_1 {
      displayName = "Bajar las escaleras (delantero)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 14;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [2.51975, 0.278011, 4.76412]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-0.390488, 5.68618, -7.28588], (getDir this)+180, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };

    class Go_Stairs_Roof_Down_2 {
      displayName = "Bajar las escaleras (atras)";
      displayNameDefault = "<img image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa' size='2' shadow='true'/>";
      priority = 3;
      radius = 14;
      position = "camera";
      showWindow = 1;
      onlyForPlayer = 1;
      shortcut = "";
      condition = "!(this getVariable ['FCLA_Disable_Stairs_Actions', false]) && !((call CBA_fnc_currentUnit) getVariable ['FCLA_inStairs', false]) && (isNull objectParent (call CBA_fnc_currentUnit)) && (((this modelToWorld [2.51975, 0.278011, 4.76412]) distance (getPosATL (call CBA_fnc_currentUnit))) <= 2);";
      statement = "[call CBA_fnc_currentUnit, this, this modelToWorld [-2.6432, -2.52747, -4.33588], (getDir this)+90, 'Down'] spawn FCLA_Immersions_fnc_teleportUnitBS;";
    };
  };
};
