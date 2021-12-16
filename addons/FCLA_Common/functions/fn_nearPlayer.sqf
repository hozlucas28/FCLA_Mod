
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
 *            1: Distancia en la que se verificara. <NUMBER|ARRAY OF AREA>
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
 *             [getPos player, [50, 50, 25], 2, false] call FCLA_Common_fnc_nearPlayer;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_entity", objNull, [], [0, 3]],
        ["_distance", 0, [0, []], [0, 2, 3]],
        ["_minimumNumberOfUnits", 1, [0], 0],
        ["_excludeRemoteControlled", false, [true], 0]
       ];



//Verificar argumentos.
_isNotCompatibleDistance = if (_distance isEqualType 0) then {_distance < 0;} else {({_x <= 0} count _distance) >= 3;};
if ((_isNotCompatibleDistance) || (_minimumNumberOfUnits < 1)) exitWith {false};



//Obtener jugadores/unidades controladas.
_players = [];
{
  _isPlayer = [_x, _excludeRemoteControlled] call ACE_Common_fnc_isPlayer;
  if (_isPlayer) then {_players pushBack _x};
} forEach allUnits;


//Verificar si hay un jugador/unidad controlada dentro del rango.
_return = false;
{
  _numberOfNearPlayers = {
    if (_distance isEqualType 0) then {
      (_x distance _entity) < _distance;
    } else {
      _x inArea [_entity, _distance select 0, _distance select 1, 0, false, _distance select 2];
    };
  } count _players;

  _isCloseEnough = if (_distance isEqualType 0) then {
    (_x distance _entity) < _distance;
  } else {
    _x inArea [_entity, _distance select 0, _distance select 1, 0, false, _distance select 2];
  };

  if ((_isCloseEnough) && (_numberOfNearPlayers >= _minimumNumberOfUnits)) exitWith {_return = true;};
} forEach _players;
_return
