
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica las radios de los vehiculos.
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



//Verificar argumento.
_hasRadio = _module getVariable ["FCLA_Has_Radio", false];
_radioSideSelected = _module getVariable ["FCLA_Radio_Side", "west"];
_compatibleSynchronizedObjects = _synchronizedObjects select {_x in vehicles};
if ((count _compatibleSynchronizedObjects) <= 0) exitWith {["FCLA_Module_Radio", "- MODULO: MODIFICAR RADIO (TFAR)", "¡Error! El/Un modulo 'Modificar radio (TFAR)' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};



//Modificar identificacion.
{
  _x setVariable ["tf_hasRadio", _hasRadio, true];
  _x setVariable ["tf_side", _radioSideSelected, true];
} forEach _compatibleSynchronizedObjects;


//Eliminar modulo.
deleteVehicle _module;
