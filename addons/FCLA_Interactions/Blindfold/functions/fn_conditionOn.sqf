
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede colocar la venda en los ojos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];
_currentGoggles = goggles _target;
_compatibleBandages = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];
_compatibleItemsBandages = ["FCLA_G_Blindfold_01_Black_F", "FCLA_G_Blindfold_01_White_F"];


_isAlive = alive _target;
_notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
_isHandcuffed = _target getVariable ["ACE_Captives_isHandcuffed", false];
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_hasBandageItem = ([_player, _compatibleItemsBandages select 0] call BIS_fnc_hasItem) || ([_player, _compatibleItemsBandages select 1] call BIS_fnc_hasItem);
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_isTargetSurrendering = _target getVariable ["ACE_Captives_isSurrendering", false];
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
_hasNotBandageEquipped = !(_currentGoggles in _compatibleBandages);
(FCLA_Blindfold_Allowed) && (_isAlive) && (_notInStairs) && (_isHandcuffed) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_hasBandageItem) && (_isTouchingGround) && (_isNotSurrendering) && (_isTargetSurrendering) && (_notInWeaponAnimation) && (_hasNotBandageEquipped)
