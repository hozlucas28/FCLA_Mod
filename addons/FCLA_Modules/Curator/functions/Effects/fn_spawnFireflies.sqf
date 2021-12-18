
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera luciérnagas.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_this spawn {
	while {alive (_this select 0)} do {
		params ["_logic"];
		waitUntil {sleep 1; (sunOrMoon == 0) || (!alive _logic);};
		if (!alive _logic) exitWith {};

		_logicPos = getPos _logic;
		_particleObj = createVehicle ["#particlesource", _logicPos, [], 0, "CAN_COLLIDE"];
		_particleObj attachTo [_logic, [0, 0, 0]];
		_particleObj setParticleCircle [10, [0, 0, 0]];
		_particleObj setParticleRandom [10, [5, 5, 2], [0.2, 0.2, 0.5], 1, 0, [0, 0, 0, 0.1], 1, 1];
		_particleObj setParticleParams [["\A3\data_f\proxies\muzzle_flash\mf_machineGun_Cheetah.p3d", 1, 0, 1], "", "SpaceObject", 1, 14, [0, 0, 5], [0, 0, 0.5], 13, 1.3, 1, 0, [0.01, 0.01], [[1, 1, 1, 1], [1, 1, 1, 1]], [1], 1, 1, "", "", _logic];
		_particleObj setDropInterval 0.1;

		waitUntil {sleep 1; (sunOrMoon == 1) || (!alive _logic);};
		deleteVehicle _particleObj;
	};
};
