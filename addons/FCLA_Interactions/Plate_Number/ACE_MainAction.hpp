
/********************************************************************************|
|                  ACCIONES PRINCIPALES - "NUMERO DE MATRICULA"                  |
|********************************************************************************/

class FCLA_Plate_Number {
  condition = "[_target, _player] call FCLA_Interactions_fnc_conditionPlateNumber";
  statement = "[_target, _player] call FCLA_Interactions_fnc_statementPlateNumber;";
  displayName = "Matricula";
};
