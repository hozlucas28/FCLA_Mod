
/********************************************************************************|
|                    ACCIONES PRINCIPALES - "IDENTIFICACIÓN"                     |
|********************************************************************************/

class FCLA_ID {
  icon = "\FCLA_Data\ACE_Actions\ID_Card.paa";
  condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalID";
  statement = "[_target, _player] spawn FCLA_Interactions_fnc_statementExternalID;";
  displayName = "Ver identificación";
};
