
/* ----------------------------------------------------------------------------
Script: "\FCLA_Modules\Effects\scripts\Dust_Burst.sqf"

Description:
    Genera un efecto simulando una ráfaga de polvo.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module", "_onStart","_delaySended"];
if (!isNil "FCLA_Dust_Burst") exitWith {};



//Evita ejecutar más de un módulo del mismo tipo.
FCLA_Dust_Burst = true;
publicVariable "FCLA_Dust_Burst";


if (!_onStart) then {Sleep 15;};
while {alive _module} do {
	_soundAndDuration = selectRandom [["FCLA_Wind_Gust_1", 2], ["FCLA_Wind_Gust_2", 6], ["FCLA_Wind_Gust_3", 8], ["FCLA_Wind_Gust_4", 10.5], ["FCLA_Wind_Gust_5", 6], ["FCLA_Wind_Gust_6", 3], ["FCLA_Wind_Gust_7", 12]];
	_randomNumber = selectRandom [1, -1];
	_windVelocity = [_randomNumber*(5 + (random 10)), _randomNumber*(5 + (random 10)), -1];

	[_soundAndDuration select 0] remoteExec ["playSound", 0, true];
	sleep 1;

	_isInHouse = [player] call FCLA_Development_fnc_isInHouse;

	if (!_isInHouse) then {
		_color = [1.0, 0.9, 0.8];
		_alphaColor = 0.02 + random 0.1;

		_particleObj = createVehicle ["#particlesource", getPos player, [], 0, "CAN_COLLIDE"];
		_particleObj setParticleCircle [10, [0, 0, 0]];
		_particleObj setParticleRandom [3, [5, 5, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
		_particleObj setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 5, [0, 0, 0], _windVelocity, 13, 10, 8, 1, [2, 6, 10], [_color + [0], _color + [_alphaColor], _color + [0]], [0.08], 1, 0, "", "", vehicle player];
		_particleObj setDropInterval 0.01;

		_greenLeaves = createVehicle ["#particlesource", getPos player, [], 0, "CAN_COLLIDE"];
		_greenLeaves setParticleCircle [5, [1,1,0]];
		_greenLeaves setParticleRandom [0, [10,10,3], [-(_windVelocity select 1),-(_windVelocity select 0),0], 0.2, 0.01,[0,0,0,0.1],0.5,0.5];
		_greenLeaves setParticleParams [["\A3\data_f\ParticleEffects\Hit_Leaves\Leaves_Green.p3d", 1, 0, 1],"","SpaceObject",1,7,[0,0,2],[(_windVelocity select 1),(_windVelocity select 0),0],7,0.15,0.1,1,[1+random 1],[[0.68,0.68,0.68,1]],[0,1],0.2,1.2,"","",vehicle player];
		_greenLeaves setDropInterval 0.01;

		if (vehicle player != player) then {
			_particleObj attachto [vehicle player, [0, -20, 0]];
			_greenLeaves attachto [vehicle player, [0, 0, 5]];
		} else {
			_particleObj attachto [player, [0, -20, 0]];
			_greenLeaves attachto [player, [0, 0, 5]];
		};

		[true] remoteExec ["enableCamShake", 0, true];
	  [[0.5, (_soundAndDuration select 1)*1.7, 25]] remoteExec ["addCamShake", 0, true];
		sleep ((_soundAndDuration select 1) - 2);
		deletevehicle _greenLeaves;
		sleep 1;
		deletevehicle _particleObj;
	};
	if (_delaySended < 0) then {Sleep 15;} else {Sleep 15 + (round random _delaySended);};
};
