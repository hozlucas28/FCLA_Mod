
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Scripts\Others\Ambient_Auto_Fire.sqf"

Description:
    Obliga al vehículo enviado a disparar de manera random simulando
		por ejemplo: Artilleria, Disparos antiaereos, etc. Dependiendo del vehículo.

Parameters:
    _vehicle - variable del vehículo.
		_min1 y _max1 - cantidad minima y maxima de disparos.
		_min2 y _max2 - tiempo minimo y maximo en segundos para repetir disparos.
		_weaponType - tipo de torreta a disparar.
		_ammoType -  tipo de municion de la torreta que se disparara.

Example:
    //Ejemplo con el vehículo antiaéreo de la OTAN, con la variable 'AA_1'.
    null = [AA_1, [15, 30], [5, 10], "autocannon_35mm", "680Rnd_35mm_AA_shells_Tracer_Red"] execVM "\FCLA_Scripts\Others\Ambient_Auto_Fire.sqf";

Tips:
		# Para obtener el '_weaponType' puedes usar el siguiente codigo, una vez estes dentro del mismo: weapons vehicle player;
		# Para obtener el '_ammoType' puedes usar el siguiente codigo, una vez estes dentro del mismo: magazines vehicle player;

Public: [Si]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_vehicle", "_numberOfShots", "_delayForShots", "_weaponType", "_ammoType"];



//Variables locales.
_min1 = _numberOfShots select 0;
_max1 = _numberOfShots select 1;
_min2 = _delayForShots select 0;
_max2 = _delayForShots select 1;

while {alive _vehicle && !(player in (crew _vehicle)) && (({alive _x} count (crew _vehicle)) != 0)} do {
	_rounds = _min1 + floor random (_max1 - _min1);
	_target = (_vehicle modelToWorld [-900 + random 1800, random 500 + 800, random 400 + 500]);
	_vehicle setvehicleammo 1;
	_vehicle dowatch _target;

	sleep random _min2 + (_max2 - _min2);
	for "_i" from 1 to _rounds do {
		private "_Handler";
		_Handler = _vehicle addEventHandler ["Fired", {(_this select 0) setVariable ["Shot", true];}];
		_vehicle dowatch _target;
		_vehicle fire [_weaponType, "", _ammoType];
		waitUntil {!isNil {_vehicle getVariable "Shot" }};
		_vehicle removeEventHandler ["Fired", _Handler];
		_vehicle setVariable ["Shot", nil];
	};
};
