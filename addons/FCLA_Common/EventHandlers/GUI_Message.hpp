
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje interactivo en el centro de la pantalla.
 *
 * Arguments:
 *            0: Encabezado. <STRING>
 *            1: Texto del mensaje. <STRING>
 *
 * Example:
 * ["FCLA_GUI_Message", ["Mi Encabezado", "¡Hola mundo! esto es un ejemplo."]] call CBA_fnc_globalEvent;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_GUI_Message", {
  _this spawn {
    params [
            ["_header", "", [""], 0],
            ["_text", "", [""], 0]
           ];
    if ((_header == "") && (_text == "")) exitWith {};
    waitUntil {!isNull findDisplay 46};
    [_text, _header] call BIS_fnc_guiMessage;
  };
}] call CBA_fnc_addEventHandler;
