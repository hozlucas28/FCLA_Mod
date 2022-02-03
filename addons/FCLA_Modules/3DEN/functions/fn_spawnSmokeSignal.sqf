
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera una senal de humo en la posicion del modulo.
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



//Verificar argumentos.
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



//Generar senal de humo.
_jipID = ["FCLA_Smoke_Signal", [_module, _modulePos, _smokeColor]] call CBA_fnc_globalEventJIP;
[_jipID, _module] call CBA_fnc_removeGlobalEventJIP;
