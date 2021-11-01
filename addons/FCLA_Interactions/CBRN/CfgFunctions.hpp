
/********************************************************************************|
|                               FUNCIONES - "CBRN"                               |
|********************************************************************************/

class CBRN {
  class eventHandlerCBRN {
    file = "\FCLA_Interactions\CBRN\functions\CBA_Eventhandlers\fn_eventhandler.sqf";
    postInit = 1;
  };

  class playerEventHandlerCBRN {
    file = "\FCLA_Interactions\CBRN\functions\CBA_Eventhandlers\fn_playerEventHandler.sqf";
    postInit = 1;
  };

  class itemContextMenuBackpackCBRN {
    file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_itemContextMenu.sqf";
    postInit = 1;
  };

  class conditionActivateOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\fn_conditionActivateOxygen.sqf";};
  class conditionDesactivateOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\fn_conditionDesactivateOxygen.sqf";};
  class conditionCheckOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_condition.sqf";};

  class statementActivateOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\fn_statementActivateOxygen.sqf";};
  class statementDesactivateOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\fn_statementDesactivateOxygen.sqf";};
  class statementCheckOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_statement.sqf";};
};
