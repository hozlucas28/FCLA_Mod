
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica la antena satélital (RF 3080) para que sea funcional.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_antenna"];



[{
  _isNotAlive = !alive _args;
  _unitsInArea = allUnits select {_x inArea [_args, 2.5, 2.5, 0, false, 2]};
  _unitsNotInArea = allUnits select {!(_x in _unitsInArea)};
  _entitiesAffected = _args getVariable ["FCLA_Entities_Affected", []];
  _normalRadioRange = missionNamespace getVariable ["FCLA_TFAR_Multiplicator", 1];
  if (_isNotAlive) exitWith {
    {
      _x setVariable ["tf_sendingDistanceMultiplicator", _normalRadioRange, true];
      _x setVariable ["tf_receivingDistanceMultiplicator", _normalRadioRange, true];
    } forEach (_unitsInArea + _unitsNotInArea);
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

  {
    _affectedRadioRange = linearConversion [2.5, 1.75, _x distance _args, _normalRadioRange, _normalRadioRange * 5, true];
    _x setVariable ["tf_sendingDistanceMultiplicator", _affectedRadioRange, true];
    _x setVariable ["tf_receivingDistanceMultiplicator", _affectedRadioRange, true];
    if (!(_x in _entitiesAffected)) then {_entitiesAffected pushBack _x;};
  } forEach _unitsInArea;

  {
    if (_x in _entitiesAffected) then {
      _x setVariable ["tf_sendingDistanceMultiplicator", _normalRadioRange, true];
      _x setVariable ["tf_receivingDistanceMultiplicator", _normalRadioRange, true];
      _entitiesAffected = _entitiesAffected - [_x];
    };
  } forEach _unitsNotInArea;
  _args setVariable ["FCLA_Entities_Affected", _entitiesAffected, true];
}, 0.5, _antenna] call CBA_fnc_addPerFrameHandler;
