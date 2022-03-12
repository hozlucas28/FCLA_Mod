
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
_visionModeOfCurrentWeapon = (_player currentVisionMode _currentWeapon) select 0;
_visionModeOfCurrentTurret = (_currentVehicle currentVisionMode _currentTurret) select 0;


_hasNVG = (hmd _player) != "";
_isAlive = alive _player;
_isPlayer = [_player, true] call ACE_Common_fnc_isPlayer;
_notInUAV = ([_player] call ACE_Common_fnc_getUavControlPosition) == "";
_notInCurator = isNull findDisplay 312;
_notInCameraMode = !(_player in (call ACE_Spectator_fnc_players));
_notInNormalVision = (currentVisionMode _player) != 0;
(FCLA_NVG_Require_Battery) && (_hasNVG) && (_isAlive) && (_isPlayer) && (_notInUAV) && (_notInCurator) && (_notInCameraMode) && (_visionModeOfCurrentTurret <= 0) && ((_notInNormalVision) || (_visionModeOfCurrentWeapon > 0))
