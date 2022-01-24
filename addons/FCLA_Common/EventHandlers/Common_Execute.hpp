
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite ejecutar cualquier función que sea enviada.
 *
 * Arguments:
 *            0: Función a ejecutar. <FUNCTION>
 *            1: Argumentos de la función enviada (argumento 0). <ARRAY>
 *
 * Example:
 * ["FCLA_Common_Execute", [FCLA_Common_fnc_setUnitTrait, [player, "Doctor"]], allPlayers] call CBA_fnc_targetEvent;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_Common_Execute", {
  params ["_function", "_arguments"];
  _arguments call _function;
}] call CBA_fnc_addEventHandler;
