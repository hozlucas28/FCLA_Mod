
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna rasgos ACE a la construcción.
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
_notifyBuilding = _module getVariable ["FCLA_Notify_Building", false];
_isRepairFacility = _module getVariable ["FCLA_isRepair_Facility", false];
_isMedicalFacility = _module getVariable ["FCLA_isMedical_Facility", false];
if (((_mode != "init") && (_mode != "dragged3DEN") && (_mode != "attributesChanged3DEN")) || (isNull _module) || (!_isActivated)) exitWith {};



//Asignar rasgos.
switch (_mode) do {
  case "init": {
    _building = nearestObject [_module, "BUILDING"];
    _nearesTerrainObjects = nearestTerrainObjects [_module, [], 50];
    if (((_module distance _building) > 10) || !(_building in _nearesTerrainObjects)) exitWith {};
    _building setVariable ["ACE_isRepairFacility", true, true];
    _building setVariable ["ACE_Medical_isMedicalFacility", true, true];
    deleteVehicle _module;
  };

  case "dragged3DEN": {
    if (_module getVariable ["FCLA_isDragged", false]) exitWith {};
    _module setVariable ["FCLA_isDragged", true, true];
  };

  case "attributesChanged3DEN": {
    _building = nearestObject [_module, "BUILDING"];
    _buildingPos = getPos _building;
    _oldSelectedBuilding = _module getVariable ["FCLA_Old_Building", objNull];
    _nearesTerrainObjects = nearestTerrainObjects [_module, [], 50];
    _module setVariable ["FCLA_isDragged", nil, true];

    if ((_oldSelectedBuilding == _building) || ((_module distance _building) > 10) || !(_building in _nearesTerrainObjects)) exitWith {};
    _module set3DENAttribute ["position", _buildingPos];
    _module setVariable ["FCLA_Old_Building", _building, true];
    if (_notifyBuilding) then {systemChat format ["• Construcción seleccionada: %1.", (getText (configFile >> "CfgVehicles" >> (typeOf _building) >> "displayName"))];};

    [_module, _building, _buildingPos] spawn {
      params ["_module", "_building", "_buildingPos"];
      while {(_module getVariable ["FCLA_Old_Building", objNull]) == _building} do {
        _isNotDraggingModule = !(_module getVariable ["FCLA_isDragged", false]);
        if (_isNotDraggingModule) then {_module set3DENAttribute ["position", _buildingPos];};
        Sleep 0.1;
      };
    };
  };
};
