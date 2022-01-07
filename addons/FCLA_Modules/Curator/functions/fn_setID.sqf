
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo que modifica la identificación de la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Modificar ID", {
  params ["_position", "_attachedObject"];
  _IDCard = _attachedObject getVariable ["FCLA_ID", ["", "", ""]];
  if (!FCLA_ID_Card_Allowed) exitWith {["¡LAS IDENTIFICACIONES ESTAN DESACTIVADAS POR EL ADDON OPTION: FCLA INTERACCIONES!"] call ZEN_Common_fnc_showMessage;};
  if ((isNull _attachedObject) || !(_attachedObject in allUnits)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UNA UNIDAD"] call ZEN_Common_fnc_showMessage;};


  _originalAge = if ((_IDCard select 1) != "") then {_IDCard select 1;} else {[19, 65, true] call FCLA_Common_fnc_getRandomNumber;};
  _originalName = if ((_IDCard select 0) != "") then {_IDCard select 0;} else {[_attachedObject] call FCLA_Common_fnc_getCleanName;};
  _originalPlaceOfBirth = if ((_IDCard select 2) != "") then {_IDCard select 2;} else {[false, false, false] call FCLA_Common_fnc_getRandomLocation;};
  _originalPlaceOfBirth = if (_originalPlaceOfBirth != "") then {_originalPlaceOfBirth;} else {"X-X-X-X-X-X";};
  _isEOD = if ([_attachedObject, "EOD"] call FCLA_Common_fnc_checkUnitTrait) then {0;} else {1;};
  _isDoctor = if ([_attachedObject, "Doctor"] call FCLA_Common_fnc_checkUnitTrait) then {0;} else {1;};
  _isAdvancedEnginner = if ([_attachedObject, "Advanced Enginner"] call FCLA_Common_fnc_checkUnitTrait) then {0;} else {1;};


  ["NUEVA IDENTIFICACIÓN",
	[
	 ["EDIT", "Nombre",
	  [
	   _originalName,
	   {},
	   nil
	  ],
    true
	 ],
   ["EDIT", "Años",
	  [
	   _originalAge,
	   nil,
	   nil
	  ],
    true
	 ],
   ["EDIT", "Lugar de nacimiento",
	  [
	   _originalPlaceOfBirth,
	   nil,
	   nil
	  ],
    true
	 ],
   ["TOOLBOX", "Médico",
    [
     _isDoctor,
     1,
     2,
     ["Si", "No"],
     nil
    ],
    true
   ],
   ["TOOLBOX", "Ingeniero",
    [
     _isAdvancedEnginner,
     1,
     2,
     ["Si", "No"],
     nil
    ],
    true
   ],
   ["TOOLBOX", "EOD",
    [
     _isEOD,
     1,
     2,
     ["Si", "No"],
     nil
    ],
    true
   ]
	],
  {
    (_this select 1) params ["_position", "_attachedObject"];
    (_this select 0) params ["_newName", "_newAge", "_newPlaceOfBirth", "_doctorState", "_advancedEnginnerState", "_EODState"];
    _EODState = if (_EODState == 0) then {true;} else {false;};
    _doctorState = if (_doctorState == 0) then {true;} else {false;};
    _advancedEnginnerState = if (_advancedEnginnerState == 0) then {true;} else {false;};

    _module = createAgent ["FCLA_Module_Set_ID", _position, [], 0, "CAN_COLLIDE"];
    _module synchronizeObjectsAdd [_attachedObject];
    _module setVariable ["FCLA_New_Age", _newAge, true];
    _module setVariable ["FCLA_New_Name", _newName, true];
    _module setVariable ["FCLA_New_Place_Of_Birth", _newPlaceOfBirth, true];
    _module setVariable ["FCLA_EOD_State", _EODState, true];
    _module setVariable ["FCLA_Doctor_State", _doctorState, true];
    _module setVariable ["FCLA_Advanced_Enginner_State", _advancedEnginnerState, true];
    ["IDENTIFICACIÓN MODIFICADA CON ÉXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, [_position, _attachedObject]] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\ID_Card.paa"] call ZEN_Custom_Modules_fnc_Register;
