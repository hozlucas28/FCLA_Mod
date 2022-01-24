
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Enciende/Apaga las luces (lamparas y/o vehículos), enviadas como argumento 0.
 *
 * Arguments:
 *            0: Lamparas y/o vehículos. <ARRAY OF OBJECTS>
 *            1: ¿Encender?. <BOOL>
 *
 * Example:
 * _lampsAndVehicles = nearestObjects [getPos player, ["Building", "AllVehicles"], 150];
 * ["FCLA_Switch_Lights", [_lampsAndVehicles, false]] call CBA_fnc_globalEvent;
 *
 * Note:
 * Su estructura y método de operación se basa en la función "BIS_fnc_switchLamp" (función del juego vanilla).
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
