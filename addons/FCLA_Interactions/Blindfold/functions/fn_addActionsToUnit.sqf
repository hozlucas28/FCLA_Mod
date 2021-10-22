
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea dos acciones ACE 3D (externas) para vendar a una unidad, si se cumplen
 * las condiciones.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];



/* -------------------------------- COLOCAR -------------------------------- */

_Condition = {
  params ["_target", "_caller"];
  _isTargetAlive = alive _target;
  _isHandcuffed = _target getVariable ["ACE_Captives_isHandcuffed", false];
  _isUnconscious = _target getVariable ["ACE_isUnconscious", false];
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _areNotSwimming = !([_target] call ACE_Common_fnc_isSwimming) && !([_caller] call ACE_Common_fnc_isSwimming);
  _hasBandageItem = ([_caller, "FCLA_G_Blindfold_01_Black_F"] call BIS_fnc_hasItem) || ([_caller, "FCLA_G_Blindfold_01_White_F"] call BIS_fnc_hasItem);
  _isTouchingGround = isTouchingGround _caller;
  _isTargetSurrendering = _target getVariable ["ACE_Captives_isSurrendering", false];
  _hasNotBandageEquipped = !((goggles _target) in FCLA_Goggles_Bandages);
  _isNotCallerSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  (FCLA_Blindfold_Allowed) && (_isTargetAlive) && (_isHandcuffed) && (_isUnconscious) && (_isNotDragging) && (_isNotCarrying) && (_areNotSwimming) && (_hasBandageItem) && (_isTouchingGround) && (_isTargetSurrendering) && (_hasNotBandageEquipped) && (_isNotCallerSurrendering);
};

_Statement = {
  params ["_target", "_caller"];
  _currentGoggles = goggles _target;
  if ([_caller, "FCLA_G_Blindfold_01_Black_F"] call BIS_fnc_hasItem) then {
    if (_currentGoggles != "") then {removeGoggles _target; _target setVariable ["FCLA_Saved_Goggles", _currentGoggles, true];};
    _target addGoggles (FCLA_Goggles_Bandages select 0);
    [_caller, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;
    [_target, "FCLA_Gagged_Man", 3, false] call FCLA_Common_fnc_globalSay3D;
    [_caller, "FCLA_G_Blindfold_01_Black_F"] call ACE_Common_fnc_useItem;
  } else {
    if (_currentGoggles != "") then {removeGoggles _target; _target setVariable ["FCLA_Saved_Goggles", _currentGoggles, true];};
    _target addGoggles (FCLA_Goggles_Bandages select 1);
    [_caller, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;
    [_target, "FCLA_Gagged_Man", 3, false] call FCLA_Common_fnc_globalSay3D;
    [_caller, "FCLA_G_Blindfold_01_White_F"] call ACE_Common_fnc_useItem;
  };
};

_PutBlindfold = ["FCLA_Vendar_Ojos", "Vendar ojos", "\FCLA_Data\ACE_Actions\Put_Bandage.paa", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _PutBlindfold] call ACE_Interact_Menu_fnc_addActionToObject;


/* -------------------------------- QUITAR --------------------------------- */

_Condition = {
  params ["_target", "_caller"];
  _isTargetAlive = alive _target;
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _hasBandageEquipped = (goggles _target) in FCLA_Goggles_Bandages;
  (FCLA_Blindfold_Allowed) && (_isTargetAlive) && (_isNotDragging) && (_isNotCarrying) && (_isNotSurrendering) && (_hasBandageEquipped);
};

_Statement = {
  params ["_target", "_caller"];
  _currentGoggles = goggles _target;
  _originalGoggles = _target getVariable ["FCLA_Saved_Goggles", ""];

  removeGoggles _target;
  [_caller, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;
  if (_originalGoggles != "") then {_target addGoggles _originalGoggles; _target setVariable ["FCLA_Saved_Goggles", nil, true];};
  if (_currentGoggles == (FCLA_Goggles_Bandages select 0)) exitWith {[_caller, "FCLA_G_Blindfold_01_Black_F", "", -1] call ACE_Common_fnc_addToInventory;};
  if (_currentGoggles == (FCLA_Goggles_Bandages select 1)) exitWith {[_caller, "FCLA_G_Blindfold_01_White_F", "", -1] call ACE_Common_fnc_addToInventory;};
};

_removeBlindfold = ["FCLA_Quitar_Venda", "Quitar venda", "\FCLA_Data\ACE_Actions\Remove_Bandage.paa", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _removeBlindfold] call ACE_Interact_Menu_fnc_addActionToObject;
