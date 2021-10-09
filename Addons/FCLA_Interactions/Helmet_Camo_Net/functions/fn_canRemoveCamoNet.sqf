
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_canRemoveHCN

Description:
    Verifica si se puede quitar la red de camuflaje del casco.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller", "_arrayOfCompatibleHelmetsWithCamoNet"];
_currentHelmet = headgear _caller;


_isNotOnMap = !visibleMap;
_notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
_isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
_notInCameraMode = !(_caller in (call ACE_Spectator_fnc_players));
_isTouchingGround = isTouchingGround _caller;
_isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
_haveCompatibleHelmetWithCamoNet = _currentHelmet in _arrayOfCompatibleHelmetsWithCamoNet;
(_isNotOnMap) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_notInCameraMode) && (_isTouchingGround) && (_isNotSurrendering) && (_haveCompatibleHelmetWithCamoNet)
