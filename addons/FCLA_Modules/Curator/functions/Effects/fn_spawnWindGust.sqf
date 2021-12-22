
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera una ráfaga de viento.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_this spawn {
	while {alive (_this select 0)} do {
		params ["_logic", "_delay"];
		_logicPos = getPos _logic;
		_randomSound = selectRandom ["FCLA_Wind_Gust_1", "FCLA_Wind_Gust_2", "FCLA_Wind_Gust_3", "FCLA_Wind_Gust_4", "FCLA_Wind_Gust_5", "FCLA_Wind_Gust_6", "FCLA_Wind_Gust_7"];
		_randomNumber = selectRandom [1, -1];
		_windVelocity = [_randomNumber * (5 + (random 10)), _randomNumber * (5 + (random 10)), -1];
		_soundDuration = ceil (getNumber (configFile >> "CfgSounds" >> _randomSound >> "duration"));

		[_logic, [_randomSound, 200, 1, false, 0]] remoteExec ["say3D", 0, true];
		sleep 1;

		_particleObjOne = createVehicle ["#particlesource", _logicPos, [], 0, "CAN_COLLIDE"];
		_particleObjOne attachTo [_logic, [0, 0, 0]];
		_particleObjOne setDropInterval 0.01;
		_particleObjOne setParticleCircle [10, [0, 0, 0]];
		_particleObjOne setParticleRandom [3, [5, 5, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
		_particleObjOne setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 5, [0, 0, 0], _windVelocity, 13, 10, 8, 1, [2, 6, 10], [[1, 0.9, 0.8, 0], [1.0, 0.9, 0.8] + [0.02 + random 0.1], [1, 0.9, 0.8, 0]], [0.08], 1, 0, "", "", _logic];

		_particleObjTwo = createVehicle ["#particlesource", _logicPos, [], 0, "CAN_COLLIDE"];
		_particleObjTwo attachTo [_logic, [0, 0, 0]];
		_particleObjTwo setDropInterval 0.01;
		_particleObjTwo setParticleCircle [5, [1, 1, 0]];
		_particleObjTwo setParticleRandom [0, [10, 10, 3], [- (_windVelocity select 1), - (_windVelocity select 0), 0], 0.2, 0.01, [0, 0, 0, 0.1], 0.5, 0.5];
		_particleObjTwo setParticleParams [["\A3\data_f\ParticleEffects\Hit_Leaves\Leaves_Green.p3d", 1, 0, 1], "", "SpaceObject", 1, 7, [0, 0, 2], [_windVelocity select 1, _windVelocity select 0, 0], 7, 0.15, 0.1, 1, [1 + random 1], [[0.68, 0.68, 0.68, 1]], [0, 1], 0.2, 1.2, "", "", _logic];

		_Condition = {
		  (call CBA_fnc_currentUnit) in thisList;
		};

		_StatementOnActivation = {
		  _soundDuration = thisTrigger getVariable ["FCLA_Wind_Gust_Attributes", 0];
		  enableCamShake true;
			addCamShake [0.5, _soundDuration * 1.7, 25];
		};

		_trigger = createTrigger ["EmptyDetector", _logicPos, false];
		_trigger setTriggerInterval 0.5;
		_trigger attachTo [_logic, [0, 0, 0]];
		_trigger setTriggerActivation ["ANY", "PRESENT", false];
		_trigger setTriggerArea [15, 15, 0, false, 5];
		_trigger setTriggerStatements [[_Condition] call ACE_Common_fnc_codeToString, [_StatementOnActivation] call ACE_Common_fnc_codeToString, ""];
		_trigger setVariable ["FCLA_Wind_Gust_Attributes", _soundDuration, true];
		[{(!alive (_this select 0)) || (!alive (_this select 1)) || (!alive (_this select 2))}, {
			deleteVehicle (_this select 3);
		}, [_module, _particleObjOne, _particleObjTwo, _trigger]] call CBA_fnc_waitUntilAndExecute;

		sleep (_soundDuration - 2);
		deletevehicle _particleObjTwo;

		sleep 1;
		deletevehicle _particleObjOne;
		sleep _delay;
	};
};
