
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica las radios de los vehículos.
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
_areNotCompatibleSynchronizedObjects = ({_x in vehicles} count _synchronizedObjects) <= 0;
if (_areNotCompatibleSynchronizedObjects) exitWith {["¡Error! El/Un módulo 'Modificar radio (TFAR)' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Modificar identificación.
{
  _isNotKindOfVehicle = !(_x in vehicles);
  if (_isNotKindOfVehicle) exitWith {};
  _x setVariable ["tf_hasRadio", _hasRadio, true];
  _x setVariable ["tf_side", _radioSideSelected, true];
} forEach _synchronizedObjects;


//Eliminar módulo.
deleteVehicle _module;
