
/********************************************************************************|
|                  FUNCIONES - "RED DE CAMUFLAJE PARA EL CASCO"                  |
|********************************************************************************/

class Helmet_Camo_Net {
  class playerEventHandlerHelmetCamoNet {
    file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_playerEventHandler.sqf";
    postInit = 1;
  };

  class addActionsToUnitHCN {file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_addActionsToUnit.sqf";};
  class canEquipHCN {file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_canEquipCamoNet.sqf";};
  class canRemoveHCN {file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_canRemoveCamoNet.sqf";};
  class equipHCN {file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_equipCamoNet.sqf";};
  class removeHCN {file = "\FCLA_Interactions\Helmet_Camo_Net\functions\fn_removeCamoNet.sqf";};
};
