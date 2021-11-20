
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede comprobar el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_item"];

_isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
_isNotOnMap = !visibleMap;
_isCompatible = _item in FCLA_CBRN_Compatible_Backpacks_With_Oxygen;
_isNotSwimming = !([_unit] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_unit getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_unit getVariable ["ACE_Dragging_isCarrying", false]);
_isTouchingGround = isTouchingGround _unit;
_isNotSurrendering = !(_unit getVariable ["ACE_Captives_isSurrendering", false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(FCLA_CBRN) && (_isPlayer) && (_isNotOnMap) && (_isCompatible) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isTouchingGround) && (_isNotSurrendering) && (_notInWeaponAnimation)
