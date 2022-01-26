
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un efecto.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Spawn_Effect", {
  params ["_logic", "_effect", "_delayEffect"];
  _logicPos = getPos _logic;

  switch (_effect) do {
    case "FIRE": {
      _effectObj = "test_EmptyObjectForFireBig" createVehicleLocal _logicPos;
      _effectObj attachTo [_logic, [0, 0, 1]];
      [{(!alive (_this select 0)) || (!alive (_this select 1))}, {{deleteVehicle _x} forEach _this;}, [_logic, _effectObj]] call CBA_fnc_waitUntilAndExecute;
    };

    case "SMOKE": {
      _effectObj = "test_EmptyObjectForSmoke" createVehicleLocal _logicPos;
      _effectObj attachTo [_logic, [0, 0, 1]];
      [{(!alive (_this select 0)) || (!alive (_this select 1))}, {{deleteVehicle _x} forEach _this;}, [_logic, _effectObj]] call CBA_fnc_waitUntilAndExecute;
    };

    case "SPARKS": {[_logic, _delayEffect] spawn FCLA_Modules_fnc_spawnSparks3DEN;};
    case "FIREFLIES": {[_logic] spawn FCLA_Modules_fnc_spawnFireflies3DEN;};
    case "WIND_GUST": {[_logic, _delayEffect] spawn FCLA_Modules_fnc_spawnWindGust3DEN;};
  };

  if (!DEBUG) exitWith {};
  ["[FCLA] (modules): Módulo 'Spawn Effect' ejecutado."] call ACE_Common_fnc_serverLog;
}] call CBA_fnc_addEventHandler;
