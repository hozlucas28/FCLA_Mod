
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para generar una señal de humo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Generar señal de humo", {
  ["Señal de humo",
	 [
    ["SLIDER", ["Altura", "Altura a la que generara el humo de la señal, respecto del suelo"],
     [
      5,
      100,
      20,
      0
     ],
     false
    ],
    ["COMBO", "Color",
     [
      [
       [1, 0.253, 0, 1],
       [0.266, 0.537, 1, 1],
       [0.1, 0.5, 0.05, 1],
       [0.8, 0.432, 0.8, 1],
       [1, 1, 1, 1],
       [1, 0.54, 0.21, 1],
       [0.956, 1, 0.21, 1]
      ],
      [
       ["Rojo", "", "", [1, 0.253, 0, 1]],
       ["Azul", "", "", [0.266, 0.537, 1, 1]],
       ["Verde", "", "", [0.1, 0.5, 0.05, 1]],
       ["Morado", "", "", [0.8, 0.432, 0.8, 1]],
       ["Blanco", "", "", [1, 1, 1, 1]],
       ["Naranja", "", "", [1, 0.54, 0.21, 1]],
       ["Amarillo", "", "", [0.956, 1, 0.21, 1]]
      ],
      0
     ],
     false
    ]
	 ],
   {
     (_this select 1) params ["_x", "_y", "_z"];
     (_this select 0) params ["_height", "_color"];
     _height = [_height, 0] call BIS_fnc_cutDecimals;
     _smokePos = [_x, _y, _z + _height];

     _lightObj = createVehicle ["#lightpoint", _smokePos, [], 0, "CAN_COLLIDE"];
     _lightObj setLightBrightness 2;
     _lightObj setLightDayLight true;
     _lightObj setLightColor [1, 1, 1];
     _lightObj setLightAmbient [1, 1, 1];
     _lightObj setLightFlareMaxDistance 2000;
     _lightObj setLightAttenuation [1, 0, 0, 0, 0, 50];
     [{deleteVehicle _this;}, _lightObj, 0.2] call CBA_fnc_waitAndExecute;

     drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 3, 0], "", "Billboard", 1, 0.3, [_smokePos select 0, _smokePos select 1, _smokePos select 2 + 0.5], [0, 0, 0], 0, 11, 7, 0, [1, 5], [[1, 1, 1, 1], [1, 1, 1, 0]], [1], 0, 0, "", "", ""];
     drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 14, 5, 1], "", "Billboard", 1, 0.5, [_smokePos select 0, _smokePos select 1, _smokePos select 2 + 0.1], [0, 0, 0], 0, 11, 7, 0, [1, 10], [[1, 1, 1, 1], [1, 1, 1, 0]], [2], 0, 0, "", "", ""];
     drop [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d", 8, 0, 40, 0], "", "Billboard", 1, 0.3, [_smokePos select 0, _smokePos select 1, _smokePos select 2 + 0.3], [0, 0, 0], 3, 10.2, 8, 0.01, [0, 20], [[_color select 0, _color select 1, _color select 2, 1], [_color select 0, _color select 1, _color select 2, 0]], [0.1], 0, 0, "", "", ""];

     _soundSourceOne = createAgent ["VirtualAISquad", _smokePos, [], 0, "CAN_COLLIDE"];
     _soundSourceTwo = createAgent ["VirtualAISquad", _smokePos, [], 0, "CAN_COLLIDE"];
     [_soundSourceOne, "FCLA_Smoke_Explosion", nil, 2000, true] call FCLA_Common_fnc_globalSay3D;
     [_soundSourceTwo, "FCLA_Smoke_Explosion_Echo", nil, 3000, true] call FCLA_Common_fnc_globalSay3D;

     [{
       params ["_smokePos", "_color"];
       _particleObj = createVehicle ["#particlesource", _smokePos, [], 0, "CAN_COLLIDE"];
       _particleObj setDropInterval 0.01;
       _particleObj setParticleCircle [0, [0, 0, 0]];
       _particleObj setParticleRandom [1, [1, 1, 1], [0.5, 0.5, 0.5], 1, 0, [0, 0, 0, 0], 0, 0];
       _particleObj setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d", 8, 0, 40, 0], "", "Billboard", 1, FCLA_Smoke_Signal_Time, [0, 0, 0], [0, 0, 0], 5, 10.2, 8, 0.05, [5, 20], [[_color select 0, _color select 1, _color select 2, 1], [_color select 0, _color select 1, _color select 2, 0.5], [_color select 0, _color select 1, _color select 2, 0.3], [_color select 0, _color select 1, _color select 2, 0]], [0.3], 0, 0, "", "", _projectilePos];
       [{deleteVehicle _this;}, _particleObj, 0.1] call CBA_fnc_waitAndExecute;
     }, [_smokePos, _color], 0.2] call CBA_fnc_waitAndExecute;
     ["SEÑAL DE HUMO GENERADA"] call ZEN_Common_fnc_showMessage;
   }, {}, _this select 0] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Smoke.paa"] call ZEN_Custom_Modules_fnc_Register;
