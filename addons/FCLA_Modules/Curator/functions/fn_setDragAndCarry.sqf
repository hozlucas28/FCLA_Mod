
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica las propiedades del objeto para que pueda ser arrastrado y/o portado.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Modificar arrastre/portar (ACE)", {
  params ["_position", "_attachedObject"];
  if ((isNull _attachedObject) || !(_attachedObject isKindOf "Thing")) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN OBJETO COMPATIBLE"] call ZEN_Common_fnc_showMessage;};


  _objectName = getText (configFile >> "CfgVehicles" >> (typeOf _attachedObject) >> "displayName");
  _originalDragState = if (_attachedObject getVariable ["ACE_Dragging_canDrag", false]) then {0;} else {1;};
  _originalCarryState = if (_attachedObject getVariable ["ACE_Dragging_canCarry", false]) then {0;} else {1;};
  _originalIgnoreWeightDragState = _attachedObject getVariable ["ACE_Dragging_ignoreWeightDrag", false];
  _originalIgnoreWeightCarryState = _attachedObject getVariable ["ACE_Dragging_ignoreWeightCarry", false];


  [_objectName,
	 [
    ["TOOLBOX", "¿Se puede arrastrar?",
     [
      _originalDragState,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     true
    ],
    ["TOOLBOX", "¿Se puede portar?",
     [
      _originalCarryState,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     true
    ],
    ["CHECKBOX", "Ignorar peso (al arrastrar)",
     [
      _originalIgnoreWeightDragState
     ],
     true
    ],
    ["CHECKBOX", "Ignorar peso (al portar)",
     [
      _originalIgnoreWeightCarryState
     ],
     true
    ]
	 ],
   {
     (_this select 1) params ["_position", "_attachedObject"];
     (_this select 0) params ["_canDragObject", "_canCarryObject", "_ignoreWeightDrag", "_ignoreWeightCarry"];
     (boundingCenter _attachedObject) params ["_xCenter", "_yCenter"];
     (boundingBoxReal _attachedObject) params ["_minPos", "_maxPos", "_boundingSphereDiameter"];
     _minPos params ["_xMin", "_yMin", "_zMin"];
     _maxPos params ["_xMax", "_yMax", "_zMax"];

     _dX = _xMax - _xMin;
     _dY = _yMax - _yMin;
     _isWiderThanLonger = _dX > _dY;
     _distance = 0.75 + ([_dY / 2, _dX / 2] select _isWiderThanLonger) + ([_yCenter, _xCenter] select _isWiderThanLonger);
     _offset = [[0, _distance, 0], [_distance, 0, 0]] select _isWiderThanLonger;

     _canDragObject = if (_canDragObject == 0) then {true;} else {false;};
     _canCarryObject = if (_canCarryObject == 0) then {true;} else {false;};

     ["FCLA_Common_Execute", [ACE_Dragging_fnc_setDraggable, [
      _attachedObject,
      _canDragObject,
      [configOf _attachedObject, "ACE_Dragging_dragPosition", _offset] call BIS_fnc_returnConfigEntry,
      [configOf _attachedObject, "ACE_Dragging_dragDirection", [0, 90] select _isWiderThanLonger] call BIS_fnc_returnConfigEntry,
      _ignoreWeightDrag
     ]]] call CBA_fnc_globalEventJIP;

     ["FCLA_Common_Execute", [ACE_Dragging_fnc_setCarryable, [
      _attachedObject,
      _canCarryObject,
      [configOf _attachedObject, "ACE_Dragging_carryPosition", _offset] call BIS_fnc_returnConfigEntry,
      [configOf _attachedObject, "ACE_Dragging_carryDirection", [90, 0] select _isWiderThanLonger] call BIS_fnc_returnConfigEntry,
      _ignoreWeightCarry
     ]]] call CBA_fnc_globalEventJIP;
     ["PROPIEDADES DE ARRASTRE/PORTAR MODIFICADAS CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Edit_Object.paa"] call ZEN_Custom_Modules_fnc_Register;
