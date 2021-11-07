
/********************************************************************************|
|                  ACCIONES PRINCIPALES - "NÚMERO DE MATRÍCULA"                  |
|********************************************************************************/

class FCLA_Plate_Number {
  icon = "\FCLA_Data\ACE_Actions\Plate_Number.paa";
  condition = "[_target] call FCLA_Interactions_fnc_conditionPlateNumber";
  statement = "[_target] spawn FCLA_Interactions_fnc_statementPlateNumber;";
  displayName = "Número de placa";
};
