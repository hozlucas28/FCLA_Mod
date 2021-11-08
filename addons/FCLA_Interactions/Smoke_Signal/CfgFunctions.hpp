
/********************************************************************************|
|                          FUNCIONES - "SEÑAL DE HUMO"                           |
|********************************************************************************/

class Smoke_Signal {
  class eventHandlerSS {
    file = "\FCLA_Interactions\Smoke_Signal\functions\CBA_Eventhandlers\fn_eventhandler.sqf";
    postInit = 1;
  };

  class firedSSEH {file = "\FCLA_Interactions\Smoke_Signal\functions\BIS_Eventhandlers\fn_Fired.sqf";};

  class conditionActivateSS {file = "\FCLA_Interactions\Smoke_Signal\functions\fn_conditionActivate.sqf";};
  class conditionDesactivateSS {file = "\FCLA_Interactions\Smoke_Signal\functions\fn_conditionDesactivate.sqf";};

  class statementActivateSS {file = "\FCLA_Interactions\Smoke_Signal\functions\fn_statementActivate.sqf";};
  class statementDesactivateSS {file = "\FCLA_Interactions\Smoke_Signal\functions\fn_statementDesactivate.sqf";};
};
