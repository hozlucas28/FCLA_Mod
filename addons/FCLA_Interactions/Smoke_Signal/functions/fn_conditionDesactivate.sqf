
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede desactivar la señal de humo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];

(FCLA_Smoke_Signal_Allowed) && (["smoke",str ((weaponState _player)#3)] call BIS_fnc_inString) && (_player getVariable "FCLA_Smoke_Signal");
