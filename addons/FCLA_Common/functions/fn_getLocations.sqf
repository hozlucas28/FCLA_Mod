
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Retorna los poblados, ciudades y capitales del mapa.
 *
 * Arguments:
 *            0: ¿Excluir pueblos?, opcional. <BOOL> (default: false)
 *            1: ¿Excluir ciudades?, opcional. <BOOL> (default: false)
 *            2: ¿Excluir capitales?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * Nombres de los poblados, ciudades y capitales. <ARRAY>
 *
 * Examples:
 *             //Sin exclusiones.
 *             call FCLA_Common_fnc_getLocations;
 *
 *             //Pueblos y ciudades excluidas.
 *             [true, true] call FCLA_Common_fnc_getLocations;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_excludeVillages", false, [true], 0],
        ["_excludeCities", false, [true], 0],
        ["_excludeCapitals", false, [true], 0]
       ];



//Excluir poblados/ciudades/capitales.
_notExcludedLocations = [];
if (!_excludeVillages) then {_notExcludedLocations pushBack "NameVillage";};
if (!_excludeCities) then {_notExcludedLocations pushBack "NameCity";};
if (!_excludeCapitals) then {_notExcludedLocations pushBack "NameCityCapital";};


//Obtener poblados/ciudades/capitales.
_locations = [];
{
	{
		_locations pushBack (text _x);
	} forEach (nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), [_x], worldSize]);
} forEach _notExcludedLocations;
_locations
