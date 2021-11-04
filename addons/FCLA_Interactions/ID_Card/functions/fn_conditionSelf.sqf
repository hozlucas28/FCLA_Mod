
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede ver la identificación propia.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];


_isNotOnMap = !visibleMap;
_notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(FCLA_ID_Card_Allowed) && (_isNotOnMap) && (_notInStairs) && (_isNotDragging) && (_isNotCarrying) && (_isNotSwimming) && (_isTouchingGround) && (_isNotSurrendering) && (_notInWeaponAnimation)
