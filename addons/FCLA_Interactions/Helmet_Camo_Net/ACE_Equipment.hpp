
/********************************************************************************|
|          ACCIONES DEL EQUIPAMIENTO - "RED DE CAMUFLAJE PARA EL CASCO"          |
|********************************************************************************/

class FCLA_Put_Arid_Camo_Net {
  icon = "\FCLA_Data\ACE_Actions\Arid_Camo_Net.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionPutAridHCN";
  statement = "[_player] spawn FCLA_Interactions_fnc_statementPutAridHCN;";
  displayName = "Colocar camuflaje<br/>(casco)";
};


class FCLA_Put_Tropical_Camo_Net {
  icon = "\FCLA_Data\ACE_Actions\Tropical_Camo_Net.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionPutTropicalHCN";
  statement = "[_player] spawn FCLA_Interactions_fnc_statementPutTropicalHCN;";
  displayName = "Colocar camuflaje<br/>(casco)";
};


class FCLA_Remove_Camo_Net {
  icon = "\FCLA_Data\ACE_Actions\Remove_Camo_Net.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionRemoveHCN";
  statement = "[_player] spawn FCLA_Interactions_fnc_statementRemoveHCN;";
  displayName = "Quitar camuflaje<br/>(casco)";
};
