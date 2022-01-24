
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Oculta los subtítulos del emisor, mostrados a travez de la función
 * "FCLA_Common_fnc_showSubtitles" ó el evento personalizado "FCLA_Show_Subtitles".
 *
 * Arguments:
 *            0: Emisor de los subtítulos. <UNIT|OBJECT>
 *
 * Example:
 * ["FCLA_Hide_Subtitles", [Civil_1], player] call CBA_fnc_targetEvent;
 *
 * Note:
 * Si no definiste al emisor en la función "FCLA_Common_fnc_showSubtitles" ó en
 * el evento personalizado "FCLA_Subtitles", no se podran ocultar los subtítulos.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_Hide_Subtitles", {
  params [["_emitter", objNull, [objNull, teamMemberNull], 0]];
  if (isNull _emitter) exitWith {};
  [_emitter] call FCLA_Common_fnc_hideSubtitles;
}] call CBA_fnc_addEventHandler;
