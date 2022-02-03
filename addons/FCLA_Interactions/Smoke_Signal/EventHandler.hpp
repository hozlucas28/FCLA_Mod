
/********************************************************************************|
|                   CONTROLADORES DE EVENTOS - "SENAL DE HUMO"                   |
|********************************************************************************/

["FCLA_Smoke_Signal", {
  params ["_logic", "_logicPos", "_smokeColor"];
  if (isServer) exitWith {};

  _lightObj = "#lightpoint" createVehicleLocal _logicPos;
  _lightObj setPos _logicPos;
  _lightObj setLightBrightness 2;
  _lightObj setLightDayLight true;
  _lightObj setLightColor [1, 1, 1];
  _lightObj setLightAmbient [1, 1, 1];
  _lightObj setLightFlareMaxDistance 2000;
  _lightObj setLightAttenuation [1, 0, 0, 0, 0, 50];
  [{deleteVehicle _this;}, _lightObj, 0.2] call CBA_fnc_waitAndExecute;

  drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 3, 0], "", "Billboard", 1, 0.3, [_logicPos select 0, _logicPos select 1, (_logicPos select 2) + 0.5], [0, 0, 0], 0, 11, 7, 0, [1, 5], [[1, 1, 1, 1], [1, 1, 1, 0]], [1], 0, 0, "", "", ""];
  drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 14, 5, 1], "", "Billboard", 1, 0.5, [_logicPos select 0, _logicPos select 1, (_logicPos select 2) + 0.1], [0, 0, 0], 0, 11, 7, 0, [1, 10], [[1, 1, 1, 1], [1, 1, 1, 0]], [2], 0, 0, "", "", ""];
  drop [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d", 8, 0, 40, 0], "", "Billboard", 1, 0.3, [_logicPos select 0, _logicPos select 1, (_logicPos select 2) + 0.3], [0, 0, 0], 3, 10.2, 8, 0.01, [0, 20], [[_smokeColor select 0, _smokeColor select 1, _smokeColor select 2, 1], [_smokeColor select 0, _smokeColor select 1, _smokeColor select 2, 0]], [0.1], 0, 0, "", "", ""];

  _soundSourceOne = "VirtualAISquad" createVehicleLocal _logicPos;
  _soundSourceTwo = "VirtualAISquad" createVehicleLocal _logicPos;
  _soundSourceOne setPos _logicPos;
  _soundSourceTwo setPos _logicPos;
  _soundSourceOne say3D ["FCLA_Smoke_Explosion", 2000, 1, false, 0];
  _soundSourceTwo say3D ["FCLA_Smoke_Explosion_Echo", 3000, 1, false, 0];

  [{
    params ["_logicPos", "_smokeColor"];
    _particleObj = "#particlesource" createVehicleLocal _logicPos;
    _particleObj setPos _logicPos;
    _particleObj setDropInterval 0.01;
    _particleObj setParticleCircle [0, [0, 0, 0]];
    _particleObj setParticleRandom [1, [1, 1, 1], [0.5, 0.5, 0.5], 1, 0, [0, 0, 0, 0], 0, 0];
    _particleObj setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d", 8, 0, 40, 0], "", "Billboard", 1, FCLA_Smoke_Signal_Time, [0, 0, 0], [0, 0, 0], 5, 10.2, 8, 0.05, [5, 20], [[_smokeColor select 0, _smokeColor select 1, _smokeColor select 2, 1], [_smokeColor select 0, _smokeColor select 1, _smokeColor select 2, 0.5], [_smokeColor select 0, _smokeColor select 1, _smokeColor select 2, 0.3], [_smokeColor select 0, _smokeColor select 1, _smokeColor select 2, 0]], [0.3], 0, 0, "", "", _logicPos];
    [{deleteVehicle _this;}, _particleObj, 0.1] call CBA_fnc_waitAndExecute;
  }, [_logicPos, _smokeColor], 0.2] call CBA_fnc_waitAndExecute;
  [{{deleteVehicle _x;} forEach _this;}, [_logic, _soundSourceOne, _soundSourceTwo], 4] call CBA_fnc_waitAndExecute;
}] call CBA_fnc_addEventHandler;
