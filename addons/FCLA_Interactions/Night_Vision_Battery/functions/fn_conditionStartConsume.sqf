
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se debe consumir la batería de las gafas de visión nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
false
/*
params ["_unit"];
#include "\FCLA_Interactions\Night_Vision_Battery\includes\Incompatible_Vehicles.hpp"
_typeOfVehicle = typeOf (vehicle _unit);
_inCompatibleVehicle = !(_typeOfVehicle in _incompatibleVehicles);
_notInVehicleTypesExcluded = !(_typeOfVehicle isKindOf "Wheeled_APC_F") && !(_typeOfVehicle isKindOf "Tank") && !(_typeOfVehicle isKindOf "Air");


//Verificar si es tripulante ó ocupa un asiento importante.
_vehicleRole = [_unit] call CBA_fnc_vehicleRole;
_inCargo = (_vehicleRole == "") || (_vehicleRole == "cargo") || (_vehicleRole == "turret");
_inImportantSeat = (_vehicleRole == "driver") || (_vehicleRole == "gunner") || (_vehicleRole == "commander");


//Condiciones.
_hasNVG = (hmd _unit) != "";
_isAlive = alive _unit;
_isPlayer = [_unit, true] call ACE_Common_fnc_isPlayer;
_notInUAV = ([_unit] call ACE_Common_fnc_getUavControlPosition) == "";
_notInCurator = isNull findDisplay 312;
_notInCameraMode = !(_unit in (call ACE_Spectator_fnc_players));
_notInNormalVision = (currentVisionMode _unit) != 0;
_inCompatibleVehicleRole = (_inCargo) || ((_inCompatibleVehicle) && (_notInVehicleTypesExcluded)) || ((_inImportantSeat) && (cameraView != "GUNNER"));
(FCLA_NVG_Require_Battery) && (_hasNVG) && (_isAlive) && (_isPlayer) && (_notInUAV) && (_notInCurator) && (_notInCameraMode) && (_notInNormalVision) && (_inCompatibleVehicleRole)
*/
