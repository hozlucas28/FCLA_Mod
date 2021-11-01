
/********************************************************************************|
|                             ACCIONES PROPIAS - ACE                             |
|********************************************************************************/

class FCLA_Activate_Oxygen {
  icon = "\FCLA_Data\ACE_Actions\Activate_Backpack_Oxygen.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionActivateOxygenCBRN";
  statement = "[_player] spawn FCLA_Interactions_fnc_statementActivateOxygenCBRN;";
  displayName = "Activar oxígeno";
};

class FCLA_Desactivate_Oxygen {
  icon = "\FCLA_Data\ACE_Actions\Desactivate_Backpack_Oxygen.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionDesactivateOxygenCBRN";
  statement = "[_player] spawn FCLA_Interactions_fnc_statementDesactivateOxygenCBRN;";
  displayName = "Desactivar oxígeno";
};
