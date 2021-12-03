
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica la identificación de la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Modificar ID", {
  params ["_position", "_attachedObject"];
  _IDCard = _attachedObject getVariable ["FCLA_ID", ["", "", ""]];
  if ((isNull _attachedObject) || !(_attachedObject in allUnits)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UNA UNIDAD"] call ZEN_Common_fnc_showMessage;};


  _age = if ((_IDCard select 1) != "") then {_IDCard select 1;} else {[19, 65, true] call FCLA_Common_fnc_getRandomNumber;};
  _name = if ((_IDCard select 0) != "") then {_IDCard select 0;} else {[_attachedObject] call FCLA_Common_fnc_getCleanName;};
  _placeOfBirth = if ((_IDCard select 2) != "") then {_IDCard select 2;} else {[false, false, false] call FCLA_Common_fnc_getRandomLocation;};
  _this = [_attachedObject, _name, _age, _placeOfBirth];


  ["NUEVA IDENTIFICACIÓN",
	[
	 ["EDIT", "Nombre",
	  [
	   _this select 1,
	   {},
	   nil
	  ]
	 ],
   ["EDIT", "Años",
	  [
	   _this select 2,
	   nil,
	   nil
	  ]
	 ],
   ["EDIT", "Lugar de nacimiento",
	  [
	   _this select 3,
	   nil,
	   nil
	  ]
	 ]
	],
  {
    (_this select 0) params ["_newName", "_newAge", "_newPlaceOfBirth"];
    (_this select 1) params ["_attachedObject"];
    _attachedObject setVariable ["FCLA_ID", [_newName, _newAge, _newPlaceOfBirth], true];
    ["IDENTIFICACIÓN MODIFICADA CON ÉXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Data\ACE_Actions\ID_Card.paa"] call ZEN_Custom_Modules_fnc_Register;
