
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede ver la identificación de la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];


_isNotOnMap = !visibleMap;
_notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
_areFriendly = [side _player, side _target] call BIS_fnc_sideIsFriendly;
_isHandcuffed = _target getVariable ["ACE_Captives_isHandcuffed", false];
_isUnconscious = _target getVariable ["ACE_isUnconscious", false];
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_areNotSwimming = !([_target] call ACE_Common_fnc_isSwimming) && !([_player] call ACE_Common_fnc_isSwimming);
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_isTargetSurrendering = _target getVariable ["ACE_Captives_isSurrendering", false];
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(FCLA_ID_Card_Allowed) && (_isNotOnMap) && (_notInStairs) && (_areFriendly) && (_isHandcuffed) && (_isUnconscious) && (_isNotDragging) && (_isNotCarrying) && (_areNotSwimming) && (_isTouchingGround) && (_isNotSurrendering) && (_isTargetSurrendering) && (_notInWeaponAnimation)
