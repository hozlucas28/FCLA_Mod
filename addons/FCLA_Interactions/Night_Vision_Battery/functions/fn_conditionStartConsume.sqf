
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se debe consumir la batería de las gafas de visión nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit"];
_currentNVG = hmd _unit;
_visionMode = currentVisionMode _unit;
_vehicleRole = [_unit] call CBA_fnc_vehicleRole;
_inCargo = (_vehicleRole == "turret") || (_vehicleRole == "cargo");
_notInVehicle = isNull objectParent _unit;
_inFFVPosition = [_unit] call CBA_fnc_canUseWeapon;
_inImportantSeat = (_vehicleRole == "driver") || (_vehicleRole == "gunner") || (_vehicleRole == "commander");


_hasNVG = _currentNVG != "";
_isAlive = alive _unit;
_isPlayer = [_unit, true] call ACE_Common_fnc_isPlayer;
_notInUAV = ([_unit] call ACE_Common_fnc_getUavControlPosition) == "";
_notInCurator = isNull findDisplay 312;
_notInCameraMode = !(_unit in (call ACE_Spectator_fnc_players));
_notInNormalVision = _visionMode != 0;
_inCompatibleVehicleRole = (_notInVehicle) || (_inCargo) || ((_inImportantSeat) && (!_inFFVPosition) && (cameraView != "GUNNER"));
(FCLA_NVG_Require_Battery) && (_hasNVG) && (_isAlive) && (_isPlayer) && (_notInUAV) && (_notInCurator) && (_notInCameraMode) && (_notInNormalVision) && (_inCompatibleVehicleRole)
