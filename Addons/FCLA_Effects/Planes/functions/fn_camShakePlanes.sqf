
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un temblor de cámara si se cumplen las condiciones.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_plane", "_speed"];
if (!FCLA_Planes_camShake) exitWith {};
_unit = call CBA_fnc_currentUnit;
_inUAV = ([_unit] call ace_common_fnc_getUavControlPosition) != "";
_inZeus = !isNull findDisplay 312;
_isNotAlive = !alive _unit;
_isSwimming = [_unit] call ACE_Common_fnc_isSwimming;
_isPlaneUAV = (_plane iskindof "UAV_02_base_F") || (_plane iskindof "UAV_04_base_F");
_inAirVehicle = (vehicle _unit) iskindof "Air";
_inCameraMode = _unit in (call ACE_Spectator_fnc_players);
_tooMuchDistance = ([_unit, _plane] call CBA_fnc_getDistance) > 150;
if ((_speed < 300) || ((_inUAV)) || (_inZeus) || (_isNotAlive) || (_isSwimming) || (_isPlaneUAV) || (_inAirVehicle) || (_inCameraMode) || (_tooMuchDistance)) exitWith {};


enableCamShake true;
addCamShake [3, 2, 10];
