
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede desactivar la mina.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];
_vehicle = vehicle _target;
_headRealPosition = _vehicle modelToWorld (_vehicle selectionPosition "arm3");
_allMines = (nearestObjects [_headRealPosition, [], 5, true]) select {_x in allMines};
_areNotNearMines = (count _allMines) <= 0;
if (_areNotNearMines) exitWith {false};
_nearestMine = _allMines select 0;


_areAlive = (alive _target) && (alive _player) && (alive _vehicle);
_isAllowedDefuse = [_nearestMine] call ACE_Explosives_fnc_isAllowedDefuse;
_isTouchingGround = isTouchingGround _vehicle;
_inEnoughDistance = (_nearestMine distance _headRealPosition) <= 0.75;
(_areAlive) && (_isAllowedDefuse) && (_isTouchingGround) && (_inEnoughDistance)
