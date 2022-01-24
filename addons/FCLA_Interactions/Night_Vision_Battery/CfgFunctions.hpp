
/********************************************************************************|
|                 FUNCIONES - "BATERÍA PARA LA VISIÓN NOCTURNA"                  |
|********************************************************************************/

class Night_Vision_Battery {
  class setPlayerEventHandlersNVB {
    file = "\FCLA_Interactions\Night_Vision_Battery\functions\CBA_EventHandlers\fn_setPlayerEventHandlers.sqf";
    clientInit = 1;
  };

  class conditionRechargeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_conditionRecharge.sqf";};
  class statementRechargeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_statementRecharge.sqf";};
  class statementStopConsumeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_statementStopConsume.sqf";};
  class conditionStartConsumeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_conditionStartConsume.sqf";};
  class statementStartConsumeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_statementStartConsume.sqf";};
};
