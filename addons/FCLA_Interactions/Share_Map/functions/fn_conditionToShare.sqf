
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede compartir el mapa.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];


_isOnMap = visibleMap;
_notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
_notInVehicle = isNull objectParent _player;
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotSharingMap = !(_player getVariable ["FCLA_Sharing_Map", false]);
_isTouchingGround = isTouchingGround _player;
_hasCompatibleMap = (((getUnitLoadout _player) select 9) select 0) != "";
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
(FCLA_Share_Map_Allowed) && (_isOnMap) && (_notInStairs) && (_notInVehicle) && (_isNotDragging) && (_isNotCarrying) && (_isNotSwimming) && (_isNotSharingMap) && (_isTouchingGround) && (_hasCompatibleMap) && (_isNotSurrendering)
