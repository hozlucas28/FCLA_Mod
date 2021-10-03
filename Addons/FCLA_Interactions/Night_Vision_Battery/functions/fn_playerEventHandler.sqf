
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_playerEventHandlerNVB

Description:
    Asigna un eventhandler del tipo 'addPlayerEventHandler' para que se consuma
    la batería de la visión nocturna.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

["visionMode", {
  params ["_unit", "_newVisionMode", "_oldVisionMode"];
  _inUAV = !(isNull (getConnectedUAV _unit)) && (cameraOn == (getConnectedUAV _unit));
  _inZeus = !isNull findDisplay 312;
  _inCameraMode = _unit getVariable ["FCLA_Camera_Mode_On", false];
  if ((!FCLA_visionMode_Sounds) || (_inUAV) || (_inZeus) || (_inCameraMode)) exitWith {};

  switch (_newVisionMode) do {
    case 1: {[_unit, true] spawn FCLA_Interactions_fnc_switchBatteryNVB;};
    case 2: {[_unit, true] spawn FCLA_Interactions_fnc_switchBatteryNVB;};
    default {[_unit, false] spawn FCLA_Interactions_fnc_switchBatteryNVB;};
  };
}, true] call CBA_fnc_addPlayerEventHandler;
