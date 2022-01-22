
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
if ((is3DEN) || (isNull _module) || (_synchronizedObjects isEqualTo []) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_newPlateNumber = _module getVariable ["FCLA_New_Plate_Number", ""];
_compatibleSynchronizedObjects = _synchronizedObjects select {(_x isKindOf "Car") || (_x isKindOf "Tank") || (_x isKindOf "Ship_F")};
if (!FCLA_Plate_Number_Allowed) then {["FCLA_Module_Plate_Number", "• MÓDULO: MODIFICAR MATRÍCULA", "¡Las matrículas se encuentran desactivadas por medio del addon option: FCLA Interacciones!"] spawn FCLA_Common_fnc_errorMessage;};
if ((_newPlateNumber == "") || ((count _compatibleSynchronizedObjects) <= 0)) exitWith {["¡Error! El/Un módulo 'Modificar matrícula' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Modificar matrícula.
{
  _x setPlateNumber _newPlateNumber;
  _x setVariable ["FCLA_Plate_Number", _newPlateNumber, true];
} forEach _compatibleSynchronizedObjects;


//Eliminar módulo.
deleteVehicle _module;
