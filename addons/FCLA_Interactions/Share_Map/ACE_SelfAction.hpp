
/********************************************************************************|
|                      ACCIONES PROPIAS - "IDENTIFICACIÓN"                       |
|********************************************************************************/

class FCLA_Share_Map {
  icon = "\FCLA_Data\ACE_Actions\Map.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionToShareSM";
  statement = "[_player] spawn FCLA_Interactions_fnc_statementToShareSM;";
  displayName = "Compartir mapa";
};
