
/********************************************************************************|
|                          FUNCIONES - "SEÑAL DE HUMO"                           |
|********************************************************************************/

class Smoke_Signal {
  class itemContextMenuSS {
    file = "\FCLA_Interactions\Smoke_Signal\functions\fn_itemContextMenu.sqf";
    clientInit = 1; 
  };

  class firedSSEH {file = "\FCLA_Interactions\Smoke_Signal\functions\BIS_EventHandlers\fn_Fired.sqf";};
  class conditionActivateSS {file = "\FCLA_Interactions\Smoke_Signal\functions\fn_conditionActivate.sqf";};
  class conditionDesactivateSS {file = "\FCLA_Interactions\Smoke_Signal\functions\fn_conditionDesactivate.sqf";};
};
