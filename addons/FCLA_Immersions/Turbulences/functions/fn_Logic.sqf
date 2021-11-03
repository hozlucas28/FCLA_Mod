
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera turbulencias en el avión/helicóptero.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_vehicle", "_dimensions", "_surfaceArea", "_maxSpeed"];



_vehicle setVariable ["FCLA_Turbulence_Ready", false, true];
_windiness = [0, [0, 1, (windStr + overcast) / 2] call BIS_fnc_easeIn] select FCLA_Aircraft_Turbulence_Weather_Effects;
_maxWindSpeed = (_windiness * FCLA_Aircraft_Turbulence_Maximum) + FCLA_Aircraft_Turbulence_Minimum;
_gustSpeed = [FCLA_Aircraft_Turbulence_Minimum, _maxWindSpeed, random(1)] call BIS_fnc_easeIn;
_minGustLength = [0.6, 0.4, _windiness] call BIS_fnc_lerp;
_maxGustLength = [0.7, 0.6, _windiness] call BIS_fnc_lerp;
_gustLength = [_minGustLength, _maxGustLength, random(1)] call BIS_fnc_easeInOut;
_gustPressure = (0.5 * 1.2 * (_gustSpeed * _gustSpeed)) / 2;
_gustForceScalar = _gustPressure * 0.05 * _surfaceArea;
_speed = ((velocity _vehicle) call CBA_fnc_vect2Polar) select 0;

if (_speed > 25) then {
  _speedCoef = [0.2, 1, ([1 - ((_speed - 25) / (_maxSpeed - 25)), 0, 1] call BIS_fnc_clamp)] call BIS_fnc_lerp;
  _gustForceScalar = _gustForceScalar * _speedCoef;
};

_turbulenceCentre = _dimensions apply {(random(_x) - (_x / 2))};
_force = [_gustForceScalar, random(360), random(360)] call CBA_fnc_polar2Vect;
_oldForce = _vehicle getVariable ["FCLA_Turbulence_Old_Force", [0, 0, 0]];
_oldCentre = _vehicle getVariable ["FCLA_Turbulence_Old_Centre", [0, 0, 0]];

if ((!isGamePaused) && (isGameFocused) && (!difficultyEnabledRTD) && (isEngineOn _vehicle)) then {
  for "_i" from 0 to _gustLength step 0.05 do {
    [{
      params ["_vehicle", "_force", "_turbulenceCentre", "_i", "_gustLength", "_oldForce", "_oldCentre"];
      _progress = _i / _gustLength;
      _forceN = [_oldForce, _force, _progress] call BIS_fnc_easeInOutVector;
      _turbulenceCentreN = [_oldCentre, _turbulenceCentre, _progress] call BIS_fnc_easeInOutVector;
      _vehicle addForce [(_vehicle vectorModelToWorld _forceN), _turbulenceCentreN];
    }, [_vehicle, _force, _turbulenceCentre, _i, _gustLength, _oldForce, _oldCentre], _i] call CBA_fnc_waitAndExecute;
  };
};


_vehicle setVariable ["FCLA_Turbulence_Old_Force", _force, true];
_vehicle setVariable ["FCLA_Turbulence_Old_Centre", _turbulenceCentre, true];
[{_this setVariable ["FCLA_Turbulence_Ready", true, true];}, _vehicle, _gustLength] call CBA_fnc_waitAndExecute;
