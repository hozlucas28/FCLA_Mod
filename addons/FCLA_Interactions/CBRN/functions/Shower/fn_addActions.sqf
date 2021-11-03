
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea dos acciones ACE 3D (externas) para encender/apagar la ducha descontaminante.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_object"];
_object setVariable ["BIN_deconshower_disableAction", true, true];



/* ------------------------------- ENCENDER -------------------------------- */

_Condition = {
  params ["_target", "_player"];
  _isAlive = alive _target;
  _notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
  _isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
  _isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
  _isDesactivated = _target getVariable ["FCLA_Shower_Status", false];
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isTouchingGround = isTouchingGround _player;
  (_isAlive) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isDesactivated) && (_isCBRNActivated) && (_isTouchingGround);
};

_Statement = {
  params ["_target", "_player"];
  ["FCLA_Switch_Shower", [_target, true]] call CBA_fnc_serverEvent;
  [_player, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;
};

_turnOn = ["FCLA_Turn_On_Shower", "Encender ducha", "\FCLA_Data\ACE_Actions\Shower_On.paa", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_object, 0, [], _turnOn] call ACE_Interact_Menu_fnc_addActionToObject;


/* -------------------------------- APAGAR --------------------------------- */

_Condition = {
  params ["_target", "_player"];
  _isAlive = alive _target;
  _isActivated = _target getVariable ["FCLA_Shower_Status", false];
  _notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
  _isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
  _isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isTouchingGround = isTouchingGround _player;
  (_isAlive) && (_isActivated) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isCBRNActivated) && (_isTouchingGround);
};

_Statement = {
  params ["_target", "_player"];
  ["FCLA_Switch_Shower", [_target, false]] call CBA_fnc_serverEvent;
  [_player, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;
};

_turnOff = ["FCLA_Turn_Off_Shower", "Apagar ducha", "\FCLA_Data\ACE_Actions\Shower_Off.paa", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_object, 0, [], _turnOff] call ACE_Interact_Menu_fnc_addActionToObject;
