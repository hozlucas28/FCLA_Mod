
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_trueZoomVD

Public: [No]
---------------------------------------------------------------------------- */

round (([0.5,0.5] distance2D worldToScreen positionCameraToWorld [0,3,4]) * (getResolution select 5) / 2 * 30) / 10
