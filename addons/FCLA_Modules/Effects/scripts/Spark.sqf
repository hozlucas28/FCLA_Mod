
/* ----------------------------------------------------------------------------
Script: "\FCLA_Modules\Effects\scripts\Spark.sqf"

Description:
    Genera un efecto de partículas simulando chispas.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_module","_delaySended"];



while {alive _module} do {
	_sclipiri = 1 + floor (round random 5);
	_number = 0;

	while {_number < _sclipiri} do {
		_delay = 0.1 + (round random 2);
		_bbr = boundingBoxReal vehicle _module;
		_p1 = _bbr select 0;
		_p2 = _bbr select 1;
		_maxHeight = abs ((_p2 select 2) - (_p1 select 2));
		_sparkRelPos = (_maxHeight/2) - 0.45;
		_sparkSun = selectRandom ["FCLA_Sparks_1", "FCLA_Sparks_2", "FCLA_Sparks_3", "FCLA_Sparks_4", "FCLA_Sparks_5", "FCLA_Sparks_6", "FCLA_Sparks_7"];
		_sparkType = selectRandom ["white", "orange"];
		_drop = 0.001 + (random 0.05);
		_scanteiSpark = createVehicle ["#particlesource", getPosATL _module, [], 0, "CAN_COLLIDE"];

		if (_sparkType == "orange") then {
			_scanteiSpark setParticleCircle [0, [0, 0, 0]];
			_scanteiSpark setParticleRandom [1, [0.1, 0.1, 0.1], [0, 0, 0], 0, 0.25, [0, 0, 0, 0], 0, 0];
			_scanteiSpark setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1 + (random 2), [0, 0, _sparkRelPos], [0, 0, 0], 0, 15, 7.9, 0, [0.3, 0.3, 0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _module, 0, true, 0.3, [[0, 0, 0, 0]]];
			_scanteiSpark setDropInterval _drop;
			[_module, [_sparkSun, 200]] remoteExec ["say3D", 0, true];
			Sleep _delay;
			deleteVehicle _scanteiSpark;
		} else {
			_scanteiSpark setParticleCircle [0, [0, 0, 0]];
			_scanteiSpark setParticleRandom [1, [0.05, 0.05, 0.1], [5, 5, 3], 0, 0.0025, [0, 0, 0, 0], 0, 0];
			_scanteiSpark setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1 + (random 2), [0, 0, _sparkRelPos], [0, 0, 0], 0, 20, 7.9, 0, [0.3, 0.3, 0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _module, 0, true, 0.3, [[0, 0, 0, 0]]];
			_scanteiSpark setDropInterval 0.001;
			[_module, [_sparkSun, 200]] remoteExec ["say3D", 0, true];
			Sleep 0.1 + (random 0.4);
			deleteVehicle _scanteiSpark;
		};
		Sleep _delay;
		_number = _number + 1;
	};
	if (_delaySended < 0.5) then {Sleep 15 + (round random 30);} else {Sleep _delaySended;};
};
