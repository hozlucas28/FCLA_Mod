
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca el uniforme con la insignia a la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_insignia"];
_getPlatoon = [_insignia, (_insignia find "_") + 1, 100] call CBA_fnc_substring;
_platoon = if ((_getPlatoon == "Unassigned") || (_getPlatoon == "Common")) then {"FCLA"} else {_getPlatoon};
_currentUniform = uniform _unit;
