
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un efecto que simula el trastorno por estrés postraumático en la
 * unidad, enviada como argumento 0.
 *
 * Arguments:
 *            0: Unidad a la que se le aplicara el trastorno. <UNIT>
 *            1: ¿Llora?, opcional. <BOOL> (default: true)
 *            2: ¿Escucha voces?, opcional. <BOOL> (default: true)
 *            3: ¿Pensamientos no deseados?, opcional. <BOOL> (default: true)
 *            4: ¿Movimientos involuntarios?, opcional. <BOOL> (default: true)
 *
 * Examples:
 *             //Opcional sin definir.
 *             ["FCLA_PTSD", [player], player] call CBA_fnc_targetEvent;
 *
 *             //Opcional definidos.
 *             ["FCLA_PTSD", [player, true, false, false, true], player] call CBA_fnc_targetEvent;
 *
 * Notes:
 * Los síntomas (argumento 1 al 4) se haran notar cada 10 minutos,
 * 12 minutos ó 15 minutos, una vez llamada la función.
 *
 * Para eliminar este efecto de la unidad, asígnele la variable de tipo
 * objeto "FCLA_Disable_PTSD" con con el valor <true>.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_PTSD", {
  params [
          ["_unit", objNull, [objNull, teamMemberNull], 0],
          ["_cry", true, [true], 0],
          ["_voices", true, [true], 0],
          ["_unwantedThoughts", true, [true], 0],
          ["_involuntaryMovements", true, [true], 0]
         ];
  if ((isNull _unit) || ((!_cry) && (!_voices) && (!_unwantedThoughts) && (!_involuntaryMovements))) exitWith {};
  [_unit, _cry, _voices, _unwantedThoughts, _involuntaryMovements] call FCLA_Common_fnc_setPTSD;
}] call CBA_fnc_addEventHandler;
