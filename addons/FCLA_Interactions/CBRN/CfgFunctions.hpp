
/********************************************************************************|
|                               FUNCIONES - "CBRN"                               |
|********************************************************************************/

class CBRN {
  class setPlayerEventHandlerCBRN {
    file = "\FCLA_Interactions\CBRN\functions\CBA_EventHandlers\fn_setPlayerEventHandler.sqf";
    postInit = 1;
  };

  class itemContextMenuBackpackCBRN {
    file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_itemContextMenu.sqf";
    postInit = 1;
  };

  class itemContextMenuChemicalDetectorCBRN {
    file = "\FCLA_Interactions\CBRN\functions\Chemical_Detector\fn_itemContextMenu.sqf";
    postInit = 1;
  };

  class itemContextMenuMaskCBRN {
    file = "\FCLA_Interactions\CBRN\functions\Mask\fn_itemContextMenu.sqf";
    postInit = 1;
  };

  class addActionRechargeOxygenCBRN {
    file = "\FCLA_Interactions\CBRN\functions\Oxygen_Tanks\fn_addAction.sqf";
    postInit = 1;
  };

  class killedCBRNEH {file = "\FCLA_Interactions\CBRN\functions\BIS_EventHandlers\fn_Killed.sqf";};
  class respawnCBRNEH {file = "\FCLA_Interactions\CBRN\functions\BIS_EventHandlers\fn_Respawn.sqf";};

  class conditionActivateOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_conditionActivateOxygen.sqf";};
  class conditionDesactivateOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_conditionDesactivateOxygen.sqf";};
  class conditionCheckOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_conditionCheckOxygen.sqf";};
  class conditionTurnOnChemicalDetectorCBRN {file = "\FCLA_Interactions\CBRN\functions\Chemical_Detector\fn_conditionTurnOn.sqf";};
  class conditionTurnOffChemicalDetectorCBRN {file = "\FCLA_Interactions\CBRN\functions\Chemical_Detector\fn_conditionTurnOff.sqf";};
  class conditionRechargeOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Oxygen_Tanks\fn_condition.sqf";};

  class statementActivateOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_statementActivateOxygen.sqf";};
  class statementDesactivateOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_statementDesactivateOxygen.sqf";};
  class statementCheckOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_statementCheckOxygen.sqf";};
  class statementTurnOnChemicalDetectorCBRN {file = "\FCLA_Interactions\CBRN\functions\Chemical_Detector\fn_statementTurnOn.sqf";};
  class statementTurnOffChemicalDetectorCBRN {file = "\FCLA_Interactions\CBRN\functions\Chemical_Detector\fn_statementTurnOff.sqf";};
  class statementRechargeOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Oxygen_Tanks\fn_statement.sqf";};
};
