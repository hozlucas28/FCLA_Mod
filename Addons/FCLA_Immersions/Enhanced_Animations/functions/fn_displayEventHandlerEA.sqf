
/* ----------------------------------------------------------------------------
Function: FCLA_Immersions_fnc_displayEventHandlerEA

Description:
    Asigna un eventhandler del tipo 'displayAddEventHandler' para que
    se cancele la animación 'posición táctica (arriba/abajo)' cuando se
    preciona el click derecho/izquierdo del mouse.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Al precionar una tecla del mouse.
[{time > 1}, {
  (findDisplay 46) displayAddEventHandler ["MouseButtonDown", {
    params ["_displayOrControl", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];
    _unit = call CBA_fnc_currentUnit;
    _inUAV = !(isNull (getConnectedUAV _unit)) && (cameraOn == (getConnectedUAV _unit));
    _inCameraMode = _unit in (call ACE_Spectator_fnc_players);
    _isShowingIDCard = !isNull findDisplay 10001;
    _noInTacticalAnimation = !(_unit getVariable ["FCLA_inTactical_Position", false]);
    if ((visibleMap) || (_inUAV) || (_inCameraMode) || (_isShowingIDCard) || (_noInTacticalAnimation)) exitWith {};

    _unit setVariable ["FCLA_inTactical_Position", nil, true];
    [_unit, "FCLA_Animation_tacticalPosition_End", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;
  }];
}] call CBA_fnc_waitUntilAndExecute;
