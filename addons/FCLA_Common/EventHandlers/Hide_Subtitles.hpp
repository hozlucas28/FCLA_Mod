
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Oculta los subtitulos del emisor, mostrados a travez de la funcion
 * "FCLA_Common_fnc_showSubtitles" o el evento personalizado "FCLA_Show_Subtitles".
 *
 * Arguments:
 *            0: Emisor de los subtitulos. <UNIT|OBJECT>
 *
 * Example:
 * ["FCLA_Hide_Subtitles", [Civil_1], player] call CBA_fnc_targetEvent;
 *
 * Note:
 * Si no definiste al emisor en la funcion "FCLA_Common_fnc_showSubtitles" o en
 * el evento personalizado "FCLA_Subtitles", no se podran ocultar los subtitulos.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_Hide_Subtitles", {
  params [["_emitter", objNull, [objNull, teamMemberNull], 0]];
  if (isNull _emitter) exitWith {};
  [_emitter] call FCLA_Common_fnc_hideSubtitles;
}] call CBA_fnc_addEventHandler;
