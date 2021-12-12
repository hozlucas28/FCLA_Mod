
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Enciende/Apaga todas las luces dentro del tamaño de zona, determinado
 * por el módulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", false, [true], 0]
       ];
_moduleArea = _module getvariable ["objectArea", [0, 0, 0, false, -1]];
_sizeA = _moduleArea select 0;
_sizeB = _moduleArea select 1;
if ((is3DEN) || (isNull _module) || (!_isActivated)) exitWith {};



//Alternar luces.
[{
  _state = (_this select 0) getVariable ["FCLA_Lights_State", "Off"];
  [_this select 0, _this select 1, _state] call FCLA_Common_fnc_switchLights;
}, [_module, selectMax [_sizeA, _sizeB]], 0.1] call CBA_fnc_waitAndExecute;
