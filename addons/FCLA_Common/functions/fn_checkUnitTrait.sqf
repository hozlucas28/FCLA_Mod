
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si la unidad cumple con la característica del ACE enviada.
 *
 * Arguments:
 *            0: Unidad a verificar. <UNIT>
 *            1: Característica del ACE. <STRING>
 *                # Características aceptadas: "Medic", "Doctor", "Enginner",
 *                                             "Advanced Enginner" y "EOD".
 *
 * Return Value:
 * ¿Cumple con la característica? <BOOL>
 *
 * Example:
 * [player, "Doctor"] call FCLA_Common_fnc_checkUnitTrait;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_unit", objNull, [objNull, teamMemberNull], 0],
        ["_trait", "", [""], 0]
       ];



//Verificar argumentos.
_trait = toUpper _trait;
_acceptedTraits = ["MEDIC", "DOCTOR", "ENGINNER", "ADVANCED ENGINNER", "EOD"];
if ((isNull _unit) || !(_trait in _acceptedTraits)) exitWith {false};


//Verficar si cumple con la característica.
switch (_trait) do {
  case "MEDIC": {(_unit getVariable ["ACE_Medical_medicClass", 0]) == 1};
  case "DOCTOR": {(_unit getVariable ["ACE_Medical_medicClass", 0]) == 2};
  case "ENGINNER": {(_unit getVariable ["ACE_isEngineer", 0]) == 1};
  case "ADVANCED ENGINNER": {(_unit getVariable ["ACE_isEngineer", 0]) == 2};
  case "EOD": {_unit getVariable ["ACE_isEOD", false];};
};
