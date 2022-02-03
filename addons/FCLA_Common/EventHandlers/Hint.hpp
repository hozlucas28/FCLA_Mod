
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra un mensaje, con sonido, en la esquina superior derecha.
 *
 * Arguments:
 *            0: Mensaje. <STRING>
 *
 * Example:
 * ["FCLA_Hint", ["¡Hola mundo (con sonido)!"], player] call CBA_fnc_targetEvent;
 *
 * Note:
 * Su estructura y metodo de operacion se basa en el hint (script del juego vanilla).
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_Hint", {
  params ["_text"];
  hint _text;
}] call CBA_fnc_addEventHandler;
