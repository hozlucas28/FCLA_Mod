
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna la característica del ACE, enviada como argumento 1.
 *
 * Arguments:
 *            0: Unidad a la que se le asiganara la característica. <UNIT>
 *            1: Característica a asignar. <STRING>
 *                # Características aceptadas: "Medic", "Doctor", "Enginner",
 *                                             "Advanced Enginner" y "EOD".
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 * [player, "Doctor"] call FCLA_Common_fnc_setUnitTrait;
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



//Asignar característica.
switch (_trait) do {
  case "MEDIC": {_unit setVariable ["ACE_Medical_medicClass", 1, true];};
  case "DOCTOR": {_unit setVariable ["ACE_Medical_medicClass", 2, true];};
  case "ENGINNER": {_unit setVariable ["ACE_isEngineer", 1, true];};
  case "ADVANCED ENGINNER": {_unit setVariable ["ACE_isEngineer", 2, true];};
  case "EOD": {_unit setVariable ["ACE_isEOD", true, true];};
};
true
