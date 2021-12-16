
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna rasgos ACE de la construcción.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
(_this select 1) params [
                         ["_module", objNull, [objNull], 0],
                         ["_isActivated", true, [true], 0],
                         ["_isCuratorPlaced", false, [true], 0]
                        ];
_mode = _this select 0;
_isRepairFacility = _module getVariable ["FCLA_isRepair_Facility", false];
_isMedicalFacility = _module getVariable ["FCLA_isMedical_Facility", false];
if (((_mode != "attributesChanged3DEN") && (_mode != "init")) || (isNull _module) || (!_isActivated)) exitWith {};



//Asignar rasgos.
switch (_this select 0) do {
  case "attributesChanged3DEN": {
    _building = nearestObject [_module, "BUILDING"];
    _modulePos = getPos _module;
    _buildingPos = getPos _building;
    _oldSelectedBuilding = _module getVariable ["FCLA_Old_Building", objNull];
    _nearesTerrainObjects = nearestTerrainObjects [_module, [], 50];
    if ((_oldSelectedBuilding == _building) || ((_module distance _building) > 10) || !(_building in _nearesTerrainObjects)) exitWith {};
    _module set3DENAttribute ["position", _buildingPos];
    _module setVariable ["FCLA_Old_Building", _building, true];
    systemChat format ["• Construcción seleccionada: %1.", (getText (configFile >> "CfgVehicles" >> (typeOf _building) >> "displayName"))];

    [{ //NO LO SETEA EN LA POSICION COMO QUE LO IGNORA Y NO SALTA EL SYSTEM
      params ["_module", "_building", "_buildingPos"];
      _oldSelectedBuilding = _module getVariable ["FCLA_Old_Building", objNull];
      _module set3DENAttribute ["position", _buildingPos];
      (_oldSelectedBuilding != _building);
    }, {systemChat "STOP";}, [_module, _building, _buildingPos]] call CBA_fnc_waitUntilAndExecute;
  };

  case "init": {
    _building = nearestObject [_module, "BUILDING"];
    _nearesTerrainObjects = nearestTerrainObjects [_module, [], 50];
    if (((_module distance _building) > 10) || !(_building in _nearesTerrainObjects)) exitWith {};
    _building setVariable ["ACE_isRepairFacility", true, true];
    _building setVariable ["ACE_Medical_isMedicalFacility", true, true];
    deleteVehicle _module;
  };
};
