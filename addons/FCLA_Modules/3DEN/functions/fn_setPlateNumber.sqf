
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica la matrícula de los vehículos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module", "_synchronizedObjects", "_isActivated"];
if (!FCLA_Plate_Number_Allowed) exitWith {["FCLA_Module_Plate_Number", "• MÓDULO: MODIFICAR MATRÍCULA", "¡Las matrículas se encuentran desactivadas por medio del addon option: FCLA Interacciones!"] spawn FCLA_Modules_fnc_reportError3DEN;};



//Verificar argumentos.
_newPlateNumber = _module getVariable ["FCLA_New_Plate_Number", ""];
_areNotCompatibleSynchronizedObjects = ({(_x isKindOf "Car") || (_x isKindOf "Tank") || (_x isKindOf "Ship_F")} count _synchronizedObjects) <= 0;
if ((is3DEN) || (!_isActivated) || (_newPlateNumber == "") || (_areNotCompatibleSynchronizedObjects)) exitWith {};



//Modificar matrícula.
{
  _isNotCompatibleVehicle = !(_x isKindOf "Car") && !(_x isKindOf "Tank") && !(_x isKindOf "Ship_F");
  if (_isNotCompatibleVehicle) exitWith {};
  _x setPlateNumber _newPlateNumber;
  _x setVariable ["FCLA_Plate_Number", _newPlateNumber, true];
} forEach _synchronizedObjects;
