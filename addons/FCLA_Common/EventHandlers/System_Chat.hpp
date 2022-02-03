
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra un mensaje en el canal del sistema (chat del juego).
 *
 * Arguments:
 *            0: Mensaje. <STRING>
 *
 * Example:
 * ["FCLA_System_Chat", ["¡Mensaje de sistema, esto es una prueba!"], player] call CBA_fnc_targetEvent;
 *
 * Note:
 * Su estructura y metodo de operacion se basa en el systemChat (script del juego vanilla).
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_System_Chat", {
  params [["_text", "", [""], 0]];
  if (_text == "") exitWith {};
  systemChat _text;
}] call CBA_fnc_addEventHandler;
