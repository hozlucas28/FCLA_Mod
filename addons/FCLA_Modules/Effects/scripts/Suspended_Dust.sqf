
/* ----------------------------------------------------------------------------
Script: "\FCLA_Modules\Effects\scripts\Suspended_Dust.sqf"

Description:
    Genera un efecto de partículas simulando polvo suspendido.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_module"];



while {alive _module} do {
	_particleObj = createVehicle ["#particlesource", getPos _module, [], 0, "CAN_COLLIDE"];
	_particleObj setParticleCircle [0, [0, 0, 0]];
	_particleObj setParticleRandom [5, [1, 1, 3], [0, 0, 0], 0, 0.005, [0, 0, 0, 0.5], 0.5, 0.01];
	_particleObj setParticleParams [["\A3\data_f\kouleSvetlo", 1, 0, 1], "", "Billboard", 1, 10, [0, 0, 2], [0, 0, 0], 0, 10.08, 7.9, 0, [0.01, 0.01, 0.01], [[1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 0.5, 0.01, "", "", _module];
	_particleObj setDropInterval 0.05;
	waitUntil {sleep 1; (!alive _module)};
	deleteVehicle _particleObj;
};
