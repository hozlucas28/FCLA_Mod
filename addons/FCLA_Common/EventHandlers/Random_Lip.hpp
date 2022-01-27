
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Comienza/Detiene el movimiento de los labios de la unidad, como si
 * estuviese hablando.
 *
 * Arguments:
 *            0: Unidad. <UNIT>
 *            1: ¿Mover labios?. <BOOL>
 *
 * Example:
 * ["FCLA_Random_Lip", [player, true]] call CBA_fnc_globalEvent;
 *
 * Note:
 * Su estructura y método de operación se basa en el setRandomLip (script del juego vanilla).
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_Random_Lip", {
  params [
          ["_emitter", objNull, [objNull, teamMemberNull], 0],
          ["_moveLip", true, [true], 0]
         ];
  if (isNull _emitter) exitWith {};
  _emitter setRandomLip _moveLip;
}] call CBA_fnc_addEventHandler;
