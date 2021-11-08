
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si el jugador puede colocarse una insignia.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];


_isNotOnMap = !visibleMap;
_notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notDisableByEditor = !(_player getVariable ['FCLA_Disable_Insignias', false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(_isNotOnMap) && (_notInStairs) && (_isNotDragging) && (_isNotCarrying) && (_isTouchingGround) && (_isNotSurrendering) && (_notDisableByEditor) && (_notInWeaponAnimation)
