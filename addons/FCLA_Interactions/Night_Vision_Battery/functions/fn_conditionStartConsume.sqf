
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se debe consumir la bateria de las gafas de vision nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_currentWeapon = currentWeapon _player;
_currentVehicle = vehicle _player;
_currentTurret = _currentVehicle unitTurret _player;
_visionModeOfCurrentWeapon = _player currentVisionMode _currentWeapon;
_visionModeOfCurrentTurret = _currentVehicle currentVisionMode _currentTurret;


_hasNVG = (hmd _player) != "";
_isAlive = alive _player;
_isPlayer = [_player, true] call ACE_Common_fnc_isPlayer;
_notInUAV = ([_player] call ACE_Common_fnc_getUavControlPosition) == "";
_notInCurator = isNull findDisplay 312;
_notInCameraMode = !(_player in (call ACE_Spectator_fnc_players));
_notInNormalVision = (currentVisionMode _player) != 0;
(FCLA_NVG_Require_Battery) && (_hasNVG) && (_isAlive) && (_isPlayer) && (_notInUAV) && (_notInCurator) && (_notInCameraMode) && (_notInNormalVision) && ((_visionModeOfCurrentWeapon != 0) || (_visionModeOfCurrentTurret != 0))



/*
_typeOfVehicle = typeOf (vehicle _player);
_inCompatibleVehicle = !(_typeOfVehicle in _incompatibleVehicles);
_notInVehicleTypesExcluded = !(_typeOfVehicle isKindOf "Wheeled_APC_F") && !(_typeOfVehicle isKindOf "Tank") && !(_typeOfVehicle isKindOf "Air");


//Verificar si es tripulante o ocupa un asiento importante.
_vehicleRole = [_player] call CBA_fnc_vehicleRole;
_inCargo = (_vehicleRole == "") || (_vehicleRole == "cargo") || (_vehicleRole == "turret");
_inImportantSeat = (_vehicleRole == "driver") || (_vehicleRole == "gunner") || (_vehicleRole == "commander");


//Condiciones.
_hasNVG = (hmd _player) != "";
_isAlive = alive _player;
_isPlayer = [_player, true] call ACE_Common_fnc_isPlayer;
_notInUAV = ([_player] call ACE_Common_fnc_getUavControlPosition) == "";
_notInCurator = isNull findDisplay 312;
_notInCameraMode = !(_player in (call ACE_Spectator_fnc_players));
_notInNormalVision = (currentVisionMode _player) != 0;
_inCompatibleVehicleRole = (_inCargo) || ((_inCompatibleVehicle) && (_notInVehicleTypesExcluded)) || ((_inImportantSeat) && (cameraView != "GUNNER"));
(FCLA_NVG_Require_Battery) && (_hasNVG) && (_isAlive) && (_isPlayer) && (_notInUAV) && (_notInCurator) && (_notInCameraMode) && (_notInNormalVision) && (_inCompatibleVehicleRole)
*/
