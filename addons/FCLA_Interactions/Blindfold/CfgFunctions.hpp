
/********************************************************************************|
|                              FUNCIONES - "VENDA"                               |
|********************************************************************************/

class Blindfold {
  class setPlayerEventHandlerBlindfold {
    file = "\FCLA_Interactions\Blindfold\functions\CBA_EventHandlers\fn_setPlayerEventHandler.sqf";
    clientInit = 1;
  };

  class respawnBlindfoldEH {file = "\FCLA_Interactions\Blindfold\functions\BIS_EventHandlers\fn_Respawn.sqf";};
  class conditionOnBlindfold {file = "\FCLA_Interactions\Blindfold\functions\fn_conditionOn.sqf";};
  class statementOnBlindfold {file = "\FCLA_Interactions\Blindfold\functions\fn_statementOn.sqf";};
  class conditionOffBlindfold {file = "\FCLA_Interactions\Blindfold\functions\fn_conditionOff.sqf";};
  class statementOffBlindfold {file = "\FCLA_Interactions\Blindfold\functions\fn_statementOff.sqf";};
};
