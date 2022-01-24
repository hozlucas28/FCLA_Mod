
/********************************************************************************|
|                     CONTROLADORES DE EVENTOS - "AERONAVES"                     |
|********************************************************************************/

//Provoca que la camara tiemble cuando una aeronave pasa cerca.
["FCLA_Plane_Camera_Shake", {
  params ["_plane", "_planeSpeed"];
  _unit = call CBA_fnc_currentUnit;
  _onPlane = (vehicle _unit) iskindof "Plane";
  _isLightUAV = (_plane iskindof "UAV_02_base_F") || (_plane iskindof "UAV_04_base_F");
  _severalConditions = [_unit, [1, 2, 4, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17]] call FCLA_Common_fnc_severalConditions;
  if ((!FCLA_Planes_camShake) || (_planeSpeed < 300) || (_onPlane) || ((_unit distance _plane) > 150) || (_isLightUAV) || (_severalConditions)) exitWith {};

  enableCamShake true;
  addCamShake [3, 2, 10];
}] call CBA_fnc_addEventHandler;
