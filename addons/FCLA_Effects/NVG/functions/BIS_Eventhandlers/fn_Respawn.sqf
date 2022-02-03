
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Desactiva el efecto del postprocesado que cambia el color de la vision nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_corpse"];



{[_x, false] spawn FCLA_Effects_fnc_switchEffectNVG;} forEach [_unit, _corpse];
