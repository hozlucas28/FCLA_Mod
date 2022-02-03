
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra un mensaje, sin sonido, en la esquina superior derecha.
 *
 * Arguments:
 *            0: Mensaje. <STRING>
 *
 * Example:
 * ["FCLA_Hint_Silent", ["¡Hola mundo (sin sonido)!"], player] call CBA_fnc_targetEvent;
 *
 * Note:
 * Su estructura y metodo de operacion se basa en el hintSilent (script del juego vanilla).
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_Hint_Silent", {
  params ["_text"];
  hintSilent _text;
}] call CBA_fnc_addEventHandler;
