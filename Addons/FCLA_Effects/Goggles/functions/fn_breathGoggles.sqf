
/* ----------------------------------------------------------------------------
Function: FCLA_Effects_fnc_breathGoggles

Description:
    Reproduce una serie de sonidos relacionados con la respiración,
    simulando el uso de una máscara.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

_spawnHandle = [_this select 0] spawn {
  params ["_unit"];
  while {(alive _unit) && (_unit getVariable ["FCLA_Mask_Equipped", false])} do {
    sleep (0.75 + (round (random [2, 3, 4])));
    _inUAV = !(isNull (getConnectedUAV _unit)) && (cameraOn == (getConnectedUAV _unit));
    _inZeus = !isNull findDisplay 312;
    _inStairs = _unit getVariable ["FCLA_inStairs", false];
    _isSwimming = [_unit] call ACE_Common_fnc_isSwimming;
    _inCameraMode = _unit getVariable ["FCLA_Camera_Mode_On", false];
    _inThirdPerson = cameraView == "External";
    if ((_inUAV) || (_inZeus) || (_inStairs) || (_isSwimming) || (_inCameraMode) || (_inThirdPerson)) exitWith {};
    _randomInhaleSound = selectRandom ["FCLA_Mask_Inhale_1", "FCLA_Mask_Inhale_2", "FCLA_Mask_Inhale_3", "FCLA_Mask_Inhale_4"];
    playSound _randomInhaleSound;

    sleep (0.75 + (round (random [2, 3, 4])));
    _inUAV = !(isNull (getConnectedUAV _unit)) && (cameraOn == (getConnectedUAV _unit));
    _inZeus = !isNull findDisplay 312;
    _inStairs = _unit getVariable ["FCLA_inStairs", false];
    _isSwimming = [_unit] call ACE_Common_fnc_isSwimming;
    _inCameraMode = _unit getVariable ["FCLA_Camera_Mode_On", false];
    _inThirdPerson = cameraView == "External";
    if ((_inUAV) || (_inZeus) || (_inStairs) || (_isSwimming) || (_inCameraMode) || (_inThirdPerson)) exitWith {};
    _randomExhalationSound = selectRandom ["FCLA_Mask_Exhalation_1", "FCLA_Mask_Exhalation_2", "FCLA_Mask_Exhalation_3", "FCLA_Mask_Exhalation_4"];
    playSound _randomExhalationSound;
  };
};
[{!(alive (_this select 0)) || !((_this select 0) getVariable ["FCLA_Mask_Equipped", false])}, {terminate (_this select 1);}, [_this select 0, _spawnHandle]] call CBA_fnc_waitUntilAndExecute;
