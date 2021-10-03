
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_hideEDENObjects

Description:
    Retorna los objetos puestos por el editor, en el radio y posición enviados
		como parámetros.


Parameters:
    _pos - Posición.
    _rad - Radio en donde todos los objetos, puestos por el editor,
           seran ocultados.
    _excludeUnits - ¿Excluir unidades IA?
		                Valor booleano (true/false). Opcional.

Examples:
    [getPos player, 150] spawn FCLA_Development_fnc_hideEDENObjects;

Tips:
    - Si se quiere que una unidad ó objeto sea ignorado por la función asignele
      esta variable: this setVariable ["FCLA_Ignore_fnc_hideEDENObjects", true, true];

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_pos", ["_rad", 150], ["_excludeUnits", false]];


_allNearObjects = nearestObjects [_pos, [], _rad];
_allNearTerrainObjects = nearestTerrainObjects [_pos, [], _rad];
_allNearObjectsToHide = switch (_excludeUnits) do {
	case true: {_allNearObjects - _allNearTerrainObjects - allPlayers;};
	default {_allNearObjects - _allNearTerrainObjects - allUnits - allPlayers;};
};

{
  if (!(_x getVariable ["FCLA_Ignore_fnc_hideEDENObjects", false])) then {
    _x setVariable ["FCLA_Object_Hidden", true, true];
		[_x, "NONE"] call ACE_Common_fnc_hideUnit;
  };
} forEach _allNearObjectsToHide;
