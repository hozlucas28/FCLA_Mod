
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un efecto de conmocion en la unidad, enviada como argumento.
 *
 * Arguments:
 *            0: Unidad a la que se le aplicara el efecto. <UNIT>
 *            1: ¿Provocar caida de la unidad?, opcional. <BOOL> (default: true)
 *
 * Example:
 *             //La unidad se caera.
 *             ["FCLA_Shellshock", [player], player] call CBA_fnc_targetEvent;
 *
 *             //La unidad no se caera.
 *             ["FCLA_Shellshock", [player, false], player] call CBA_fnc_targetEvent;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_Shellshock", {
  params [
          ["_unit", objNull, [objNull, teamMemberNull], 0],
          ["_fallDown", true, [true], 0]
         ];
  _isShellshockInitialized = _unit getVariable ["FCLA_Shellshock_Initialized", false];
  if ((isNull _unit) || (_isShellshockInitialized)) exitWith {};
  [_unit, _fallDown] call FCLA_Common_fnc_Shellshock;
}] call CBA_fnc_addEventHandler;
