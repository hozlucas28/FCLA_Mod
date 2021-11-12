
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Retorna el nombre en limpio de la unidad, es decir, sin su rango.
 *
 * Argument:
 *            0: Unidad. <UNIT>
 *
 * Return Value:
 * Nombre. <STRING>
 *
 * Example:
 * [player] call FCLA_Common_fnc_getCleanName;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_unit", objNull, [objNull, teamMemberNull], 0]];



//Eliminar rango del nombre original.
_originalName = name _unit;
_currentRank = [_originalName, _originalName find ["[", 0], _originalName find ["]", 0]] call CBA_fnc_substring;
_nameWithoutRank = [_originalName, _currentRank, ""] call CBA_fnc_replace;


//Retornar nombre en limpio.
[_nameWithoutRank] call CBA_fnc_trim;
