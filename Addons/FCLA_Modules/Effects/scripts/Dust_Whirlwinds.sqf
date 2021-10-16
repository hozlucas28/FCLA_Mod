
/* ----------------------------------------------------------------------------
Script: "\FCLA_Modules\Effects\scripts\Dust_Whirlwinds.sqf"

Description:
    Genera un efecto de torbellino de polvo que se volvera a generar luego
		del delay enviado.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module","_onStart","_delaySended"];
if (!isNil "FCLA_Dust_Whirlwinds") exitWith {};



//Evita ejecutar más de un módulo del mismo tipo.
FCLA_Dust_Whirlwinds = true;
publicVariable "FCLA_Dust_Whirlwinds";


if (!_onStart) then {Sleep _delaySended;};
while {alive _module} do {
	_randomPlayer = selectRandom allPlayers;
	_whirlwindsObj = createVehicle ["Land_HelipadEmpty_F", _randomPlayer getRelPos [random 500, random 360], [], 0, "CAN_COLLIDE"];
	_directDev = floor (random 360);
	_soundAndDuration = selectRandom [["FCLA_Dust_Whirlwinds_1", 30], ["FCLA_Dust_Whirlwinds_2", 60], ["FCLA_Dust_Whirlwinds_3", 110]];
	_soundDuration = _soundAndDuration select 1;
	_speedDustDev = 0.01 + (random 0.1);
	_plotPath = [];
	_points = 0;

	while {_points < 100} do {
		_pos = _whirlwindsObj getRelPos [2, _directDev];
		_pos = [_pos, 2, 4, 5, 0, 1] call BIS_fnc_findSafePos;
		_whirlwindsObj setPos _pos;
		_plotPath pushBack _pos;
		_points = _points + 1;
		sleep 0.01;
	};

	sleep 1;
	_radiusLoop = 2 + (random 2);

	_whirlwindsObjNew = createVehicle ["Land_HelipadEmpty_F", _plotPath select 0, [], 0, "CAN_COLLIDE"];
	_whirlwindsObjCenter = createVehicle ["Land_HelipadEmpty_F", _plotPath select 0, [], 0, "CAN_COLLIDE"];
	[_whirlwindsObjCenter, [_soundAndDuration select 0, 2000]] remoteExec ["say3D", 0, true];

	_dustParticleObj = createVehicle ["#particlesource", getPos _whirlwindsObjCenter, [], 0, "CAN_COLLIDE"];
	_dustParticleObj setParticleCircle [5, [-55, -55, 0]];
	_dustParticleObj setParticleRandom [5, [0, 0, 0], [40, 40, 1], 3, 0.25, [0, 0, 0, 0.5], 0.5, 0];
	_dustParticleObj setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 13, [0, 0, 0], [0, 0, 0.2], 7, 10, 7.9, 1, [5, 20, 40], [[0.2, 0.15, 0.1, 0.1], [0.3, 0.25, 0.25, 0.5], [0.5, 0.4, 0.3, 0]], [0.08], 1, 1, "", "", _whirlwindsObjCenter];
	_dustParticleObj setDropInterval 0.05;

	sleep 3;
	_dustParticleColumnObj = createVehicle ["#particlesource", getPos _whirlwindsObjNew, [], 0, "CAN_COLLIDE"];
	_dustParticleColumnObj setParticleCircle [0, [0, 0, 0]];
	_dustParticleColumnObj setParticleRandom [5, [0.3, 0.3, 1], [0.175, 0.175, 0], 13, 1, [0, 0, 0, 0.1], 0, 0];
	_dustParticleColumnObj setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 3, [0, 0, 0], [0, 0, 17], 25, 12, 7.9, 0.01, [2, 8, 30], [[0, 0, 0, 0.1], [0.4, 0.25, 0.15, 0.15], [0.5, 0.5, 0.5, 0]], [0.08], 1, 0, "", "", _whirlwindsObjNew];
	_dustParticleColumnObj setDropInterval 0.005;

	sleep 1;
	_dustParticleDebrisObj = createVehicle ["#particlesource", getPos _whirlwindsObjCenter, [], 0, "CAN_COLLIDE"];
	_dustParticleDebrisObj setParticleCircle [30, [2, 2, 2]];
	_dustParticleDebrisObj setParticleRandom [15, [10, 10, 5], [-7, -7, 0], 3, 1, [0, 0, 0, 0.1], 1, 0];
	_dustParticleDebrisObj setParticleParams [["\A3\data_f\ParticleEffects\Hit_Leaves\Sticks_Green.p3d", 1, 0, 1], "", "SpaceObject", 1, 13, [0, 0, 0], [1, 1, 5], 3, 12, 7.9, 0.075, [0.5, 0.5, 0.5], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]], [0.08], 1, 1, "", "", _whirlwindsObjCenter];
	_dustParticleDebrisObj setDropInterval 0.5;

	_i = 0;
	while {alive _whirlwindsObj} do	{
		{
			if (([_x, _whirlwindsObjNew] call CBA_fnc_getDistance) <= 80) then {
				[[_whirlwindsObjNew, 80, [1, 15, 25]], "\FCLA_Modules\global\camShake.sqf"] remoteExec ["execVM", 0, true];
				if (!isNil {_x getVariable "FCLA_Dust_Whirlwinds_Sound"}) exitWith {};
				_x setVariable ["FCLA_Dust_Whirlwinds_Sound", true];
				_dustParticlePlayerObj = createVehicle ["#particlesource", getPos _x, [], 0, "CAN_COLLIDE"];
				_dustParticlePlayerObj setParticleCircle [2, [1, 1, 0]];
				_dustParticlePlayerObj setParticleRandom [3, [0.25, 0.25, 0], [-2, -2, 0], 7, 0.25, [0, 0, 0, 0.1], 1, 1];
				_dustParticlePlayerObj setParticleParams [["\A3\data_f\ParticleEffects\Hit_Leaves\Leaves_Green.p3d", 1, 0, 1], "", "SpaceObject", 1, 5, [0, 0, 0], [0, 0, 0.75], 5, 10, 7.9, 0.075, [1, 2, 3], [[0.1, 0.1, 0.1, 1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 1, "", "", vehicle _x];
				_dustParticlePlayerObj setDropInterval 0.1;
				_randomSound = selectRandom ["FCLA_Short_Gust_1", "FCLA_Short_Gust_2", "FCLA_Short_Gust_3"];
				playsound _randomSound;
				sleep 9;
				deleteVehicle _dustParticlePlayerObj;
				_x setVariable ["FCLA_Dust_Whirlwinds_Sound", nil];
			};
		} forEach allPlayers;

		_whirlwindsObjNew setPos (_plotPath select _i);
		_whirlwindsObjCenter setPos (_plotPath select _i);
		_loop = selectRandom [false, true, false, false];

		if (_loop) then {
			_rotire = 0;
			while {_rotire < 355} do {
				_whirlwindsObjNew setPos (_whirlwindsObjCenter getRelPos [_radiusLoop, _rotire]);
				sleep 0.01;
				_rotire = _rotire+1;
			};
		};

		if (_i < 100) then {_i = _i + 1};
		if (_i == 100) then {_i = 100};
		sleep _speedDustDev;
	};

	deleteVehicle _dustParticleColumnObj;
	deleteVehicle _whirlwindsObjNew;
	sleep 5;
	deleteVehicle _dustParticleObj;
	sleep 5;
	deleteVehicle _dustParticleDebrisObj;
	sleep 10;
	deleteVehicle _whirlwindsObjCenter;
	sleep _soundDuration;
	deleteVehicle _whirlwindsObj;
	if (_delaySended <= 0) then {Sleep 10;} else {Sleep _delaySended;};
};
