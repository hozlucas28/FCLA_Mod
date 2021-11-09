
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede cancelar la animación de los palillos de luz.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_currentWeapon = currentWeapon _player;
_currentAnimation = animationState _caller;
_lightSticksAnimations = ["Acts_JetsMarshallingEnginesOn_in", "Acts_JetsMarshallingEnginesOff_in", "Acts_JetsMarshallingStraight_in", "Acts_JetsMarshallingSlow_in", "Acts_JetsMarshallingRight_in", "Acts_JetsMarshallingLeft_in", "Acts_JetsMarshallingStop_in", "Acts_JetsMarshallingEmergencyStop_in"];


_isNotOnMap = !visibleMap;
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_hasLightSticks = (hmd _player == "FCLA_Light_Sticks");
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_hasNotWeaponOnHands = (_currentWeapon == "");
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
_playingLightSticksAnimation = _currentAnimation in _lightSticksAnimations;
(_isNotOnMap) && (_isNotDragging) && (_isNotCarrying) && (_isNotSwimming) && (_hasLightSticks) && (_isTouchingGround) && (_isNotSurrendering) && (_hasNotWeaponOnHands) && (_notInWeaponAnimation) && (_playingLightSticksAnimation)
