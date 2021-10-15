
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 * 
 * Description:
 * Crea una acción ACE 3D (externa) para recargar el oxígeno de la mochila.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_object"];



/* --------------------------- RECARGAR OXÍGENO ---------------------------- */

_condition = {
  params ["_target", "_caller"];
  _currentBackpack = backpack _caller;
  _currentBackpackContainer = backpackContainer _caller;

  _isNotOnMap = !visibleMap;
  _notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
  _isObjectAlive = alive _target;
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _notInCameraMode = !(_caller in (call ACE_Spectator_fnc_players));
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isNotOxygenFull = (_currentBackpackContainer getVariable ["FCLA_Backpack_Oxygen", 100]) < 100;
  _isTouchingGround = isTouchingGround _caller;
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _hasOxygenRemaining = (_target getVariable ["FCLA_Oxygen_Supply", 1000]) > 0;
  _haveCompatibleBackpack = _currentBackpack in FCLA_Backpacks_With_Oxygen;
  (_isNotOnMap) && (_notInStairs) && (_isObjectAlive) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) &&(_notInCameraMode) && (_isCBRNActivated) && (_isNotOxygenFull) && (_isTouchingGround) && (_isNotSurrendering) && (_hasOxygenRemaining) && (_haveCompatibleBackpack);
};

_statement = {
  params ["_target", "_caller"];
  [_target, _caller] spawn FCLA_Interactions_fnc_rechargeOxygenCBRN;
};

_rechargeOxygen = ["FCLA_Recargar_Oxigeno", "Recargar oxígeno", "\FCLA_Data\ACE_Actions\Oxygen_Tank.paa", _statement, _condition] call Ace_Interact_Menu_fnc_createAction;
[_object, 0, [], _rechargeOxygen] call Ace_Interact_Menu_fnc_addActionToObject;
