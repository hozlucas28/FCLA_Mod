
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un eventhandler para el uso de las funciones "Planes".
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Plane_Shake", {
  params ["_plane", "_speed"];
  _unit = call CBA_fnc_currentUnit;
  _onPlane = (vehicle _unit) iskindof "Plane";
  _tooMuchDistance = ([_unit, _plane] call CBA_fnc_getDistance) > 150;
  _isLightPlaneUAV = (_plane iskindof "UAV_02_base_F") || (_plane iskindof "UAV_04_base_F");
  _severalConditions = [_unit, [1, 2, 4, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16]] call FCLA_Common_fnc_severalConditions;
  if ((!FCLA_Planes_camShake) || (_speed < 300) || (_onPlane) || (_tooMuchDistance) || (_isLightPlaneUAV) || (_severalConditions)) exitWith {};

  enableCamShake true;
  addCamShake [3, 2, 10];
}] call CBA_fnc_addEventHandler;
