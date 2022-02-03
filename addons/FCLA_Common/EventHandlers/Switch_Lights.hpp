
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Enciende/Apaga las luces (lamparas y/o vehiculos), enviadas como argumento 0.
 *
 * Arguments:
 *            0: Lamparas y/o vehiculos. <ARRAY OF OBJECTS>
 *            1: ¿Encender?. <BOOL>
 *
 * Example:
 * _lampsAndVehicles = nearestObjects [getPos player, ["Building", "AllVehicles"], 150];
 * ["FCLA_Switch_Lights", [_lampsAndVehicles, false]] call CBA_fnc_globalEvent;
 *
 * Note:
 * Su estructura y metodo de operacion se basa en la funcion "BIS_fnc_switchLamp" (funcion del juego vanilla).
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_Switch_Lights", {
  params [
          ["_lampsAndVehicles", [], [[]], []],
          ["_state", true, [true], 0]
         ];
  if (_lampsAndVehicles isEqualTo []) exitWith {};
  {[_x, _state] call BIS_fnc_switchLamp;} forEach _lampsAndVehicles;
}] call CBA_fnc_addEventHandler;
