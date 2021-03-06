
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si la unidad enviada como argumento es/tiene Zeus.
 *
 * Argument:
 *            0: Unidad a verificar. <UNIT>
 *
 * Return Value:
 * ¿Es/Tiene Zeus? <BOOL>
 *
 * Example:
 * [player] call FCLA_Common_fnc_isCurator;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_unit", objNull, [objNull, teamMemberNull], 0]];
if (isNull _unit) exitWith {false};
!(isNull (getAssignedCuratorLogic _unit));
