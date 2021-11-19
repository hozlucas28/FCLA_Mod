
/********************************************************************************|
|                  ACCIONES PRINCIPALES - "NÚMERO DE MATRÍCULA"                  |
|********************************************************************************/

class FCLA_Plate_Number {
  condition = "[_target, _player] call FCLA_Interactions_fnc_conditionPlateNumber";
  statement = "[_target, _player] spawn FCLA_Interactions_fnc_statementPlateNumber;";
  displayName = "Matrícula";
};
