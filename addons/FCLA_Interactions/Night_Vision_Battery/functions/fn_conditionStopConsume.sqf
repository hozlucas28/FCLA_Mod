
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se debe detener el consumo de la batería de las gafas de
 * visión nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_currentNVG = hmd _player;


_inUAV = ([_player] call ACE_Common_fnc_getUavControlPosition) != "";
_hasNotNVG = _currentNVG == "";
_isNotAlive = !alive _player;
_inFFVPosition = (isNull objectParent _player) && ([_player] call CBA_fnc_canUseWeapon);
(!FCLA_NVG_Require_Battery) || (_inUAV) || (_hasNotNVG) || (_isNotAlive) || (_inFFVPosition)
