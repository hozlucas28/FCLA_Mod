
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica las matrículas de los vehículos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
_forceDeactivation = _module getvariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (_synchronizedObjects isEqualTo []) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Verificar argumentos.
_newPlateNumber = _module getVariable ["FCLA_New_Plate_Number", ""];
_areNotCompatibleSynchronizedObjects = ({(_x isKindOf "Car") || (_x isKindOf "Tank") || (_x isKindOf "Ship_F")} count _synchronizedObjects) <= 0;
if (!FCLA_Plate_Number_Allowed) then {["FCLA_Module_Plate_Number", "• MÓDULO: MODIFICAR MATRÍCULA", "¡Las matrículas se encuentran desactivadas por medio del addon option: FCLA Interacciones!"] spawn FCLA_Modules_fnc_reportError3DEN;};
if ((_newPlateNumber == "") || (_areNotCompatibleSynchronizedObjects)) exitWith {["¡Error! El/Un módulo 'Modificar matrícula' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Modificar matrícula.
{
  _isNotCompatibleVehicle = !(_x isKindOf "Car") && !(_x isKindOf "Tank") && !(_x isKindOf "Ship_F");
  if (_isNotCompatibleVehicle) exitWith {};
  _x setPlateNumber _newPlateNumber;
  _x setVariable ["FCLA_Plate_Number", _newPlateNumber, true];
} forEach _synchronizedObjects;


//Eliminar módulo.
deleteVehicle _module;
