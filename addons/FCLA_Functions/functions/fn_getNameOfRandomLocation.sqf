
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_getNameOfRandomLocation

Description:
    Devuelve un poblado, ciudad ó capital al azar del mapa actual.

Return Value:
    String.

Example:
    call FCLA_Development_fnc_getNameOfRandomLocation;

Public: [Yes]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

_locations = call FCLA_Development_fnc_getNamesOfLocations;;
selectRandom _locations;
