
/********************************************************************************|
|                               FUNCIONES - "CBRN"                               |
|********************************************************************************/

class CBRN {
  class eventHandlerCBRN {
    file = "\FCLA_Interactions\CBRN\functions\fn_addEventhandlers.sqf";
    postInit = 1;
  };

  class playerEventHandlerCBRN {
    file = "\FCLA_Interactions\CBRN\functions\fn_playerEventHandler.sqf";
    postInit = 1;
  };

  class addItemContextMenuToMaskCBRN {
    file = "\FCLA_Interactions\CBRN\functions\Mask\fn_addItemContextMenu.sqf";
    postInit = 1;
  };

  class addItemContextMenuToChemicalDetectorCBRN {
    file = "\FCLA_Interactions\CBRN\functions\Chemical_Detector\fn_addItemContextMenu.sqf";
    postInit = 1;
  };

  class activateOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_activateOxygen.sqf";};
  class addActionsToBackpackCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_addActions.sqf";};
  class desactivateOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_desactivateOxygen.sqf";};
  class showOxygenSupplyCBRN {file = "\FCLA_Interactions\CBRN\functions\Backpack\fn_showOxygenSupply.sqf";};
  class canCheckChemicalExposureCBRN {file = "\FCLA_Interactions\CBRN\functions\Chemical_Detector\fn_canCheckChemicalExposure.sqf";};
  class playDetectorSoundCBRN {file = "\FCLA_Interactions\CBRN\functions\Chemical_Detector\fn_playDetectorSound.sqf";};
  class showDetectorCBRN {file = "\FCLA_Interactions\CBRN\functions\Chemical_Detector\fn_showDetector.sqf";};
  class showExposureCBRN {file = "\FCLA_Interactions\CBRN\functions\Chemical_Detector\fn_showExposure.sqf";};
  class turnOffDetectorCBRN {file = "\FCLA_Interactions\CBRN\functions\Chemical_Detector\fn_turnOffDetector.sqf";};
  class addActionsToOxygenTankCBRN {file = "\FCLA_Interactions\CBRN\functions\Oxygen_Tank\fn_addActions.sqf";};
  class rechargeOxygenCBRN {file = "\FCLA_Interactions\CBRN\functions\Oxygen_Tank\fn_rechargeOxygen.sqf";};
  class addActionsToShowerCBRN {file = "\FCLA_Interactions\CBRN\functions\Shower\fn_addActions.sqf";};
  class showWaterSupplyCBRN {file = "\FCLA_Interactions\CBRN\functions\Shower\fn_showWaterSupply.sqf";};
  class switchShowerCBRN {file = "\FCLA_Interactions\CBRN\functions\Shower\fn_Switch.sqf";};
  class turnOffShowerCBRN {file = "\FCLA_Interactions\CBRN\functions\Shower\fn_turnOff.sqf";};
  class turnOnShowerCBRN {file = "\FCLA_Interactions\CBRN\functions\Shower\fn_turnOn.sqf";};
  class killedCBRNEH {file = "\FCLA_Interactions\CBRN\functions\eventhandlers\fn_Killed.sqf";};
  class respawnCBRNEH {file = "\FCLA_Interactions\CBRN\functions\eventhandlers\fn_Respawn.sqf";};
};
