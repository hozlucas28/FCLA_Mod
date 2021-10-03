
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_fovViewDistanceVD

Public: [No]
---------------------------------------------------------------------------- */

private ["_ret"];
_minViewDistance = [_this, 0, 0, [0]] call BIS_fnc_param;
_ret = _minViewDistance;
_zoom = call FCLA_Video_Settings_fnc_trueZoomVD;
if (_zoom >= 1) then {_ret = _minViewDistance + ((12000 / 74) * (_zoom - 1)) min viewDistance;};
_ret
