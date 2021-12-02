
/* ----------------------------------------------------------------------------
Script: "\FCLA_Modules\global\camShake.sqf"

Description:
    Script llamado de manera global que genera un temblor de cámara a los
    jugadores que se encuentren a una distancia enviada de un objeto enviado.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_object","_range","_customValues"];


if (([player, _object] call CBA_fnc_getDistance) <= _range) then {
  enableCamShake true;
  addCamShake _customValues;
};
