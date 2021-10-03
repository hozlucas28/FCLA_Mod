
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_addZone_CBRN

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_trigger", ["_unit", player], ["_addZone", false]];


_zones = _unit getVariable ["FCLA_CBRN_Zones", []];
if (_addZone) then {_zones pushBack _trigger;} else {_zones = _zones - [_trigger];};
_unit setVariable ["FCLA_CBRN_Zones", _zones, true];
