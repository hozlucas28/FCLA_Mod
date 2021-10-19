
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera dos efectos de partículas, los cuales dependeran del tipo de
 * superficie enviado.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_plane", "_groundType", "_surfacePos", "_velocity", "_speed"];



//Tierra.
if (_groundType == "Dust") exitWith {
  _particleObjOne = createVehicle ["#particlesource", _surfacePos, [], 0, "CAN_COLLIDE"];
  _particleObjOne setParticleParams [
  ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 13, 0], "", "Billboard",
  1, 1, [((_velocity select 0) * 0.01), (((_velocity select 1) * 0.01) - (_speed * 0.05)), 0], [0, 0, 0], 1.25, 1, 1, 0.01, [4, 6, 0],
  [[1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0.02], [1, 1, 0.8, 0.06], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0]],
  [0], 0.1, 0.05, "", "", _plane, 0, true];
  _particleObjOne setParticleCircle [1.2, [(_speed * 0.02), (_speed * 0.02), 1]];
  _particleObjOne setParticleRandom [0.4, [4, 4, 0.5], [5, 1, 1], 0.5, 0.2, [0, 0, 0, 0], 0, 0, 0];
  _particleObjOne setDropInterval 0.005;

  _particleObjTwo = createVehicle ["#particlesource", _surfacePos, [], 0, "CAN_COLLIDE"];
  _particleObjTwo setParticleParams [
  ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 13, 0], "", "Billboard",
  1, 2, [((_velocity select 0) * 0.01), (((_velocity select 1) * 0.01) - (_speed * 0.05)), 0], [0, 0, 0], 1.25, 1, 1, 0.01, [20, 12, 0],
  [[1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0.02], [1, 1, 0.8, 0.06], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0], [1, 1, 0.8, 0]],
  [0], 0.1, 0.05, "", "", _plane, 0, true];
  _particleObjTwo setParticleCircle [3, [(_speed * 0.02), (_speed * 0.02), 0]];
  _particleObjTwo setParticleRandom [0.4, [10, 4, 0.5], [5, 1, 1], 0.5, 0.2, [0, 0, 0, 0], 0, 0, 0];
  _particleObjTwo setDropInterval 0.005;
  [{{deleteVehicle _x;} forEach _this;}, [_particleObjOne, _particleObjTwo], 0.08] call CBA_fnc_waitAndExecute;
};


//Agua.
if (_groundType == "Water") exitWith {
  _particleObjOne = createVehicle ["#particlesource", _surfacePos, [], 0, "CAN_COLLIDE"];
  _particleObjOne setParticleParams [
  ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 13, 0], "", "Billboard",
  1, 1, [((_velocity select 0) * 0.01), (((_velocity select 1) * 0.01) - (_speed * 0.05)), 0], [0, 0, 0], 1.25, 1, 1, 0.01, [4, 6, 0],
  [[0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0.02], [0.7, 0.8, 1, 0.06], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0]],
  [0], 0.1, 0.05, "", "", _plane, 0, true];
  _particleObjOne setParticleCircle [1.2, [(_speed * 0.02), (_speed * 0.02), 1]];
  _particleObjOne setParticleRandom [0.4, [4, 4, 0.5], [5, 1, 1], 0.5, 0.2, [0, 0, 0, 0], 0, 0, 0];
  _particleObjOne setDropInterval 0.005;

  _particleObjTwo = createVehicle ["#particlesource", _surfacePos, [], 0, "CAN_COLLIDE"];
  _particleObjTwo setParticleParams [
  ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 13, 0], "", "Billboard",
  1, 2, [((_velocity select 0) * 0.01), (((_velocity select 1) * 0.01) - (_speed * 0.05)), 0], [0, 0, 0], 1.25, 1, 1, 0.01, [20, 12, 0],
  [[0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0.02], [0.7, 0.8, 1, 0.06], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0], [0.7, 0.8, 1, 0]],
  [0], 0.1, 0.05, "", "", _plane, 0, true];
  _particleObjTwo setParticleCircle [3, [(_speed * 0.02), (_speed * 0.02), 0]];
  _particleObjTwo setParticleRandom [0.4, [10, 4, 0.5], [5, 1, 1], 0.5, 0.2, [0, 0, 0, 0], 0, 0, 0];
  _particleObjTwo setDropInterval 0.005;
  [{{deleteVehicle _x;} forEach _this;}, [_particleObjOne, _particleObjTwo], 0.08] call CBA_fnc_waitAndExecute;
};
