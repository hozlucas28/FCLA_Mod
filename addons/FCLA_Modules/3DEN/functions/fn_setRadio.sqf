
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
_assignedEntity = _module getVariable ["FCLA_Assigned_Entity", objNull];
_assignedCurator = _module getVariable ["FCLA_Assigned_Curator", objNull];
_forceDeactivation = _module getVariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (_synchronizedObjects isEqualTo []) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Verificar argumento.
_hasRadio = _module getVariable ["FCLA_Has_Radio", false];
_radioSideSelected = _module getVariable ["FCLA_Radio_Side", "west"];
_compatibleSynchronizedObjects = {_x in vehicles} count _synchronizedObjects;
_areNotCompatibleSynchronizedObjects = if (isNull _assignedEntity) then {_compatibleSynchronizedObjects <= 0;} else {false;};
if (_areNotCompatibleSynchronizedObjects) exitWith {["¡Error! El/Un módulo 'Modificar radio (TFAR)' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Modificar identificación.
if (isNull _assignedEntity) then {
  {
    if ((_x in vehicles) && !(_x isKindOf "EmptyDetector")) then {
      _x setVariable ["tf_hasRadio", _hasRadio, true];
      _x setVariable ["tf_side", _radioSideSelected, true];
    };
  } forEach _synchronizedObjects;
} else {
  _assignedEntity setVariable ["tf_hasRadio", _hasRadio, true];
  _assignedEntity setVariable ["tf_side", _radioSideSelected, true];
};


//Eliminar módulo.
deleteVehicle _module;
