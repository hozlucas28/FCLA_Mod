
/********************************************************************************|
|                  ACCIONES PRINCIPALES - "NÚMERO DE MATRÍCULA"                  |
|********************************************************************************/

class FCLA_See_Shared_Map {
  icon = "\FCLA_Data\ACE_Actions\Map.paa";
  condition = "[_target, _player] call FCLA_Interactions_fnc_conditionToSeeSM";
  statement = "[_target, _player] spawn FCLA_Interactions_fnc_statementToSeeSM;";
  displayName = "Ver mapa";
};
