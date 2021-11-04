
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_playerEventHandlerNVB

Description:
    Asigna un eventhandler del tipo 'addPlayerEventHandler' para que se consuma
    la batería de la visión nocturna.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

["visionMode", {
  params ["_unit", "_newVisionMode", "_oldVisionMode"];
  _hasNotNVG = _currentNVG == "";
  if ((!FCLA_NVG_Require_Battery) || (_hasNotNVG)) exitWith {};

  _inUAV = ([_unit] call ACE_Common_fnc_getUavControlPosition) != "";
  _inCurator = !isNull findDisplay 312;
  _isNotAlive = !alive _unit;
  _inCameraMode = _unit in (call ACE_Spectator_fnc_players);
  _isHandcuffed = _unit getVariable ["ACE_Captives_isHandcuffed", false];
  _isUnconscious = _unit getVariable ["ACE_isUnconscious", false];
  _visionModeDesactivated = _newVisionMode == 0;
  if ((_inUAV) || (_inCurator) || (_isNotAlive) || (_inCameraMode) || (_isHandcuffed) || (_isUnconscious) || (_visionModeDesactivated)) then {
    [_unit, false] spawn FCLA_Interactions_fnc_switchBatteryNVB;
  } else {
    [_unit, true] spawn FCLA_Interactions_fnc_switchBatteryNVB;
  };
}, true] call CBA_fnc_addPlayerEventHandler;
