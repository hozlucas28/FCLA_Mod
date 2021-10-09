
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_addActionsToUnitIDCard

Description:
    Genera dos acciones ACE 3D (interna e externa), que permiten ver la
    identificación propia o de otra unidad.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];



/* -------------------------------- INTERNA -------------------------------- */

_Condition = {
  params ["_target", "_caller"];
  _isNotOnMap = !visibleMap;
  _notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _notInCameraMode = !(_caller in (call ACE_Spectator_fnc_players));
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  (FCLA_ID_Card_Allowed) && (_isNotOnMap) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_notInCameraMode) && (_isNotSurrendering);
};

_Statement = {
  params ["_target", "_caller"];
  _notInVehicle = isNull objectParent _caller;
  _isNotPlayingAnimation = !(_caller getVariable ["FCLA_Playing_Animation", false]);

  [_caller] spawn FCLA_Interactions_fnc_showIDCard;
  [_caller] spawn FCLA_Interactions_fnc_showAttributesIDCard;
  if ((_notInVehicle) && (_isNotPlayingAnimation)) then {
    [_caller, "Gear", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;
    [{isNull findDisplay 10001}, {[_this, "", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;}, _caller] call CBA_fnc_waitUntilAndExecute;
  };
};

_ShowSelfID = ["FCLA_Ver_Identificación_Interna", "Ver identificación", "\FCLA_Data\ACE_Actions\ID_Card.paa", _Statement, _Condition] call ACE_Interact_menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions"], _ShowSelfID] call ACE_Interact_menu_fnc_addActionToObject;


/* -------------------------------- EXTERNA -------------------------------- */

_Condition = {
  params ["_target", "_caller"];
  _sideOfTarget = side _target;

  _isNotOnMap = !visibleMap;
  _notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
  _isHandcuffed = _target getVariable ["ACE_Captives_isHandcuffed", false];
  _isUnconscious = _target getVariable ["ACE_isUnconscious", false];
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _areNotSwimming = !([_target] call ACE_Common_fnc_isSwimming) && !([_caller] call ACE_Common_fnc_isSwimming);
  _isSurrendering = _target getVariable ["ACE_Captives_isSurrendering", false];
  _isSideFriendly = (_sideOfTarget == sideFriendly);
  _notInCameraMode = !(_caller in (call ACE_Spectator_fnc_players));
  _isNotCallerSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  (FCLA_ID_Card_Allowed) && (_isNotOnMap) && (_notInStairs) && (_isHandcuffed) && (_isUnconscious) && (_isNotDragging) && (_isNotCarrying) && (_areNotSwimming) && (_isSurrendering) && (_isSideFriendly) && (_notInCameraMode) && (_isNotCallerSurrendering);
};

_Statement = {
  params ["_target", "_caller"];
  [_target] spawn FCLA_Interactions_fnc_showIDCard;
  [_target] spawn FCLA_Interactions_fnc_showAttributesIDCard;
  [_caller, "putDown", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;
};

_ShowExternalID = ["FCLA_Ver_Identificación_Externa", "Ver identificación", "\FCLA_Data\ACE_Actions\ID_Card.paa", _Statement, _Condition] call ACE_Interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _ShowExternalID] call ACE_Interact_menu_fnc_addActionToObject;
