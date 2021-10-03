
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_getNamesOfLocations

Description:
    Devuelve un array con los nombres de los poblados, las ciudades
    y las capitales del mapa actual.

Returns:
    Array.

Examples:
    call FCLA_Development_fnc_getNamesOfLocations;

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

_arrayOfLocations = [];
{
	{_arrayOfLocations pushBack text _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), [_x], worldSize];
} forEach ["NameVillage", "NameCity", "NameCityCapital"];
if (_arrayOfLocations isNotEqualTo []) then {_arrayOfLocations} else {[""]};
