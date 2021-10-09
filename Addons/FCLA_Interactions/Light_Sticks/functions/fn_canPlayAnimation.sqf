
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_canPlayAnimationLS

Description:
    Verifica si se puede reproducir la animación de los palillos de luz.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller"];
_currentWeapon = currentWeapon _caller;


_isNotOnMap = !visibleMap;
_notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
_notInVehicle = isNull objectParent _caller;
_isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
_hasLightSticks = (hmd _caller == "FCLA_Light_Sticks");
_notInCameraMode = !(_caller in (call ACE_Spectator_fnc_players));
_isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
_hasNotWeaponOnHand = (_currentWeapon == "");
(_isNotOnMap) && (_notInStairs) && (_notInVehicle) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_hasLightSticks) && (_notInCameraMode) && (_isNotSurrendering) && (_hasNotWeaponOnHand)
