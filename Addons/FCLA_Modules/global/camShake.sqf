
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


if (player distance _object <= _range) then {
  enableCamShake true;
  addCamShake _customValues;
};
