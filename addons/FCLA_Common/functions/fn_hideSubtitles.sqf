
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Oculta los subtitulos del emisor, mostrados a travez de la funcion
 * "FCLA_Common_fnc_showSubtitles".
 *
 * Argument:
 *            0: Emisor de los subtitulos. <UNIT|OBJECT>
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la funcion? <BOOL>
 *
 * Example:
 * [Civil_1] call FCLA_Common_fnc_hideSubtitles;
 *
 * Notes:
 * Se recomienda utilizar esta funcion a travez del evento
 * personalizado "FCLA_Hide_Subtitles".
 *
 * Si no definiste al emisor en la funcion "FCLA_Common_fnc_showSubtitles",
 * no se podran ocultar los subtitulos, retornando un false.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_emitter", objNull, [objNull, teamMemberNull], 0]];



//Verificar argumento.
_isNotAnEmitter = !(_emitter getVariable ["FCLA_Emitter", false]);
if ((isNull _emitter) || (_isNotAnEmitter)) exitWith {false};



//Ocultar subtitulos.
_emitter setVariable ["FCLA_Hide_Subtitles", true, true];
true
