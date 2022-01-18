
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Fuerza al vehículo a disparar hacia el cielo.
 *
 * Arguments:
 *            0: Vehículo que disparara. <VEHICLE>
 *            1: Torreta a disparar, opcional. <STRING> (default: torreta principal)
 *            2: Municion a disparar compatible con la torreta, opcional. <STRING> (default: munición principal)
 *            3: Cantidad mínima y máxima de disparos, opcional. <ARRAY OF NUMBERS> (default: [15, 30])
 *            4: Tiempo mínimo y máximo (en segundos) para repetir disparos, opcional. <ARRAY OF NUMBERS> (default: [5, 10])
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Examples:
 *             //Opcionales no definidos.
 *             [AA_1] call FCLA_Common_fnc_setAmbientFired;
 *
 *             //Opcionales definidos.
 *             [AA_2, (weapons AA_2) select 1, (magazines AA_2) select 1, [10, 20], [4, 8]] call FCLA_Common_fnc_setAmbientFired;
 *
 * Notes:
 * Script para obtener las torretas del vehículo: <weapons VEHICLE;>
 * Script para obtener las municiones del vehículo: <magazines VEHICLE;>
 *
 * Si desea detener el bucle de disparos asignele la variable de tipo
 * objeto "FCLA_Ambient_Fire" al vehículo, con el valor <false> ó <nil>.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
				["_vehicle", objNull, [objNull], 0],
				["_turretType", (weapons (_this select 0)) select 0, [""], 0],
				["_ammoType", (magazines (_this select 0)) select 0, [""], 0],
				["_arrayNumberOfShots", [15, 30], [[]], 2],
				["_arrayDelayOfShots", [5, 10], [[]], 2]
			 ];



//Verificar argumentos.
_minimumShots = ceil (_arrayNumberOfShots select 0);
_maximumShots = ceil (_arrayNumberOfShots select 1);
_minimumDelay = _arrayDelayOfShots select 0;
_maximumDelay = _arrayDelayOfShots select 1;
if ((isNull _vehicle) || (_turretType == "") || (_ammoType == "") || !(_arrayNumberOfShots isEqualTypeArray [0, 0]) || !(_arrayDelayOfShots isEqualTypeArray [0, 0])) exitWith {false};
if ((_minimumShots <= 0) || (_maximumShots <= 0) || (_minimumDelay <= 0) || (_maximumDelay <= 0)) exitWith {false};



[_vehicle, _turretType, _ammoType, _minimumShots, _maximumShots, _minimumDelay, _maximumDelay] spawn {
	params ["_vehicle", "_turretType", "_ammoType", "_minimumShots", "_maximumShots", "_minimumDelay", "_maximumDelay"];

	//Atributos iniciales.
	_aliveCrew = (crew _vehicle) select {alive _x};
	_vehicleGroup = group (selectRandom _aliveCrew);
	_vehicleGroup setBehaviour "AWARE";
	_vehicle setVariable ["FCLA_Ambient_Fire", true, true];


	//Definir condiciones.
	_conditions = {
		_isAlive = alive _this;
		_areCrewAlive = ({alive _x} count (crew _this)) != 0;
		_ambientFireStatus = _this getVariable ["FCLA_Ambient_Fire", false];
		_areNotPlayersInCrew = ({[_x, false] call ACE_Common_fnc_isPlayer} count (crew _this)) == 0;
		(_isAlive) && (_areCrewAlive) && (_ambientFireStatus) && (_areNotPlayersInCrew)
	};


	//Forzar disparos.
	while {_vehicle call _conditions} do {
		_rounds = random [_minimumShots, _maximumShots / 2, _maximumShots];
		_target = (_vehicle modelToWorld [-900 + random 1800, random 500 + 800, random 400 + 500]);
		_randomDelay = random [_minimumDelay, _maximumDelay / 2, _maximumDelay];
		_vehicle setVehicleAmmo 1;
		_vehicle doWatch _target;

		sleep _randomDelay;
		for "_i" from 1 to _rounds do {
			_vehicle dowatch _target;
			_vehicle fire [_turretType, "", _ammoType];
			_eventHandlerID = _vehicle addEventHandler ["Fired", {(_this select 0) setVariable ["FCLA_Registered_Shot", true, true];}];

			waitUntil {_vehicle getVariable ["FCLA_Registered_Shot", false]};
			_vehicle setVariable ["FCLA_Registered_Shot", nil, true];
			_vehicle removeEventHandler ["Fired", _eventHandlerID];
		};
	};
};
true
