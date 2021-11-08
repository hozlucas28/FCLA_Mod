
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Activa la señal de humo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];

playsound "FCLA_Switch_Smoke_Signal";
_player setVariable ["FCLA_Smoke_Signal", true];
