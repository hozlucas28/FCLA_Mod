
/* ----------------------------------------------------------------------------
Script: "\FCLA_Interactions\Smoke_Signal\scripts\spawnEffectPos.sqf"

Description:
    Genera el efecto de la detonación del proyectil de humo en la posición enviada
    y con el color enviado.

Arguments:
    _pos - posición donde se generara el efecto.
    _color - color del efecto entre comillas, el cual puede ser: White, Red, Blue, Green, Orange, Yellow ó Purple.

Example:
    		[getPos player, "Red"] execVM "\FCLA_Interactions\Smoke_Signal\scripts\spawnEffectPos.sqf";

Author:
    hozlucas28
---------------------------------------------------------------------------- */

params ["_pos", "_color"];
if (!isserver) exitwith {};



switch _color do
{
	case "White": {_color = [1,1,1]};
	case "Red": {_color = [1,0.253,0]};
	case "Blue": {_color = [0.266,0.537,1]};
	case "Green": {_color = [0.1,0.5,0.05]};
	case "Orange": {_color = [1,0.54,0.21]};
	case "Yellow": {_color = [0.956,1,0.21]};
	case "Purple": {_color = [0.8,0.432,0.8,1]};
};
[[_pos, _color],"\FCLA_Interactions\Smoke_Signal\scripts\Blow.sqf"] remoteExec ["execVM"];
