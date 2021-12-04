
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
  if (!FCLA_ID_Card_Allowed) exitWith {["¡LAS IDENTIFICACIONES ESTAN DESACTIVADAS POR EL ADDON OPTION: FCLA INTERACCIONES!"] call ZEN_Common_fnc_showMessage;};
  if ((isNull _attachedObject) || !(_attachedObject in allUnits)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UNA UNIDAD"] call ZEN_Common_fnc_showMessage;};


  _originalAge = if ((_IDCard select 1) != "") then {_IDCard select 1;} else {[19, 65, true] call FCLA_Common_fnc_getRandomNumber;};
  _originalName = if ((_IDCard select 0) != "") then {_IDCard select 0;} else {[_attachedObject] call FCLA_Common_fnc_getCleanName;};
  _originalPlaceOfBirth = if ((_IDCard select 2) != "") then {_IDCard select 2;} else {[false, false, false] call FCLA_Common_fnc_getRandomLocation;};


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
	 ]
	],
  {
    (_this select 0) params ["_nameSelected", "_ageSelected", "_placeOfBirthSelected"];
    (_this select 1) setVariable ["FCLA_ID", [_nameSelected, _ageSelected, _placeOfBirthSelected], true];
    ["IDENTIFICACIÓN MODIFICADA CON ÉXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _attachedObject] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Data\ACE_Actions\ID_Card.paa"] call ZEN_Custom_Modules_fnc_Register;
