
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede colocar la red de camuflaje para el casco.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller", "_typeOfCamoNet", "_compatibleHelmets"];
_currentHeadgear = headgear _caller;


_isNotOnMap = !visibleMap;
_notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
_isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
_notInCameraMode = !(_caller in (call ACE_Spectator_fnc_players));
_isTouchingGround = isTouchingGround _caller;
_isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
_haveCompatibleHelmet = _currentHeadgear in _compatibleHelmets;
_haveCamoNetItem = switch (_typeOfCamoNet) do {
	case "Arid": {[_caller, "FCLA_Camo_Net_Arid"] call BIS_fnc_hasItem;};
	case "Tropical": {[_caller, "FCLA_Camo_Net_Tropical"] call BIS_fnc_hasItem;};
  default {false};
};
(_isNotOnMap) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_notInCameraMode) && (_isTouchingGround) && (_isNotSurrendering) && (_haveCompatibleHelmet) && (_haveCamoNetItem)
