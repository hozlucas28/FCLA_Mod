
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
  _inUAV = ([_unit] call ace_common_fnc_getUavControlPosition) != "";
  _inCurator = !isNull findDisplay 312;
  _inStairs = _unit getVariable ["FCLA_inStairs", false];
  _hasNotNVG = (hmd _unit) == "";
  _inCameraMode = _unit in (call ACE_Spectator_fnc_players);
  _isHandcuffed = _unit getVariable ["ACE_Captives_isHandcuffed", false];
  if ((_oldVisionMode < 0) || (_inUAV) || (_inCurator) || (_inStairs) || (_hasNotNVG) || (_inCameraMode) || (_isHandcuffed)) exitWith {};

  [_unit, "FCLA_Animation_Night_Vision_Switch", "playActionNow"] call FCLA_Common_fnc_playAnimation;
}, false] call CBA_fnc_addPlayerEventHandler;
