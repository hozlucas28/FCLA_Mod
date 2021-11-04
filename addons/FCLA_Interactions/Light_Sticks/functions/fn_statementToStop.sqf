
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Cancela la animación de los palillos de luz.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];


//Cancelar animación.
[_player] call FCLA_Common_fnc_hideSubtitles;
[_player, '', 'SwitchMove', true] spawn FCLA_Common_fnc_playAnimation;
