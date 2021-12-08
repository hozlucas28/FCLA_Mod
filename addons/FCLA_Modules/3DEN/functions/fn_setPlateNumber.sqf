
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica la matrícula de los vehículos enviados.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module", "_synchronizedObjects", "_isActivated"];



//Verificar argumentos.
_newPlateNumber = _module getVariable ["FCLA_New_Plate_Number", ""];
_areNotCompatibleSynchronizedObjects = ({(_x isKindOf "Car") || (_x isKindOf "Tank") || (_x isKindOf "Ship_F")} count _synchronizedObjects) <= 0;
if ((is3DEN) || (!_isActivated) || (_newPlateNumber == "") || (_areNotCompatibleSynchronizedObjects)) exitWith {};



//Modificar matrícula.
{
  _isNotCompatibleVehicle = !(_x isKindOf "Car") && !(_x isKindOf "Tank") && !(_x isKindOf "Ship_F");
  if (_isNotCompatibleVehicle) exitWith {};
  _x setVariable ["FCLA_Plate_Number", _newPlateNumber, true];
} forEach _synchronizedObjects;
//ANUNCIAR QUE SE NECESITA UN ADDON OPTION ACTIVADO
