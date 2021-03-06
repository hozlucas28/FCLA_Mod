
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica las matriculas de los vehiculos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (_synchronizedObjects isEqualTo []) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_newPlateNumber = _module getVariable ["FCLA_New_Plate_Number", ""];
_compatibleSynchronizedObjects = _synchronizedObjects select {(_x isKindOf "Car") || (_x isKindOf "Tank") || (_x isKindOf "Ship_F")};
if ((_newPlateNumber == "") || ((count _compatibleSynchronizedObjects) <= 0)) exitWith {["FCLA_Module_Plate_Number", "- MODULO: MODIFICAR MATRICULA", "¡Error! El/Un modulo 'Modificar matricula' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};



//Modificar matricula.
{
  _x setPlateNumber _newPlateNumber;
  _x setVariable ["FCLA_Plate_Number", _newPlateNumber, true];
} forEach _compatibleSynchronizedObjects;


//Eliminar modulo.
deleteVehicle _module;
