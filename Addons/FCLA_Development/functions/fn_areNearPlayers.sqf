
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_areNearPlayers

Description:
    Verifica si se encuentra un jugador o una unidad controlada cerca de la
    entidad enviada.

Parameters:
    _entity - Marcador/Objeto/Localización/Grupo/Tarea/Waypoint/Posición donde
              se verificara la existencia de un jugador.
    _distance - Distancia en la que se verificara la existencia de
                un jugador/unidad contralada.
    _minimumNumberOfUnits - Minimo de jugadores/unidades contraladas
                            dentro de la distancia definida. Opcional.
    _excludeRemoteControlled - ¿Excluir unidades controladas? Opcional.

Returns:
    Boolean (true/false).

Examples:
    [player, 50] call FCLA_Development_fnc_areNearPlayers;

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_entity", call CBA_fnc_currentUnit], ["_distance", 0], ["_minimumNumberOfUnits", 1], ["_excludeRemoteControlled", false]];
if ((_distance < 0) || (_minimumNumberOfUnits < 1)) exitWith {false};


_return = false;
_arrayOfPlayers = [];
_entityPosition = _entity call CBA_fnc_getPos;

{
  _isPlayer = [_x, _excludeRemoteControlled] call ACE_Common_fnc_isPlayer;
  if (_isPlayer) then {_arrayOfPlayers pushBack _x};
} forEach allUnits;

{
  _numberOfNearPlayers = {_entityPosition distance _x < _distance} count _arrayOfPlayers;
  if ((_entityPosition distance _x < _distance) && (_numberOfNearPlayers >= _minimumNumberOfUnits)) exitWith {_return = true;};
} forEach _arrayOfPlayers;
_return
