
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_addActionsToBackpackCBRN

Description:
    Crea tres acciones ACE 3D (internas) para activar/desactivar/comprobar el
    suministro de oxígeno.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if (!([_unit, true] call ACE_Common_fnc_isPlayer) && !(_unit in playableUnits)) exitWith {};



/* -------------------------------- ACTIVAR -------------------------------- */

_condition = {
  params ["_target", "_caller", "_arrayOfCompatibleAssets"];
  _currentGoggles = goggles _caller;
  _currentBackpack = backpack _caller;
  _currentBackpackContainer = backpackContainer _caller;

  _isNotOnMap = !visibleMap;
  _notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _notInCameraMode = !(_caller getVariable ["FCLA_Camera_Mode_On", false]);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isTouchingGround = isTouchingGround _caller;
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _haveCompatibleMask = _currentGoggles in FCLA_Oxygen_Masks;
  _haveCompatibleBackpack = _currentBackpack in FCLA_Backpacks_With_Oxygen;
  _backpackOxygenRemaining = _currentBackpackContainer getVariable ["FCLA_Backpack_Oxygen", 100] > 0;
  _isBackpackOxygenDesactivated = !(_currentBackpackContainer getVariable ["FCLA_Backpack_Oxygen_Activated", false]);
  (_isNotOnMap) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_notInCameraMode) && (_isCBRNActivated) && (_isTouchingGround) && (_isNotSurrendering) && (_haveCompatibleMask) && (_haveCompatibleBackpack) && (_backpackOxygenRemaining) && (_isBackpackOxygenDesactivated);
};

_statement = {
  params ["_target", "_caller", "_arrayOfCompatibleAssets"];
  [_caller, _arrayOfCompatibleAssets] spawn FCLA_Interactions_fnc_activateOxygenCBRN;
};

 _activateOxygen = ["FCLA_Activar_Oxigeno", "Activar oxígeno", "\FCLA_Data\ACE_Actions\Backpack_Oxygen_On.paa", _statement, _condition] call Ace_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_Equipment"], _activateOxygen] call Ace_Interact_Menu_fnc_addActionToObject;


/* ------------------------------ DESACTIVAR ------------------------------- */

_condition = {
  params ["_target", "_caller"];
  _currentBackpackContainer = backpackContainer _caller;

  _isNotOnMap = !visibleMap;
  _notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _notInCameraMode = !(_caller getVariable ["FCLA_Camera_Mode_On", false]);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isTouchingGround = isTouchingGround _caller;
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _isBackpackOxygenActivated = _currentBackpackContainer getVariable ["FCLA_Backpack_Oxygen_Activated", false];
  (_isNotOnMap) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_notInCameraMode) && (_isCBRNActivated) && (_isTouchingGround) && (_isNotSurrendering) && (_isBackpackOxygenActivated);
};

_statement = {
  params ["_target", "_caller"];
  [_caller] spawn FCLA_Interactions_fnc_desactivateOxygenCBRN;
};

_desactivateOxygen = ["FCLA_Desactivar_Oxigeno", "Desactivar oxígeno", "\FCLA_Data\ACE_Actions\Backpack_Oxygen_Off.paa", _statement, _condition] call Ace_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_Equipment"], _desactivateOxygen] call Ace_Interact_Menu_fnc_addActionToObject;


/* ------------------------- COMPROBAR SUMINISTRO -------------------------- */

_condition = {
  params ["_target", "_caller"];
  _currentBackpack = backpack _caller;

  _isNotOnMap = !visibleMap;
  _notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _notInCameraMode = !(_caller getVariable ["FCLA_Camera_Mode_On", false]);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isTouchingGround = isTouchingGround _caller;
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _haveCompatibleBackpack = _currentBackpack in FCLA_Backpacks_With_Oxygen;
  (_isNotOnMap) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_notInCameraMode) && (_isCBRNActivated) && (_isTouchingGround) && (_isNotSurrendering) && (_haveCompatibleMask) && (_haveCompatibleBackpack);
};

_statement = {
  params ["_target", "_caller"];
  [_caller] spawn FCLA_Interactions_fnc_showOxygenSupplyCBRN;
};

_checkOxygen = ["FCLA_Comprobar_Oxigeno", "Comprobar oxígeno", "", _statement, _condition] call Ace_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_Equipment"], _checkOxygen] call Ace_Interact_Menu_fnc_addActionToObject;
