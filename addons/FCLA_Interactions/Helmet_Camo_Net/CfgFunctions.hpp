
/********************************************************************************|
|                  FUNCIONES - "RED DE CAMUFLAJE PARA EL CASCO"                  |
|********************************************************************************/

class Helmet_Camo_Net {
  class playerEventHandlerHCN {
    file = "\FCLA_Interactions\Helmet_Camo_Net\functions\CBA_Eventhandlers\fn_playerEventHandler.sqf";
    postInit = 1;
  };

  class conditionPutAridHCN {file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_conditionPutArid.sqf";};
  class conditionPutTropicalHCN {file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_conditionPutTropical.sqf";};
  class conditionRemoveHCN {file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_conditionRemove.sqf";};

  class statementPutAridHCN {file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_statementPutArid.sqf";};
  class statementPutTropicalHCN {file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_statementPutTropical.sqf";};
  class statementRemoveHCN {file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_statementRemove.sqf";};
};
