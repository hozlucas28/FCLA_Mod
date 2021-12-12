
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica el alcance de todas las radios de onda corta y larga.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", false, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (!_isActivated)) exitWith {};



//Modificar alcance.
_multiplier = [_module getVariable ["FCLA_Multiplier", 1], 0] call BIS_fnc_cutDecimals;
{_x setVariable ["tf_range", _multiplier, true]} forEach vehicles;

{
  _x setVariable ["tf_sendingDistanceMultiplicator", _multiplier, true];
  _x setVariable ["tf_receivingDistanceMultiplicator", _multiplier, true];
} forEach allUnits;
