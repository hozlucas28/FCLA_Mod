
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede comprobar el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player", "_item"];
_compatibleBackpacksWithOxygen = missionNamespace getVariable ["FCLA_CBRN_Compatible_Backpacks_With_Oxygen", ["B_CombinationUnitRespirator_01_F", "B_SCBA_01_F"]];


_isPlayer = [_player, true] call ACE_common_fnc_isPlayer;
_isNotOnMap = !visibleMap;
_isCompatible = _item in _compatibleBackpacksWithOxygen;
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(_isPlayer) && (_isNotOnMap) && (_isCompatible) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isTouchingGround) && (_isNotSurrendering) && (_notInWeaponAnimation)
