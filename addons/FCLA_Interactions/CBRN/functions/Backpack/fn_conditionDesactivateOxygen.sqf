
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede desactivar el oxigeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_currentGoggles = goggles _player;
_currentBackpack = backpack _player;
_backpackContainer = backpackContainer _player;
_compatibleOxygenMasks = if (isNil "FCLA_CBRN_Compatible_Oxygen_Masks") then {["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_RegulatorMask_F"];} else {FCLA_CBRN_Compatible_Oxygen_Masks;};
_compatibleBackpacksWithOxygen = if (isNil "FCLA_CBRN_Compatible_Backpacks_With_Oxygen") then {["B_CombinationUnitRespirator_01_F", "B_SCBA_01_F"];} else {FCLA_CBRN_Compatible_Backpacks_With_Oxygen;};


_isPlayer = [_player, true] call ACE_Common_fnc_isPlayer;
_isNotOnMap = !visibleMap;
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_hasCompatibleMask = _currentGoggles in _compatibleOxygenMasks;
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
_hasCompatibleBackpack = _currentBackpack in _compatibleBackpacksWithOxygen;
_isBackpackOxygenActivated = _backpackContainer getVariable ["FCLA_Backpack_Oxygen_Activated", false];
(_isPlayer) && (_isNotOnMap) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isTouchingGround) && (_isNotSurrendering) && (_hasCompatibleMask) && (_notInWeaponAnimation) && (_hasCompatibleBackpack) && (_isBackpackOxygenActivated)
