
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
    (_this select 1) params ["_position", "_attachedObject"];

    private ["_position", "_attachedObject", "_newPlateNumber"];
    private _moduleGroup = createGroup [sideLogic, true];
    "FCLA_Module_Plate_Number" createUnit [_position, _moduleGroup, "
      this setPos _position;
      this setVariable ['FCLA_New_Plate_Number', _newPlateNumber, true];
      this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];
      this synchronizeObjectsAdd [_attachedObject];
    "];
    ["MATRÍCULA MODIFICADA CON ÉXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Vehicle.paa"] call ZEN_Custom_Modules_fnc_Register;
