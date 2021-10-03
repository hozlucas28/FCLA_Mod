
/* ----------------------------------------------------------------------------
Function: FCLA_Immersions_fnc_particlesNAB

Description:
    Genera un efecto de partículas extra dependiendo si la aeronave es
		un helicoptero ó avión. Estos efectos surgirán si los addon options
		'¿Partículas extra para helicópteros?' y '¿Partículas extra para aviones?'
		son activados.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_vehicle"];
if ((!FCLA_NAB_Fx_Helicopters) && (!FCLA_NAB_Fx_Planes)) exitWith {};



//Helicóptero.
if ((FCLA_NAB_Fx_Helicopters) && (_vehicle isKindOf "Helicopter")) then {
	_firstParticleObj = createVehicle ["#particlesource", getPos _vehicle, [], 0, "CAN_COLLIDE"];
	_firstParticleObj setParticleClass "IEDMineGarbageBig1";
	_firstParticleObj attachTo [_vehicle, [0, 0, 0]];
	[{deleteVehicle _this}, _firstParticleObj, 2] call CBA_fnc_waitAndExecute;

	_secondParticleObj = createVehicle ["#particlesource", getPos _vehicle, [], 0, "CAN_COLLIDE"];
	_secondParticleObj setParticleClass "BombSmk3";
	_secondParticleObj attachTo [_vehicle, [0, 0, 0]];
	[{deleteVehicle _this}, _secondParticleObj, 2] call CBA_fnc_waitAndExecute;
};


//Avión.
if ((FCLA_NAB_Fx_Planes) && (_vehicle isKindOf "Plane")) then {
	_firstParticleObj = createVehicle ["#particlesource", getPos _vehicle, [], 0, "CAN_COLLIDE"];
	_firstParticleObj setParticleClass "BombExp1";
	_firstParticleObj attachTo [_vehicle, [0, 0, 0]];
	[{deleteVehicle _this}, _firstParticleObj, 1.3] call CBA_fnc_waitAndExecute;

	_secondParticleObj = createVehicle ["#particlesource", getPos _vehicle, [], 0, "CAN_COLLIDE"];
	_secondParticleObj setParticleClass "BombSmk3";
	_secondParticleObj attachTo [_vehicle, [0 ,0, 0]];
	[{deleteVehicle _this}, _secondParticleObj, 2] call CBA_fnc_waitAndExecute;
};
