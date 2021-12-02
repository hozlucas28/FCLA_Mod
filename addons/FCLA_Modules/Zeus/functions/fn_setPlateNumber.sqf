
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica la matrícula del vehículo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Modificar matrícula", {
  params ["_position", "_attachedObject"];
  _plateNumber = _attachedObject getVariable ["FCLA_Plate_Number", ""];
  _allCompatibleVehicles = vehicles select {(_x isKindOf "Car") || (_x isKindOf "Tank") || (_x isKindOf "Ship_F")};
  if (!FCLA_Plate_Number_Allowed) exitWith {["¡LAS MATRÍCULAS ESTAN DESACTIVADAS POR EL ADDON OPTION: FCLA INTERACCIONES!"] call ZEN_Common_fnc_showMessage;};
  if ((isNull _attachedObject) || !(_attachedObject in _allCompatibleVehicles)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN VEHÍCULO COMPATIBLE"] call ZEN_Common_fnc_showMessage;};


  _plateNumber = if (_plateNumber != "") then {_plateNumber;} else {getPlateNumber _attachedObject;};
  _this = [_attachedObject, _plateNumber];


  ["NUEVA MATRÍCULA",
	[
   ["EDIT", "Matrícula",
	  [
	   _this select 1,
	   nil,
	   nil
	  ]
	 ]
	],
  {
    (_this select 0) params ["_newPlateNumber"];
    (_this select 1) params ["_attachedObject", "_plateNumber"];
    _attachedObject setVariable ["FCLA_Plate_Number", _newPlateNumber, true];
    ["MATRÍCULA MODIFICADA CON ÉXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, ""] call ZEN_Custom_Modules_fnc_Register;
