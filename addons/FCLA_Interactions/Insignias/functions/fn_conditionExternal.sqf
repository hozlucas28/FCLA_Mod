
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede colocar una insignia de curso a la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];


_notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
_areFriendly = [side _target, side _player] call BIS_fnc_sideIsFriendly;
_isInstructor = _player getVariable ['FCLA_Instructor', false];
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notDisableByEditor = !(_player getVariable ['FCLA_Disable_Insignias', false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(_notInStairs) && (_areFriendly) && (_isInstructor) && (_isNotDragging) && (_isNotCarrying) && (_isNotSurrendering) && (_notDisableByEditor) && (_notInWeaponAnimation)
