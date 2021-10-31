
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un efecto que simula el polvo que levantan las aeronaves al volar
 * cerca del suelo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_plane", "_engineOne", "_engineTwo", "_pos", "_speed", "_posASL", "_posATL", "_posASLW", "_velocity"];
if (!FCLA_Planes_Ground_Smoke) exitWith {};
_seaHeight = _posASLW select 2;
_surfacePos = [((_pos select 0) + (_engineOne select 0)), ((_pos select 1) + (_engineOne select 1)), 0];
_groundHeight = _posATL select 2;



//Tierra.
if ((_groundHeight >= 0) && (_groundHeight <= 50)) then {
	if ((surfaceIsWater _pos) || (surfaceType _surfacePos == "#GdtConcrete") || (surfaceType _surfacePos == "#GdtStratisConcrete") || (surfaceType _surfacePos == "#GdtBeach") || (surfaceType _surfacePos == "#GdtSeabed")) exitWith {};
	[_plane, "Dust", _surfacePos, _velocity, _speed] spawn FCLA_Effects_fnc_spawnSmokeEffectPlanes;
};


//Agua.
if ((_seaHeight >= 0) && (_seaHeight <= 50)) then {
	_surfaceWaterPos = [((_posASLW select 0) + (_engineOne select 0)), ((_posASLW select 1) + (_engineOne select 1)), 0];
	if (surfaceIsWater _surfaceWaterPos) then {
		[_plane, "Water", _surfacePos, _velocity, _speed] spawn FCLA_Effects_fnc_spawnSmokeEffectPlanes;
	} else {
		if ((surfaceType _surfacePos != "#GdtBeach") || (surfaceIsWater _pos)) exitWith {};
		[_plane, "Dust", _surfacePos, _velocity, _speed] spawn FCLA_Effects_fnc_spawnSmokeEffectPlanes;
	};
};
