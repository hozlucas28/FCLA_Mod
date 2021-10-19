
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_showHiddenEDENObjects

Description:
    Muestra los objetos que fueron ocultados por la
    función 'FCLA_Development_fnc_hideEDENObjects'.

Arguments:
    _pos - Posición.
    _rad - Radio en donde todos los objetos, que fueron ocultados por la
           función 'FCLA_Development_fnc_hideEDENObjects' volveran a
           ser visibles.

Example:
    [getPos player, 150] spawn FCLA_Development_fnc_showHiddenEDENObjects;

Public: [Yes]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_pos", ["_rad", 150]];

_allNearObjects = nearestObjects [_pos, [], _rad];
_allNearTerrainObjects = nearestTerrainObjects [_pos, [], _rad];
_allNearObjectsToShow = _allNearObjects - _allNearTerrainObjects;

{
  if (_x getVariable ["FCLA_Object_Hidden", false]) then {
    _x setVariable ["FCLA_Object_Hidden", nil, true];
    [_x, "NONE"] call ACE_Common_fnc_unhideUnit;
  };
} forEach _allNearObjectsToShow;
