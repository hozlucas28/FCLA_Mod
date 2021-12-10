
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera una señal de humo en la posición del módulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
(_this select 1) params [
                         ["_module", objNull, [objNull], 0],
                         ["_isActivated", false, [true], 0],
                         ["_isPlacedByCurator", false, [true], 0]
                        ];
_mode = _this select 0;
if (((_mode != "init") && (_mode != "registeredToWorld3DEN")) || (isNull _module) || (!_isActivated)) exitWith {};



_modulePos = getPos _module;
_colorSelected = switch (toUpper (_module getVariable ["FCLA_Color", "white"])) do {
  case "RED": {[1, 0.253, 0, 1];};
  case "BLUE": {[0.266, 0.537, 1, 1];};
  case "GREEN": {[0.1, 0.5, 0.05, 1];};
  case "ORANGE": {[1, 0.54, 0.21, 1];};
  case "YELLOW": {[0.956, 1, 0.21, 1];};
  case "PURPLE": {[0.8, 0.432, 0.8, 1];};
  default {[1, 1, 1, 1];};
};

_lightObj = createVehicle ["#lightpoint", _modulePos, [], 0, "CAN_COLLIDE"];
_lightObj setLightBrightness 2;
_lightObj setLightDayLight true;
_lightObj setLightColor [1, 1, 1];
_lightObj setLightAmbient [1, 1, 1];
_lightObj setLightFlareMaxDistance 2000;
_lightObj setLightAttenuation [1, 0, 0, 0, 0, 50];
[{deleteVehicle _this;}, _lightObj, 0.2] call CBA_fnc_waitAndExecute;

drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 3, 0], "", "Billboard", 1, 0.3, [_modulePos select 0, _modulePos select 1, (_modulePos select 2) + 0.5], [0, 0, 0], 0, 11, 7, 0, [1, 5], [[1, 1, 1, 1], [1, 1, 1, 0]], [1], 0, 0, "", "", ""];
drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 14, 5, 1], "", "Billboard", 1, 0.5, [_modulePos select 0, _modulePos select 1, (_modulePos select 2) + 0.1], [0, 0, 0], 0, 11, 7, 0, [1, 10], [[1, 1, 1, 1], [1, 1, 1, 0]], [2], 0, 0, "", "", ""];
drop [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d", 8, 0, 40, 0], "", "Billboard", 1, 0.3, [_modulePos select 0, _modulePos select 1, (_modulePos select 2) + 0.3], [0, 0, 0], 3, 10.2, 8, 0.01, [0, 20], [[_colorSelected select 0, _colorSelected select 1, _colorSelected select 2, 1], [_colorSelected select 0, _colorSelected select 1, _colorSelected select 2, 0]], [0.1], 0, 0, "", "", ""];

_soundSourceOne = createAgent ["VirtualAISquad", _modulePos, [], 0, "CAN_COLLIDE"];
_soundSourceTwo = createAgent ["VirtualAISquad", _modulePos, [], 0, "CAN_COLLIDE"];
[_soundSourceOne, "FCLA_Smoke_Explosion", nil, 2000, true] call FCLA_Common_fnc_globalSay3D;
[_soundSourceTwo, "FCLA_Smoke_Explosion_Echo", nil, 3000, true] call FCLA_Common_fnc_globalSay3D;

[{
  params ["_modulePos", "_colorSelected"];
  _particleObj = createVehicle ["#particlesource", _modulePos, [], 0, "CAN_COLLIDE"];
  _particleObj setDropInterval 0.01;
  _particleObj setParticleCircle [0, [0, 0, 0]];
  _particleObj setParticleRandom [1, [1, 1, 1], [0.5, 0.5, 0.5], 1, 0, [0, 0, 0, 0], 0, 0];
  _particleObj setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d", 8, 0, 40, 0], "", "Billboard", 1, FCLA_Smoke_Signal_Time, [0, 0, 0], [0, 0, 0], 5, 10.2, 8, 0.05, [5, 20], [[_colorSelected select 0, _colorSelected select 1, _colorSelected select 2, 1], [_colorSelected select 0, _colorSelected select 1, _colorSelected select 2, 0.5], [_colorSelected select 0, _colorSelected select 1, _colorSelected select 2, 0.3], [_colorSelected select 0, _colorSelected select 1, _colorSelected select 2, 0]], [0.3], 0, 0, "", "", _modulePos];
  [{deleteVehicle _this;}, _particleObj, 0.1] call CBA_fnc_waitAndExecute;
}, [_modulePos, _colorSelected], 0.2] call CBA_fnc_waitAndExecute;
