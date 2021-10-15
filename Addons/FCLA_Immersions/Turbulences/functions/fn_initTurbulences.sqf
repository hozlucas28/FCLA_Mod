
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 * 
 * Description:
 * Realiza los preparativos para llamar a la función que aplica turbulencias
 * en el avión/helicóptero.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_vehicle"];



_vehicle setVariable ["FCLA_Turbulence_Ready", true, true];
_vehicle setVariable ["FCLA_Turbulence_Old_Force", [0, 0, 0], true];
_vehicle setVariable ["FCLA_Turbulence_Old_Centre", [0, 0, 0], true];

_maxSpeed = ([configOf _vehicle, "maxSpeed"] call BIS_fnc_returnConfigEntry) / 3.6;
_bbr = 2 boundingBoxReal _vehicle;
_p1 = _bbr select 0;
_p2 = _bbr select 1;
_maxWidth = abs ((_p2 select 0) - (_p1 select 0));
_maxLength = abs ((_p2 select 1) - (_p1 select 1));
_maxHeight = abs ((_p2 select 2) - (_p1 select 2));
_dimensions = [_maxWidth, _maxLength, _maxHeight];
_surfaceArea = (2 * pi * (_maxHeight / 2) * _maxLength + 2 * pi * (_maxHeight / 2) ^ 2) / 2;


[{
	(_this select 0) params ["_vehicle", "_dimensions", "_surfaceArea", "_maxSpeed"];
	_currentUnit = call CBA_fnc_currentUnit;
	if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

	if ((alive _vehicle) && (vehicle _currentUnit == _vehicle)) then {
		_disableByEditor = _vehicle getVariable ["FCLA_Disable_Aircraft_Turbulences", false];
		_isTurbulenceReady = _vehicle getVariable ["FCLA_Turbulence_Ready", true];
		if ((!FCLA_Aircraft_Turbulence) || (driver _vehicle != _currentUnit) || !(_isTurbulenceReady) || (_disableByEditor)) exitWith {};
		[_vehicle, _dimensions, _surfaceArea, _maxSpeed] spawn FCLA_Immersions_fnc_logicTurbulences;
	} else {
		_vehicle setVariable ["FCLA_Turbulence_Ready", nil, true];
		_vehicle setVariable ["FCLA_Turbulence_Old_Force", nil, true];
		_vehicle setVariable ["FCLA_Turbulence_Old_Centre", nil, true];
		[_this select 1] call CBA_fnc_removePerFrameHandler;
	};
}, 0, [_vehicle, _dimensions, _surfaceArea, _maxSpeed]] call CBA_fnc_addPerFrameHandler;
