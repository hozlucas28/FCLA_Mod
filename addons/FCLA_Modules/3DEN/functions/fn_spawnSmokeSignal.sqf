
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera una señal de humo en la posición del módulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (!_isActivated)) exitWith {};



//Obtener argumentos.
_modulePos = getPosATL _module;
_smokeColor = toUpper (_module getVariable ["FCLA_Color", "white"]);
_smokeColor = switch (_smokeColor) do {
  case "RED": {[1, 0.253, 0, 1];};
  case "BLUE": {[0.266, 0.537, 1, 1];};
  case "GREEN": {[0.1, 0.5, 0.05, 1];};
  case "ORANGE": {[1, 0.54, 0.21, 1];};
  case "YELLOW": {[0.956, 1, 0.21, 1];};
  case "PURPLE": {[0.8, 0.432, 0.8, 1];};
  default {[1, 1, 1, 1];};
};


//Generar señal de humo.
["FCLA_Smoke_Signal", [_module, _modulePos, _smokeColor]] call CBA_fnc_remoteEvent;
//["FCLA_Smoke_Signal", [_module, _modulePos, _smokeColor]] call CBA_fnc_globalEvent;
