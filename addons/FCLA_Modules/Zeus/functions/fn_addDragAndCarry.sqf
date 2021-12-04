
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite que el objeto se pueda arrastrar y/o portar.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Añadir arrastre/portar (ACE)", {
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
     (boundingCenter (_this select 1)) params ["_xCenter", "_yCenter"];
     (boundingBoxReal (_this select 1)) params ["_minPos", "_maxPos", "_boundingSphereDiameter"];
     (_this select 0) params ["_dragStateSelected", "_carryStateSelected", "_ignoreWeightDragStateSelected", "_ignoreWeightCarryStateSelected"];
     _dragStateSelected = if (_dragStateSelected == 0) then {true;} else {false;};
     _carryStateSelected = if (_carryStateSelected == 0) then {true;} else {false;};

     _minPos params ["_xMin", "_yMin", "_zMin"];
     _maxPos params ["_xMax", "_yMax", "_zMax"];
     _dX = _xMax - _xMin;
     _dY = _yMax - _yMin;
     _isWiderThanLonger = _dX > _dY;
     _distance = 0.75 + ([_dY / 2, _dX / 2] select _isWiderThanLonger) + ([_yCenter, _xCenter] select _isWiderThanLonger);
     _offset = [[0, _distance, 0], [_distance, 0, 0]] select _isWiderThanLonger;

     ["ZEN_Common_Execute", [ACE_Dragging_fnc_setDraggable, [
      _this select 1,
      true,
      [configOf (_this select 1), "ACE_Dragging_dragPosition", _offset] call BIS_fnc_returnConfigEntry,
      [configOf (_this select 1), "ACE_Dragging_dragDirection", [0, 90] select _isWiderThanLonger] call BIS_fnc_returnConfigEntry,
      _ignoreWeightDragStateSelected
     ]]] call CBA_fnc_globalEventJIP;

     ["ZEN_Common_Execute", [ACE_Dragging_fnc_setCarryable, [
      _this select 1,
      true,
      [configOf (_this select 1), "ACE_Dragging_carryPosition", _offset] call BIS_fnc_returnConfigEntry,
      [configOf (_this select 1), "ACE_Dragging_carryDirection", [90, 0] select _isWiderThanLonger] call BIS_fnc_returnConfigEntry,
      _ignoreWeightCarryStateSelected
     ]]] call CBA_fnc_globalEventJIP;

     _text = switch (true) do {
       case ((_dragStateSelected) && (!_carryStateSelected)): {"SE HA AÑADIDO LA POSIBILIDAD DE ARRASTRAR EL OBJETO";};
       case ((!_dragStateSelected) && (_carryStateSelected)): {"SE HA AÑADIDO LA POSIBILIDAD DE PORTAR EL OBJETO";};
       default {"SE HA AÑADIDO LA POSIBILIDAD DE ARRASTRAR Y PORTAR EL OBJETO";};
     };
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _attachedObject] call ZEN_Dialog_fnc_Create;
}, "\x\zen\addons\modules\ui\edit_obj_ca.paa"] call ZEN_Custom_Modules_fnc_Register;
