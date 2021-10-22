
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si la unidad cumple con la característica del ACE enviada.
 *
 * Arguments:
 *            0: Unidad a verificar. <UNIT>
 *            1: Característica del ACE. <"Medic"|"Doctor"|"Enginner"|"Advanced Enginner"|"EOD">
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
_acceptedTraits = ["Medic", "Doctor", "Enginner", "Advanced Enginner", "EOD"];
if ((isNull _unit) || !(_trait in _acceptedTraits)) exitWith {false};



//Verficar si cumple con la característica.
switch (_trait) do {
  case "Medic": {(_unit getVariable ["ACE_Medical_medicClass", 0]) == 1};
  case "Doctor": {(_unit getVariable ["ACE_Medical_medicClass", 0]) == 2};
  case "Enginner": {(_unit getVariable ["ACE_isEngineer", 0]) == 1};
  case "Advanced Enginner": {(_unit getVariable ["ACE_isEngineer", 0]) == 2};
  case "EOD": {_unit getVariable ["ACE_isEOD", false];};
};
