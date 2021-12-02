
/* ----------------------------------------------------------------------------
Script: "\FCLA_Modules\PEM\scripts\Affect_Vision.sqf"

Description:
    Script llamado de manera global que genera un efecto visual a los jugadores
    que se encuentren a una distancia enviada de un objeto enviado al detonar
    el PEM.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_object","_range"];


if (([player, _object] call CBA_fnc_getDistance) <= _range) then {
  sleep 1;
  hint parseText "<t color='#FF0000'>Te has visto afectado por un pulso PEM.<br/>Tus accesorios electrónicos se han destruido.</t>";
  cutText ["", "WHITE OUT", 1];
  sleep 0.1;
  titleCut ["", "WHITE IN", 1];
  "dynamicBlur" ppEffectEnable true;
  "dynamicBlur" ppEffectAdjust [5];
  "dynamicBlur" ppEffectCommit 0;
  sleep 1;
  "dynamicBlur" ppEffectAdjust [1];
  "dynamicBlur" ppEffectCommit 1;
  sleep 5;
  playsound "FCLA_Deafness";
  "dynamicBlur" ppEffectAdjust [0];
  "dynamicBlur" ppEffectCommit 10;
  sleep 10;
  "dynamicBlur" ppEffectEnable false;
};
