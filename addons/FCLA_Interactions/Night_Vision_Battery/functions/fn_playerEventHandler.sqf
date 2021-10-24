
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
  _inUAV = ([_unit] call ace_common_fnc_getUavControlPosition) != "";
  _inCurator = !isNull findDisplay 312;
  _inCameraMode = _unit in (call ACE_Spectator_fnc_players);
  if ((!FCLA_visionMode_Sounds) || (_inUAV) || (_inCurator) || (_inCameraMode)) exitWith {};

  switch (_newVisionMode) do {
    case 1: {[_unit, true] spawn FCLA_Interactions_fnc_switchBatteryNVB;};
    case 2: {[_unit, true] spawn FCLA_Interactions_fnc_switchBatteryNVB;};
    default {[_unit, false] spawn FCLA_Interactions_fnc_switchBatteryNVB;};
  };
}, true] call CBA_fnc_addPlayerEventHandler;
