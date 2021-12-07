
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo que modifica la matrícula del vehículo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Modificar matrícula", {
  params ["_position", "_attachedObject"];
  _plateNumber = _attachedObject getVariable ["FCLA_Plate_Number", ""];
  _allCompatibleVehicles = vehicles select {(_x isKindOf "Car") || (_x isKindOf "Tank") || (_x isKindOf "Ship_F")};
  if (!FCLA_Plate_Number_Allowed) exitWith {["¡LAS MATRÍCULAS ESTAN DESACTIVADAS POR EL ADDON OPTION: FCLA INTERACCIONES!"] call ZEN_Common_fnc_showMessage;};
  if ((isNull _attachedObject) || !(_attachedObject in _allCompatibleVehicles)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN VEHÍCULO COMPATIBLE"] call ZEN_Common_fnc_showMessage;};
  _originalPlateNumber = if (_plateNumber != "") then {_plateNumber;} else {getPlateNumber _attachedObject;};

  ["NUEVA MATRÍCULA",
	[
   ["EDIT", "Matrícula",
	  [
	   _originalPlateNumber,
	   nil,
	   nil
	  ],
    true
	 ]
	],
  {
    (_this select 0) params ["_newPlateNumber"];
    ["MATRÍCULA MODIFICADA CON ÉXITO"] call ZEN_Common_fnc_showMessage;
    (_this select 1) setVariable ["FCLA_Plate_Number", _newPlateNumber, true];
  }, {}, _attachedObject] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Zeus\data\Vehicle.paa"] call ZEN_Custom_Modules_fnc_Register;
