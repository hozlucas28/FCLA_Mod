
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede ensamblar la antena satélital.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];


_isNotOnMap = !visibleMap;
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
_hasSatelliteAntennaItem = [_player, "FCLA_RF_3080"] call BIS_fnc_hasItem;
(_isNotOnMap) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isTouchingGround) && (_isNotSurrendering) && (_notInWeaponAnimation) && (_hasSatelliteAntennaItem)
