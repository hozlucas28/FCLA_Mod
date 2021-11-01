
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna un eventhandler del tipo 'addPlayerEventHandler' para que se
 * reproduzca una animación al activar/desactivar la visión nocturna/térmica.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["visionMode", {
  params ["_unit", "_newVisionMode", "_oldVisionMode"];
  _hasNotNVG = (hmd _unit) == "";
  _severalConditions = [_unit, [1, 4, 6, 7, 8, 12, 13, 14, 15, 16]] call FCLA_Common_fnc_severalConditions;
  if ((_oldVisionMode < 0) || (_hasNotNVG) || (_severalConditions)) exitWith {};
  [_unit, "FCLA_Night_Vision_Switch", "playActionNow"] call FCLA_Common_fnc_playAnimation;
}, false] call CBA_fnc_addPlayerEventHandler;
