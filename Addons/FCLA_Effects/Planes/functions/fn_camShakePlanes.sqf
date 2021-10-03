
/* ----------------------------------------------------------------------------
Function: FCLA_Effects_fnc_camShakePlanes

Description:
    Genera un temblor de cámara si se cumplen las condiciones.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_plane", "_speed"];
if (!FCLA_Planes_camShake) exitWith {};
_unit = call CBA_fnc_currentUnit;
_inUAV = !(isNull (getConnectedUAV _unit)) && (cameraOn == (getConnectedUAV _unit));
_inZeus = !isNull findDisplay 312;
_isNotAlive = !alive _unit;
_isSwimming = [_unit] call ACE_Common_fnc_isSwimming;
_isPlaneUAV = (_plane iskindof "UAV_02_base_F") || (_plane iskindof "UAV_04_base_F");
_inAirVehicle = (vehicle _unit) iskindof "Air";
_inCameraMode = _unit getVariable ["FCLA_Camera_Mode_On", false];
_tooMuchDistance = (_unit distance _plane) > 150;
if ((_speed < 300) || ((_inUAV)) || (_inZeus) || (_isNotAlive) || (_isSwimming) || (_isPlaneUAV) || (_inAirVehicle) || (_inCameraMode) || (_tooMuchDistance)) exitWith {};


enableCamShake true;
addCamShake [3, 2, 10];
