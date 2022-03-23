
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera chispas.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_logic", "_delayEffect"];



while {alive _logic} do {
	_maxLoops = 1 + floor (round random 5);
	_numberOfLoops = 0;

	while {_numberOfLoops < _maxLoops} do {
		_bbr = boundingBoxReal _logic;
		_p1 = _bbr select 0;
		_p2 = _bbr select 1;
		_maxHeight = abs ((_p2 select 2) - (_p1 select 2));
		_sparkPos = (_maxHeight / 2) - 0.45;
		_sparkType = selectRandom ["White", "Orange"];
		_randomDelay = 0.1 + (round random 2);
		_randomSound = selectRandom ["FCLA_Sparks_1", "FCLA_Sparks_2", "FCLA_Sparks_3", "FCLA_Sparks_4", "FCLA_Sparks_5", "FCLA_Sparks_6", "FCLA_Sparks_7"];

		if (_sparkType == "Orange") then {
			_logicPos = getPos _logic;
			_particleObj = "#particlesource" createVehicleLocal _logicPos;
			_randomNumber = random 0.4;
			_particleObj attachTo [_logic, [0, 0, 0]];
			_particleObj setDropInterval 0.001;
			_particleObj setParticleCircle [0, [0, 0, 0]];
			_particleObj setParticleRandom [1, [0.05, 0.05, 0.1], [5, 5, 3], 0, 0.0025, [0, 0, 0, 0], 0, 0];
			_particleObj setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1 + (random 2), [0, 0, _sparkPos], [0, 0, 0], 0, 20, 7.9, 0, [0.3, 0.3, 0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _logic, 0, true, 0.3, [[0, 0, 0, 0]]];
			_logic say3D [_randomSound, 200, 1, false, 0];
			sleep (0.1 + _randomNumber);
			deleteVehicle _particleObj;
		} else {
			_logicPos = getPos _logic;
			_particleObj = "#particlesource" createVehicleLocal _logicPos;
			_particleObj attachTo [_logic, [0, 0, 0]];
			_particleObj setDropInterval (0.001 + (random 0.05));
			_particleObj setParticleCircle [0, [0, 0, 0]];
			_particleObj setParticleRandom [1, [0.1, 0.1, 0.1], [0, 0, 0], 0, 0.25, [0, 0, 0, 0], 0, 0];
			_particleObj setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1 + (random 2), [0, 0, _sparkPos], [0, 0, 0], 0, 15, 7.9, 0, [0.3, 0.3, 0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _logic, 0, true, 0.3, [[0, 0, 0, 0]]];
			_logic say3D [_randomSound, 200, 1, false, 0];
			sleep _randomDelay;
			deleteVehicle _particleObj;
		};
		sleep _randomDelay;
		_numberOfLoops = _numberOfLoops + 1;
	};
	sleep _delayEffect;
};
