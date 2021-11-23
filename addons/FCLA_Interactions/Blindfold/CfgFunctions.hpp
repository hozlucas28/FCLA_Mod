
/********************************************************************************|
|                              FUNCIONES - "VENDA"                               |
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

  class respawnBlindfoldEH {file = "\FCLA_Interactions\Blindfold\functions\BIS_Eventhandlers\fn_Respawn.sqf";};

  class conditionOnBlindfold {file = "\FCLA_Interactions\Blindfold\functions\fn_conditionOn.sqf";};
  class conditionOffBlindfold {file = "\FCLA_Interactions\Blindfold\functions\fn_conditionOff.sqf";};

  class statementOnBlindfold {file = "\FCLA_Interactions\Blindfold\functions\fn_statementOn.sqf";};
  class statementOffBlindfold {file = "\FCLA_Interactions\Blindfold\functions\fn_statementOff.sqf";};
};
