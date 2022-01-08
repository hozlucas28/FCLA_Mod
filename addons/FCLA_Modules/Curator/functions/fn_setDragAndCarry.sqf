
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo que modifica las propiedades del objeto para que pueda ser
 * arrastrado y/o portado.
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
     _canDragObject = if (_canDragObject == 0) then {"TRUE";} else {"FALSE";};
     _canCarryObject = if (_canCarryObject == 0) then {"TRUE";} else {"FALSE";};

     _module = createAgent ["FCLA_Module_Drag_And_Carry", _position, [], 0, "CAN_COLLIDE"];
     _module synchronizeObjectsAdd [_attachedObject];
     _module setVariable ["FCLA_Assigned_Entity", _attachedObject, true];
     _module setVariable ["FCLA_Can_Drag", _canDragObject, true];
     _module setVariable ["FCLA_Can_Carry", _canCarryObject, true];
     _module setVariable ["FCLA_Ignore_Weight_Drag", _ignoreWeightDrag, true];
     _module setVariable ["FCLA_Ignore_Weight_Carry", _ignoreWeightCarry, true];
     ["PROPIEDADES DE ARRASTRE/PORTAR MODIFICADAS CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, [_position, _attachedObject]] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Edit_Object.paa"] call ZEN_Custom_Modules_fnc_Register;
