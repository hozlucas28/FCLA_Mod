
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_initLockDoors

Description:
		Cerrara las puertas de todos los edificios en el radio definido
    por el módulo. Función llamada desde el módulo 'Bloquear puertas'.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module","_synchronizedUnits","_isActivated"];
if (!(_isActivated)) exitWith {};



//Bloquear puertas.
[_module] spawn {
  waitUntil {time > 1};
  _range = (_this#0) getVariable "LD_Range";
  {
    _numberOfDoors = getNumber (configfile >> "CfgVehicles" >> typeOf _x >> "numberOfDoors");
    for "_i" from 0 to _numberOfDoors do {
      _var = format ["bis_disabled_Door_%1", _i];
      _x setVariable [_var, 1, true];
    }
  } forEach (nearestObjects [(_this#0), ["house", "building", "tourism"], _range]);
};
