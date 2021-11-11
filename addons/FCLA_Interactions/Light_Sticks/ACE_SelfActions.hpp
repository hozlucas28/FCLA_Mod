
/********************************************************************************|
|                      ACCIONES PROPIAS - "PALILLOS DE LUZ"                      |
|********************************************************************************/

class FCLA_Aircraft_Gestures {
  displayName = "Gestos<br/>(aeronaves)";
  icon = "\FCLA_Data\ACE_Actions\Aircraft_Marshall.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionToStartLS";

  class FCLA_Turn_On_Engines {
    condition = "[_player] call FCLA_Interactions_fnc_conditionToStartLS";
    statement = "[_player, 'Acts_JetsMarshallingEnginesOn_in'] spawn FCLA_Interactions_fnc_statementToStartLS;";
    displayName = "Encender motores";
  };

  class FCLA_Turn_Off_Engines {
    condition = "[_player] call FCLA_Interactions_fnc_conditionToStartLS";
    statement = "[_player, 'Acts_JetsMarshallingEnginesOff_in'] spawn FCLA_Interactions_fnc_statementToStartLS;";
    displayName = "Apagar motores";
  };

  class FCLA_Straight {
    condition = "[_player] call FCLA_Interactions_fnc_conditionToStartLS";
    statement = "[_player, 'Acts_JetsMarshallingStraight_in'] spawn FCLA_Interactions_fnc_statementToStartLS;";
    displayName = "Recto";
  };

  class FCLA_Slowly {
    condition = "[_player] call FCLA_Interactions_fnc_conditionToStartLS";
    statement = "[_player, 'Acts_JetsMarshallingSlow_in'] spawn FCLA_Interactions_fnc_statementToStartLS;";
    displayName = "Despacio";
  };

  class FCLA_Right {
    condition = "[_player] call FCLA_Interactions_fnc_conditionToStartLS";
    statement = "[_player, 'Acts_JetsMarshallingRight_in'] spawn FCLA_Interactions_fnc_statementToStartLS;";
    displayName = "Derecha";
  };

  class FCLA_Left {
    condition = "[_player] call FCLA_Interactions_fnc_conditionToStartLS";
    statement = "[_player, 'Acts_JetsMarshallingLeft_in'] spawn FCLA_Interactions_fnc_statementToStartLS;";
    displayName = "Izquierda";
  };

  class FCLA_Stop {
    condition = "[_player] call FCLA_Interactions_fnc_conditionToStartLS";
    statement = "[_player, 'Acts_JetsMarshallingStop_in'] spawn FCLA_Interactions_fnc_statementToStartLS;";
    displayName = "Alto";
  };

  class FCLA_Emergency_Stop {
    condition = "[_player] call FCLA_Interactions_fnc_conditionToStartLS";
    statement = "[_player, 'Acts_JetsMarshallingEmergencyStop_in'] spawn FCLA_Interactions_fnc_statementToStartLS;";
    displayName = "Alto de emergencia";
  };
};
