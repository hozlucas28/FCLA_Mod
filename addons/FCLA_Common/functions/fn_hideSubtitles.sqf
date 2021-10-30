
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Oculta los subtítulos del emisor, mostrados a travez de la función
 * "FCLA_Common_fnc_showSubtitles".
 *
 * Argument:
 *            0: Emisor de los subtítulos. <UNIT|OBJECT>
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 * [Civil_1] call FCLA_Common_fnc_hideSubtitles;
 *
 * Note:
 * Si no definiste al emisor en la función "FCLA_Common_fnc_showSubtitles",
 * no se podran ocultar los subtítulos, retornando un false.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_emitter", objNull, [objNull, teamMemberNull], 0]];



//Verificar argumento.
_ctrl = _emitter getVariable "FCLA_Subtitles_ctrl";
if ((isNull _emitter) || (isNil "_ctrl")) exitWith {false};


//Ocultar subtítulos.
_caller = call CBA_fnc_currentUnit;
_ctrl ctrlSetStructuredText parseText "";
_emitter setVariable ["FCLA_Hide_Subtitles", true, true];
true