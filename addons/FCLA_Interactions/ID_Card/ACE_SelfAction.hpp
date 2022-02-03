
/********************************************************************************|
|                      ACCIONES PROPIAS - "IDENTIFICACION"                       |
|********************************************************************************/

class FCLA_ID {
  icon = "\FCLA_Data\ACE_Actions\ID_Card.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionSelfID";
  statement = "[_player] spawn FCLA_Interactions_fnc_statementSelfID;";
  displayName = "Identificacion";
};
