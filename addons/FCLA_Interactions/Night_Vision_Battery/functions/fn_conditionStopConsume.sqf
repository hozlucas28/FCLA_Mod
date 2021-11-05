
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se debe consumir la batería de las gafas de visión nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
_currentNVG = hmd _unit;
_visionMode = currentVisionMode _unit;


_inUAV = ([_unit] call ACE_Common_fnc_getUavControlPosition) != "";
_inCurator = !isNull findDisplay 312;
_hasNotNVG = _currentNVG == "";
_isNotAlive = !alive _unit;
_inCameraMode = _unit in (call ACE_Spectator_fnc_players);
_inNormalVision = _visionMode == 0;
(!FCLA_NVG_Require_Battery) && (_inUAV) && (_inCurator) && (_hasNotNVG) && (_isNotAlive) && (_inCameraMode) && (_inNormalVision) &&
