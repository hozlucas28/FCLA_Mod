
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


_notInStairs = !(_unit getVariable ["FCLA_inStairs", false]);
_isCompatible = _item in FCLA_Backpacks_With_Oxygen;
_isNotSwimming = !([_unit] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_unit getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_unit getVariable ["ACE_Dragging_isCarrying", false]);
_isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
_isTouchingGround = isTouchingGround _unit;
_isNotSurrendering = !(_unit getVariable ["ACE_Captives_isSurrendering", false]);
(_notInStairs) && (_isCompatible) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isCBRNActivated) && (_isTouchingGround) && (_isNotSurrendering)
