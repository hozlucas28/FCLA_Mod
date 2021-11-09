
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede ver el mapa que esta compartiendo la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];


_areNear = _target distance _player <= 2;
_isAlive = alive _target;
_isSharingMap = _target getVariable ["FCLA_Sharing_Map", false];
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_areNotSwimming = !([_target] call ACE_Common_fnc_isSwimming) && !([_player] call ACE_Common_fnc_isSwimming);
_isNotHandcuffed = !(_target getVariable ["ACE_Captives_isHandcuffed", false]);
_isTouchingGround = isTouchingGround _player;
_areNotSurrendering = !(_target getVariable ["ACE_Captives_isSurrendering", false]) && !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_hasNotCompatibleMap = (((getUnitLoadout _player) select 9) select 0) == "";
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(FCLA_Share_Map_Allowed) && (_areNear) && (_isAlive) && (_isSharingMap) && (_isNotDragging) && (_isNotCarrying) && (_areNotSwimming) && (_isNotHandcuffed) && (_isTouchingGround) && (_areNotSurrendering) && (_hasNotCompatibleMap) && (_notInWeaponAnimation)
