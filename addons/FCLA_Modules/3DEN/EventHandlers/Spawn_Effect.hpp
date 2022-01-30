
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un efecto.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Module_Spawn_Effect", {
  params ["_logic", "_effect", "_delayEffect"];
  if (isServer) exitWith {};

  switch (_effect) do {
    case "SPARKS": {[_logic, _delayEffect] spawn FCLA_Modules_fnc_spawnSparks3DEN;};
    case "FIREFLIES": {[_logic] spawn FCLA_Modules_fnc_spawnFireflies3DEN;};
    case "WIND_GUST": {[_logic, _delayEffect] spawn FCLA_Modules_fnc_spawnWindGust3DEN;};
  };

  if (!DEBUG) exitWith {};
  ["[FCLA] (modules): Módulo 'Spawn Effect' ejecutado."] call ACE_Common_fnc_serverLog;
}] call CBA_fnc_addEventHandler;
