
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
        ["_isActivated", true, [true], 0]
       ];
_forceDeactivation = _module getvariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Alternar luces.
_moduleArea = _module getvariable ["objectArea", [0, 0, 0, false, -1]];
[{
  _state = (_this select 0) getVariable ["FCLA_Lights_State", "Off"];
  _excludeVehicles = (_this select 0) getVariable ["FCLA_Exclude_Vehicles", false];
  [_this select 0, _this select 1, _state, _excludeVehicles] call FCLA_Common_fnc_switchLights;
}, [_module, selectMax [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4]], 0.1] call CBA_fnc_waitAndExecute;


//Eliminar módulo.
deleteVehicle _module;
