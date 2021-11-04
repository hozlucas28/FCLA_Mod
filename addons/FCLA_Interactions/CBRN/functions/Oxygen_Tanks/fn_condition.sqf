
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se recargar el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];
_backpack = backpack _player;


_isAlive = alive _target;
_notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
_haveCompatibleBackpack = _backpack in FCLA_Backpacks_With_Oxygen;
(_isAlive) &&(_notInStairs) &&(_isNotSwimming) &&(_isNotDragging) &&(_isNotCarrying) &&(_isCBRNActivated) &&(_isTouchingGround) &&(_isNotSurrendering) &&(_notInWeaponAnimation) &&(_haveCompatibleBackpack)
