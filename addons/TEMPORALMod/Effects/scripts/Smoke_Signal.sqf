
/* ----------------------------------------------------------------------------
Script: "\FCLA_Modules\Effects\scripts\Smoke_Signal.sqf"

Description:
    Genera la detonación de un proyectil de humo en la posición
		del módulo con el color enviado.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module", "_color"];



_modulePosATL = getposATL _module;
switch _color do {
	case "White": {_color = [1,1,1];};
	case "Red": {_color = [1,0.253,0];};
	case "Blue": {_color = [0.266,0.537,1];};
	case "Green": {_color = [0.1,0.5,0.05];};
	case "Orange": {_color = [1,0.54,0.21];};
	case "Yellow": {_color = [0.956,1,0.21];};
	case "Purple": {_color = [0.8,0.432,0.8,1];};
};
[[_modulePosATL, _color],"\FCLA_Interactions\Smoke_Signal\scripts\Blow.sqf"] remoteExec ["execVM"];
