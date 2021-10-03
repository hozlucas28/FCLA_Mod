
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_getNameOfRandomLocation

Description:
    Devuelve un poblado, ciudad ó capital al azar del mapa actual.

Returns:
    String.

Examples:
    call FCLA_Development_fnc_getNameOfRandomLocation;

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

_arrayOfLocations = call FCLA_Development_fnc_getNamesOfLocations;;
selectRandom _arrayOfLocations;
