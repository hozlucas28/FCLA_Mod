
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Retorna un poblado, ciudad ó capital al azar del mapa.
 *
 * Arguments:
 *            0: ¿Excluir pueblos?, opcional. <BOOL> (default: false)
 *            1: ¿Excluir ciudades?, opcional. <BOOL> (default: false)
 *            2: ¿Excluir capitales?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * Nombre del poblado/ciudad/capital seleccionado al azar. <STRING>
 *
 * Examples:
 *             //Sin exclusiones.
 *             call FCLA_Common_fnc_getRandomLocation;
 *
 *             //Pueblos y ciudades excluidas.
 *             [true, true] call FCLA_Common_fnc_getRandomLocation;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_excludeVillages", false, [true], 0],
        ["_excludeCities", false, [true], 0],
        ["_excludeCapitals", false, [true], 0]
       ];


//Obtener y seleccionar al azar un poblado/ciudad/capital.
_locations = [_excludeVillages, _excludeCities, _excludeCapitals] call FCLA_Common_fnc_getLocations;
selectRandom _locations;
