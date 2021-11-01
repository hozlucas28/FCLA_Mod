
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede quitar la venda de los ojos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];
_compatibleBandages = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];



//Target.
_currentGoggles = goggles _target;
_isAlive = alive _target;
_hasBandageEquipped = _currentGoggles in _compatibleBandages;


//Player.
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isTouchingGround = isTouchingGround _player;
_inWeaponAnimation = !isNil "FCLA_Weapon_Animation";
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
(FCLA_Blindfold_Allowed) && (_isAlive) && (_hasBandageEquipped) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isTouchingGround) && (_inWeaponAnimation) && (_isNotSurrendering)
