
/********************************************************************************|
|                 FUNCIONES - "BATERÍA PARA LA VISIÓN NOCTURNA"                  |
|********************************************************************************/

class Night_Vision_Battery {
  class playerEventHandlerNVB {
    file = "\FCLA_Interactions\Night_Vision_Battery\functions\CBA_Eventhandlers\fn_playerEventHandler.sqf";
    postInit = 1;
  };

  class conditionRechargeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_conditionRecharge.sqf";};
  class conditionStopConsumeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_conditionStopConsume.sqf";};

  class statementRechargeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_statementRecharge.sqf";};
  class statementStartConsumeNVB {file = "\FCLA_Interactions\Night_Vision_Battery\functions\fn_statementStartConsume.sqf";};
};
