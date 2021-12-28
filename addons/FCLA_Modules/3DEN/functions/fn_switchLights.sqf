
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
_forceDeactivation = _module getVariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Alternar luces.
_moduleArea = _module getVariable ["objectArea", [0, 0, 0, false, -1]];
_lightsState = _module getVariable ["FCLA_Lights_State", "Off"];
_excludeVehicles = _module getVariable ["FCLA_Exclude_Vehicles", false];
[{_this call FCLA_Common_fnc_switchLights;}, [getPos _module, _moduleArea, _lightsState, _excludeVehicles], 0.1] call CBA_fnc_waitAndExecute;


//Eliminar módulo.
deleteVehicle _module;
