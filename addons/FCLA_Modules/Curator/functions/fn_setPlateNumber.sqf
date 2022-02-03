
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica la matricula del vehiculo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Modificar matricula", {
  params ["_position", "_attachedObject"];
  _plateNumber = _attachedObject getVariable ["FCLA_Plate_Number", ""];
  _allCompatibleVehicles = vehicles select {(_x isKindOf "Car") || (_x isKindOf "Tank") || (_x isKindOf "Ship_F")};
  if (!FCLA_Plate_Number_Allowed) exitWith {["¡LAS MATRICULAS ESTAN DESACTIVADAS POR EL ADDON OPTION: FCLA INTERACCIONES!"] call ZEN_Common_fnc_showMessage;};
  if ((isNull _attachedObject) || !(_attachedObject in _allCompatibleVehicles)) exitWith {["ERROR! EL MODULO DEBE SER COLOCADO SOBRE UN VEHICULO COMPATIBLE"] call ZEN_Common_fnc_showMessage;};
  _originalPlateNumber = if (_plateNumber != "") then {_plateNumber;} else {getPlateNumber _attachedObject;};

  ["NUEVA MATRICULA",
	[
   ["EDIT", "Matricula",
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
    (_this select 1) params ["_position", "_attachedObject"];

    _attachedObject setPlateNumber _newPlateNumber;
    _attachedObject setVariable ["FCLA_Plate_Number", _newPlateNumber, true];
    ["MATRICULA MODIFICADA CON EXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Vehicle.paa"] call ZEN_Custom_Modules_fnc_Register;
