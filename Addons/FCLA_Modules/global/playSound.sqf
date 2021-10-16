
/* ----------------------------------------------------------------------------
Script: "\FCLA_Modules\global\playSound.sqf"

Description:
    Script llamado de manera global que reproduce un sonido para los
    jugadores que se encuentren a una distancia enviada de un objeto enviado
    al detonar el PEM.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_object","_range","_sound"];


if (([player, _object] call CBA_fnc_getDistance) <= _range) then {playSound _sound;};
