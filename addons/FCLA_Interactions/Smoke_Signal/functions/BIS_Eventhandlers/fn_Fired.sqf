
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera el efecto de la señal de humo al dispararse un proyectil compatible.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
#include "\FCLA_Interactions\Smoke_Signal\includes\Smoke_Magazines.hpp"



//Verificar argumentos.
_isUnderwater = underwater _unit;
_isDesactivated = !(_unit getVariable ["FCLA_Smoke_Signal", false]);
_isNotCompatibleSmokeMagazine = !(_magazine in _compatibleSmokeMagazines);
if ((!FCLA_Smoke_Signal_Allowed) || (_isUnderwater) || (_isDesactivated) || (_isNotCompatibleSmokeMagazine)) exitWith {};



//Generar efecto.
[{
  params ["_magazine", "_projectile"];
  #include "\FCLA_Interactions\Smoke_Signal\includes\Smoke_Magazines.hpp"

  _projectilePos = getPos _projectile;
  deleteVehicle _projectile;

  _color = switch (true) do {
    case (_magazine in _redSmokeMagazines): {[1, 0.253, 0, 1];};
    case (_magazine in _blueSmokeMagazines): {[0.266, 0.537, 1, 1];};
    case (_magazine in _greenSmokeMagazines): {[0.1, 0.5, 0.05, 1];};
    case (_magazine in _orangeSmokeMagazines): {[1, 0.54, 0.21, 1];};
    case (_magazine in _yellowSmokeMagazines): {[0.956, 1, 0.21, 1];};
    case (_magazine in _purpleSmokeMagazines): {[0.8, 0.432, 0.8, 1];};
    default {[1, 1, 1, 1];};
  };

  _lightObj = createVehicle ["#lightpoint", _projectilePos, [], 0, "CAN_COLLIDE"];
  _lightObj setLightBrightness 2;
  _lightObj setLightDayLight true;
  _lightObj setLightColor [1, 1, 1];
  _lightObj setLightAmbient [1, 1, 1];
  _lightObj setLightFlareMaxDistance 2000;
  _lightObj setLightAttenuation [1, 0, 0, 0, 0, 50];
  [{deleteVehicle _this;}, _lightObj, 0.2] call CBA_fnc_waitAndExecute;

  drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 3, 0], "", "Billboard", 1, 0.3, [_projectilePos select 0, _projectilePos select 1, (_projectilePos select 2) + 0.5], [0, 0, 0], 0, 11, 7, 0, [1, 5], [[1, 1, 1, 1], [1, 1, 1, 0]], [1], 0, 0, "", "", ""];
  drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 14, 5, 1], "", "Billboard", 1, 0.5, [_projectilePos select 0, _projectilePos select 1, (_projectilePos select 2) + 0.1], [0, 0, 0], 0, 11, 7, 0, [1, 10], [[1, 1, 1, 1], [1, 1, 1, 0]], [2], 0, 0, "", "", ""];
  drop [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d", 8, 0, 40, 0], "", "Billboard", 1, 0.3, [_projectilePos select 0, _projectilePos select 1, (_projectilePos select 2) + 0.3], [0, 0, 0], 3, 10.2, 8, 0.01, [0, 20], [[_color select 0, _color select 1, _color select 2, 1], [_color select 0, _color select 1, _color select 2, 0]], [0.1], 0, 0, "", "", ""];

  _soundSourceOne = createAgent ["VirtualAISquad", _projectilePos, [], 0, "CAN_COLLIDE"];
  _soundSourceTwo = createAgent ["VirtualAISquad", _projectilePos, [], 0, "CAN_COLLIDE"];
  [_soundSourceOne, "FCLA_Smoke_Explosion", 4, 2000, true] call FCLA_Common_fnc_globalSay3D;
  [_soundSourceTwo, "FCLA_Smoke_Explosion_Echo", 3, 3000, true] call FCLA_Common_fnc_globalSay3D;

  [{
    params ["_projectilePos", "_color"];
    _particleObj = createVehicle ["#particlesource", _projectilePos, [], 0, "CAN_COLLIDE"];
    _particleObj setDropInterval 0.01;
    _particleObj setParticleCircle [0, [0, 0, 0]];
    _particleObj setParticleRandom [1, [1, 1, 1], [0.5, 0.5, 0.5], 1, 0, [0, 0, 0, 0], 0, 0];
    _particleObj setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d", 8, 0, 40, 0], "", "Billboard", 1, FCLA_Smoke_Signal_Time, [0, 0, 0], [0, 0, 0], 5, 10.2, 8, 0.05, [5, 20], [[_color select 0, _color select 1, _color select 2, 1], [_color select 0, _color select 1, _color select 2, 0.5], [_color select 0, _color select 1, _color select 2, 0.3], [_color select 0, _color select 1, _color select 2, 0]], [0.3], 0, 0, "", "", _projectilePos];
    [{deleteVehicle _this;}, _particleObj, 0.1] call CBA_fnc_waitAndExecute;
  }, [_projectilePos, _color], 0.2] call CBA_fnc_waitAndExecute;
}, [_magazine, _projectile], 1] call CBA_fnc_waitAndExecute;
