
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_addActionsToUnitNVB

Description:
    Genera una acción ACE 3D (interna) para recargar la batería de las gafas
    de visión nocturna.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];



/* --------------------------- RECARGAR BATERÍA ---------------------------- */

_Condition = {
  params ["_target", "_caller"];
  _isNotOnMap = !visibleMap;
  _notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _notInCameraMode = !(_caller in (call ACE_Spectator_fnc_players));
  _hasBatteryForNVG = [_caller, "FCLA_NVG_Battery"] call BIS_fnc_hasItem;
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  (FCLA_NVG_Require_Battery) && (_isNotOnMap) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_notInCameraMode) && (_hasBatteryForNVG) && (_isNotSurrendering);
};

_Statement = {
  params ["_target", "_caller"];
  [_caller] spawn FCLA_Interactions_fnc_rechargeBatteryNVB;
};

_RechargeBattery = ["FCLA_Recargar_Bateria_NVG", "Recargar batería<br/>(NVG)", "\A3\Weapons_F\Data\UI\M_battery_CA.paa", _Statement, _Condition] call ACE_Interact_menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_Equipment"], _RechargeBattery] call ACE_Interact_menu_fnc_addActionToObject;
