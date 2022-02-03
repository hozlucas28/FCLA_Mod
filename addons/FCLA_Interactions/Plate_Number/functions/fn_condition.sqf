
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede ver el numero de matricula del vehiculo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];



_isAlive = alive _target;
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_hasPlateNumber = (getPlateNumber _target) != "";
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(FCLA_Plate_Number_Allowed) && (_isAlive) && (_isNotDragging) && (_isNotCarrying) && (_hasPlateNumber) && (_isNotSurrendering) && (_notInWeaponAnimation)
