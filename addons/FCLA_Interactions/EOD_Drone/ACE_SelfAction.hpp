
/********************************************************************************|
|                         ACCIONES PROPIAS - "DRON EOD"                          |
|********************************************************************************/

class FCLA_Defuse {
  condition = "[_target, _player] call FCLA_Interactions_fnc_conditionEODDron";
  statement = "[_target, _player] call FCLA_Interactions_fnc_statementEODDron;";
  displayName = "Desactivar";
  modifierFunction = "_this call FCLA_Interactions_fnc_modifierFunctionEODDron;";
};
