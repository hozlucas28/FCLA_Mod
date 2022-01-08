
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica las propiedades del objeto para que pueda ser arrastrado y/o portado.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
_assignedEntity = _module getVariable ["FCLA_Assigned_Entity", objNull];
_assignedCurator = _module getVariable ["FCLA_Assigned_Curator", objNull];
_forceDeactivation = _module getVariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Verificar argumentos.
_canDragObject = toUpper (_module getVariable ["FCLA_Can_Drag", "false"]);
_canCarryObject = toUpper (_module getVariable ["FCLA_Can_Carry", "false"]);
_ignoreWeightDrag = _module getVariable ["FCLA_Ignore_Weight_Drag", false];
_ignoreWeightCarry = _module getVariable ["FCLA_Ignore_Weight_Carry", false];
_compatibleSynchronizedObjects = {_x isKindOf "Thing"} count _synchronizedObjects;
_areNotCompatibleSynchronizedObjects = if (isNull _assignedEntity) then {_compatibleSynchronizedObjects <= 0;} else {false;};
if (_areNotCompatibleSynchronizedObjects) exitWith {["¡Error! El/Un módulo 'Modificar arrastre/portar (ACE)' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Modificar propiedades.
if (isNull _assignedEntity) then {
  {
    if (_x isKindOf "Thing") then {
      (boundingCenter _x) params ["_xCenter", "_yCenter"];
      (boundingBoxReal _x) params ["_minPos", "_maxPos", "_boundingSphereDiameter"];
      _minPos params ["_xMin", "_yMin", "_zMin"];
      _maxPos params ["_xMax", "_yMax", "_zMax"];

      _dX = _xMax - _xMin;
      _dY = _yMax - _yMin;
      _isWiderThanLonger = _dX > _dY;
      _distance = 0.75 + ([_dY / 2, _dX / 2] select _isWiderThanLonger) + ([_yCenter, _xCenter] select _isWiderThanLonger);
      _offset = [[0, _distance, 0], [_distance, 0, 0]] select _isWiderThanLonger;

      ["FCLA_Common_Execute", [ACE_Dragging_fnc_setDraggable, [
       _x,
       if (_canDragObject == "TRUE") then {true} else {false},
       [configOf _x, "ACE_Dragging_dragPosition", _offset] call BIS_fnc_returnConfigEntry,
       [configOf _x, "ACE_Dragging_dragDirection", [0, 90] select _isWiderThanLonger] call BIS_fnc_returnConfigEntry,
       _ignoreWeightDrag
      ]]] call CBA_fnc_globalEventJIP;

      ["FCLA_Common_Execute", [ACE_Dragging_fnc_setCarryable, [
       _x,
       if (_canCarryObject == "TRUE") then {true} else {false},
       [configOf _x, "ACE_Dragging_carryPosition", _offset] call BIS_fnc_returnConfigEntry,
       [configOf _x, "ACE_Dragging_carryDirection", [90, 0] select _isWiderThanLonger] call BIS_fnc_returnConfigEntry,
       _ignoreWeightCarry
      ]]] call CBA_fnc_globalEventJIP;
    };
  } forEach _synchronizedObjects;
} else {
  (boundingCenter _assignedEntity) params ["_xCenter", "_yCenter"];
  (boundingBoxReal _assignedEntity) params ["_minPos", "_maxPos", "_boundingSphereDiameter"];
  _minPos params ["_xMin", "_yMin", "_zMin"];
  _maxPos params ["_xMax", "_yMax", "_zMax"];

  _dX = _xMax - _xMin;
  _dY = _yMax - _yMin;
  _isWiderThanLonger = _dX > _dY;
  _distance = 0.75 + ([_dY / 2, _dX / 2] select _isWiderThanLonger) + ([_yCenter, _xCenter] select _isWiderThanLonger);
  _offset = [[0, _distance, 0], [_distance, 0, 0]] select _isWiderThanLonger;

  ["FCLA_Common_Execute", [ACE_Dragging_fnc_setDraggable, [
   _assignedEntity,
   if (_canDragObject == "TRUE") then {true} else {false},
   [configOf _assignedEntity, "ACE_Dragging_dragPosition", _offset] call BIS_fnc_returnConfigEntry,
   [configOf _assignedEntity, "ACE_Dragging_dragDirection", [0, 90] select _isWiderThanLonger] call BIS_fnc_returnConfigEntry,
   _ignoreWeightDrag
  ]]] call CBA_fnc_globalEventJIP;

  ["FCLA_Common_Execute", [ACE_Dragging_fnc_setCarryable, [
   _assignedEntity,
   if (_canCarryObject == "TRUE") then {true} else {false},
   [configOf _assignedEntity, "ACE_Dragging_carryPosition", _offset] call BIS_fnc_returnConfigEntry,
   [configOf _assignedEntity, "ACE_Dragging_carryDirection", [90, 0] select _isWiderThanLonger] call BIS_fnc_returnConfigEntry,
   _ignoreWeightCarry
  ]]] call CBA_fnc_globalEventJIP;
};


//Eliminar módulo.
deleteVehicle _module;
