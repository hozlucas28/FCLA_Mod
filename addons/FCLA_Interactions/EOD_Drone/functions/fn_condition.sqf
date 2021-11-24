
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
_nearestMine = nearestObject [_vehicle, "TimeBombCore"];
_headModelPosition = _vehicle selectionPosition "arm3";
_headRealPosition = _vehicle modelToWorld _headModelPosition;


_areAlive = (alive _target) && (alive _player) && (alive _vehicle);
_isVehicle = _vehicle != _target;
_isAllowedDefuse = [_nearestMine] call ACE_Explosives_fnc_isAllowedDefuse;
_isTouchingGround = isTouchingGround _vehicle;
_inEnoughDistance = (_nearestMine distance _headRealPosition) <= 1.25;
(_areAlive) && (_isVehicle) && (_isAllowedDefuse) && (_isTouchingGround) && (_inEnoughDistance)
