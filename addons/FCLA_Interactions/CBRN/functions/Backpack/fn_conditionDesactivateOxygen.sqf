
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede desactivar el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_currentGoggles = goggles _player;
_currentBackpack = backpack _player;
_backpackContainer = backpackContainer _player;


_isNotOnMap = !visibleMap;
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_hasCompatibleMask = _currentGoggles in FCLA_Oxygen_Masks;
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
_hasCompatibleBackpack = _currentBackpack in FCLA_Backpacks_With_Oxygen;
_isBackpackOxygenActivated = _backpackContainer getVariable ["FCLA_Backpack_Oxygen_Activated", false];
(_isNotOnMap) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isCBRNActivated) && (_isTouchingGround) && (_isNotSurrendering) && (_hasCompatibleMask) && (_notInWeaponAnimation) && (_hasCompatibleBackpack) && (_isBackpackOxygenActivated)
