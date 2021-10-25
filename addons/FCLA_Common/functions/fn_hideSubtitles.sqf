
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Oculta los subtítulos del emisor, mostrados a travez de la función
 * "FCLA_Common_fnc_showSubtitles".
 *
 * Arguments:
 *            0: Emisor de los subtítulos. <UNIT|OBJECT>
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 *            [player] call FCLA_Common_fnc_hideSubtitles;
 *
 * Note:
 * Si no definiste al emisor en la función "FCLA_Common_fnc_showSubtitles",
 * no se podran ocultar los subtítulos.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_emitter", objNull, [objNull, teamMemberNull], 0]];



//Verificar argumento.
_ctrl = _emitter getVariable "FCLA_Subtitles_ctrl";
if ((isNull _emitter) || (isNil {_ctrl})) exitWith {false};


//Ocultar subtítulos.
_ctrl ctrlSetStructuredText parseText "";
_emitter setVariable ["FCLA_Hide_Subtitles", true, true];
true
