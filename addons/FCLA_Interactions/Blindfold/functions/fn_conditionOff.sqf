
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
_currentGoggles = goggles _target;
_compatibleBandages = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];


_isAlive = alive _target;
_notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_hasBandageEquipped = _currentGoggles in _compatibleBandages;
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(FCLA_Blindfold_Allowed) && (_isAlive) && (_notInStairs) && (_isNotDragging) && (_isNotCarrying) && (_isNotSurrendering) && (_hasBandageEquipped) && (_notInWeaponAnimation)
