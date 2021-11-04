
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si hay un jugador cerca de la entidad, enviada como argumento 0.
 *
 * Arguments:
 *            0: Entidad desde donde se verificara la existencia de
 *               un jugador. <POSITION|UNIT|OBJECT|VEHICLE|GROUP|MARKER|LOCATION>
 *
 *            1: Distancia en la que se verificara. <NUMBER>
 *
 *            2: Minimo de jugadores/unidades contraladas dentro de
 *               la distancia, opcional. <NUMBER> (default: 1)
 *
 *            3: ¿Excluir unidades controladas?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿Hay un jugador/unidad controlada cerca? <BOOL>
 *
 * Examples:
 *             //Opcionales no definidos.
 *             [player, 50] call FCLA_Common_fnc_nearPlayer;
 *
 *             //Opcionales definidos.
 *             [getPos player, 50, 2, false] call FCLA_Common_fnc_nearPlayer;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_entity", objNull, [], [0, 1, 2, 3]],
        ["_distance", 0, [0], 0],
        ["_minimumNumberOfUnits", 1, [0], 0],
        ["_excludeRemoteControlled", false, [true], 0]
       ];
if ((_distance <= 0) || (_minimumNumberOfUnits < 1)) exitWith {false};



//Obtener jugadores/unidades controladas.
_players = [];
{
  _isPlayer = [_x, _excludeRemoteControlled] call ACE_Common_fnc_isPlayer;
  if (_isPlayer) then {_players pushBack _x};
} forEach allUnits;


//Verificar si hay un jugador/unidad controlada dentro del rango.
_return = false;
{
  _numberOfNearPlayers = {([_entity, _x] call CBA_fnc_getDistance) < _distance} count _players;
  if ((([_entity, _x] call CBA_fnc_getDistance) < _distance) && (_numberOfNearPlayers >= _minimumNumberOfUnits)) exitWith {
    _return = true;
  };
} forEach _players;
_return
