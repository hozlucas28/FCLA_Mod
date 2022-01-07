
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna un eventhandler del tipo 'addDisplayHandler' para que
 * se cancele la animación 'posición táctica (arriba/abajo)' cuando se
 * preciona el click derecho/izquierdo del mouse.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["MouseButtonDown", {
  _player = call CBA_fnc_currentUnit;
  _tacticalPositionValues = _player getVariable ["FCLA_Tactical_Position", [false, false]];
  _severalConditions = [_player, [4, 6, 7, 8, 10, 11, 12, 14, 16]] call FCLA_Common_fnc_severalConditions;
  _noInTacticalAnimation = !(_tacticalPositionValues select 0);
  if ((_severalConditions) || (_noInTacticalAnimation)) exitWith {};
  _player setVariable ["FCLA_Tactical_Position", [false, _tacticalPositionValues select 1], true];
  if (!(_tacticalPositionValues select 1)) then {[_player, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;};
}] call CBA_fnc_addDisplayHandler;
