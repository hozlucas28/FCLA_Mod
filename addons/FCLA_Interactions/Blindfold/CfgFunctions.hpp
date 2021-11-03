
/********************************************************************************|
|                           FUNCIONES - "VENDAR OJOS"                            |
|********************************************************************************/

class Blindfold {
  class eventHandlerBlindfold {
    file = "\FCLA_Interactions\Blindfold\functions\CBA_Eventhandlers\fn_eventHandler.sqf";
    postInit = 1;
  };

  class playerEventHandlerBlindfold {
    file = "\FCLA_Interactions\Blindfold\functions\CBA_Eventhandlers\fn_playerEventHandler.sqf";
    postInit = 1;
  };

  class conditionOnBlindfold {file = "\FCLA_Interactions\Blindfold\functions\conditionOn.sqf";};
  class conditionOffBlindfold {file = "\FCLA_Interactions\Blindfold\functions\conditionOff.sqf";};
  
  class statementOnBlindfold {file = "\FCLA_Interactions\Blindfold\functions\statementOn.sqf";};
  class statementOffBlindfold {file = "\FCLA_Interactions\Blindfold\functions\statementOff.sqf";};
};
