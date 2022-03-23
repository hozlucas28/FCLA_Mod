
/********************************************************************************|
|                       ACCIONES DEL EQUIPAMIENTO - "CBRN"                       |
|********************************************************************************/

class FCLA_Activate_Oxygen {
  icon = "\FCLA_Data\ACE_Actions\Activate_Backpack_Oxygen.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionActivateOxygenCBRN";
  statement = "[_player] call FCLA_Interactions_fnc_statementActivateOxygenCBRN;";
  displayName = "Activar oxigeno";
};


class FCLA_Desactivate_Oxygen {
  icon = "\FCLA_Data\ACE_Actions\Deactivate_Backpack_Oxygen.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionDesactivateOxygenCBRN";
  statement = "[_player] call FCLA_Interactions_fnc_statementDesactivateOxygenCBRN;";
  displayName = "Desactivar oxigeno";
};
