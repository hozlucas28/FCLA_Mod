
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna multiples rasgos a una construccion.
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
if (((_mode != "init") && (_mode != "dragged3DEN") && (_mode != "attributesChanged3DEN")) || (isNull _module) || (!_isActivated)) exitWith {};



//Argumentos.
_notifyBuilding = _module getVariable ["FCLA_Notify_Building", false];
_disableKickDoor = _module getVariable ["FCLA_Disable_Kick_Door", false];
_isRepairFacility = _module getVariable ["FCLA_isRepair_Facility", false];
_isMedicalFacility = _module getVariable ["FCLA_isMedical_Facility", false];
_disableStairsActions = _module getVariable ["FCLA_Disable_Stairs_Actions", false];



//Asignar rasgos.
switch (_mode) do {
  case "init": {
    _nearestBuilding = nearestObject [_module, "Building"];
    if ((_module distance _nearestBuilding) > 10) exitWith {["FCLA_Module_Building_Traits", "- MODULO: ASIGNAR RASGOS (ACE)", "¡Error! El/Un modulo 'Asignar rasgos' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};
    _nearestBuilding setVariable ["ACE_isRepairFacility", _isRepairFacility, true];
    _nearestBuilding setVariable ["FCLA_Disable_Kick_Door", _disableKickDoor, true];
    _nearestBuilding setVariable ["ACE_Medical_isMedicalFacility", _isMedicalFacility, true];
    _nearestBuilding setVariable ["FCLA_Disable_Stairs_Actions", _disableStairsActions, true];
    deleteVehicle _module;
  };

  case "dragged3DEN": {
    if (_module getVariable ["FCLA_isDragged", false]) exitWith {};
    _module setVariable ["FCLA_isDragged", true, true];
  };

  case "attributesChanged3DEN": {
    _nearestBuilding = nearestObject [_module, "Building"];
    _nearestBuildingPos = getPos _nearestBuilding;
    _oldSelectedBuilding = _module getVariable ["FCLA_Old_Building", objNull];
    _module setVariable ["FCLA_isDragged", nil, true];

    if ((_oldSelectedBuilding == _nearestBuilding) || (_module distance _nearestBuilding) > 10) exitWith {};
    _module set3DENAttribute ["position", _nearestBuildingPos];
    _module setVariable ["FCLA_Old_Building", _nearestBuilding, true];
    if (_notifyBuilding) then {systemChat format ["- Construccion seleccionada: %1.", (getText (configFile >> "CfgVehicles" >> (typeOf _nearestBuilding) >> "displayName"))];};

    [_module, _nearestBuilding, _nearestBuildingPos] spawn {
      params ["_module", "_nearestBuilding", "_nearestBuildingPos"];
      while {(_module getVariable ["FCLA_Old_Building", objNull]) == _nearestBuilding} do {
        _isNotDraggingModule = !(_module getVariable ["FCLA_isDragged", false]);
        if (_isNotDraggingModule) then {_module set3DENAttribute ["position", _nearestBuildingPos];};
        sleep 0.1;
      };
    };
  };
};
