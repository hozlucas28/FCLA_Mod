
/* ----------------------------------------------------------------------------
Script: "\FCLA_Modules\Effects\scripts\Firefly.sqf"

Description:
    Genera un efecto de partículas simulando la precencia de luciérnagas.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_module"];



while {alive _module} do {
	waitUntil {sleep 1; sunOrMoon == 0};
	_particleObj = createVehicle ["#particlesource", getPos _module, [], 0, "CAN_COLLIDE"];
	_particleObj setParticleCircle [10, [0, 0, 0]];
	_particleObj setParticleRandom [10, [5, 5, 2], [0.2, 0.2, 0.5], 1, 0, [0, 0, 0, 0.1], 1, 1];
	_particleObj setParticleParams [["\A3\data_f\proxies\muzzle_flash\mf_machineGun_Cheetah.p3d", 1, 0, 1], "", "SpaceObject", 1, 14, [0, 0, 5], [0, 0, 0.5], 13, 1.3, 1, 0, [0.01, 0.01], [[1, 1, 1, 1], [1, 1, 1, 1]], [1], 1, 1, "", "", _module];
	_particleObj setDropInterval 0.1;
	waitUntil {sleep 1; (!alive _module)};
	deleteVehicle _particleObj;
};
