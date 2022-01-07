
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede desarmar la antena satélital.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];


_areNear = (_player distance _target) <= 2;
_areAlive = (alive _target) && (alive _player);
_isNotOnMap = !visibleMap;
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(_areNear) && (_areAlive) && (_isNotOnMap) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isTouchingGround) && (_isNotSurrendering) && (_notInWeaponAnimation)
