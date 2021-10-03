
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_checkACETrait

Description:
    Verifica si la unidad cumple con la característica enviada.

Parameters:
    _unit - Unidad a la que se le verificara la característica.
    _traitToCheck - Tipo de característica a verificar.
                    Características aceptadas: "Medic", "Doctor", "Enginner",
                                               "Advanced_Enginner" ó "EOD".

Return:
    Boolean (true/false).

Examples:
    [player, "Doctor"] call FCLA_Development_fnc_checkACETrait;

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_unit", call CBA_fnc_currentUnit], ["_traitToCheck", ""]];


switch (_traitToCheck) do {
  case "Medic": {(_unit getVariable ["ACE_Medical_medicClass", 0]) == 1;};
  case "Doctor": {(_unit getVariable ["ACE_Medical_medicClass", 0]) == 2;};
  case "Enginner": {(_unit getVariable ["ACE_isEngineer", 0]) == 1;};
  case "Advanced_Enginner": {(_unit getVariable ["ACE_isEngineer", 0]) == 2;};
  case "EOD": {_unit getVariable ["ACE_isEOD", false]};
  default {false};
};
