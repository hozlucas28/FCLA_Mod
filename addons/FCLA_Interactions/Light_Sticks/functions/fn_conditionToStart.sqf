
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede reproducir la animacion de los palillos de luz.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_currentWeapon = currentWeapon _player;


_isNotOnMap = !visibleMap;
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_hasLightSticks = (hmd _player == "FCLA_Light_Sticks");
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_hasNotWeaponOnHands = (_currentWeapon == "");
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(_isNotOnMap) && (_isNotDragging) && (_isNotCarrying) && (_isNotSwimming) && (_hasLightSticks) && (_isTouchingGround) && (_isNotSurrendering) && (_hasNotWeaponOnHands) && (_notInWeaponAnimation)
