
/********************************************************************************|
|                 FUNCIONES - "BATERÍA PARA LA VISIÓN NOCTURNA"                  |
|********************************************************************************/

class Night_Vision_Battery {
  class playerEventHandlersNVB {
    file = "\FCLA_Interactions\Night_Vision_Battery\functions\CBA_Eventhandlers\fn_playerEventHandlers.sqf";
    postInit = 1;
  };

  class conditionRechargeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_conditionRecharge.sqf";};
  class conditionStartConsumeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_conditionStartConsume.sqf";};

  class statementRechargeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_statementRecharge.sqf";};
  class statementStartConsumeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_statementStartConsume.sqf";};
  class statementStopConsumeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_statementStopConsume.sqf";};
};
