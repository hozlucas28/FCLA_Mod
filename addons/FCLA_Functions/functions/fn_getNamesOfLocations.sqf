
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_getNamesOfLocations

Description:
    Devuelve un array con los nombres de los poblados, las ciudades
    y las capitales del mapa actual.

Return Value:
    Array.

Example:
    call FCLA_Development_fnc_getNamesOfLocations;

Public: [Yes]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

_locations = [];
{
	{_locations pushBack text _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), [_x], worldSize];
} forEach ["NameVillage", "NameCity", "NameCityCapital"];
if (_locations isNotEqualTo []) then {_locations} else {[""]};
