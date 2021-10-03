
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_addActionsToShowerCBRN

Description:
		Crea dos acciones ACE 3D (externas) que permiten activar/desactivar
    las duchas descontaminantes.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_shower"];
_shower setVariable ["BIN_deconshower_disableAction", true, true];



/* ------------------------------- ENCENDER -------------------------------- */

_condition = {
  params ["_target", "_caller"];
  _isObjectAlive = alive _target;
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _isShowerDesactivated = !(_target getVariable ["FCLA_Shower_Status", false]);
  (_isObjectAlive) && (_isNotDragging) && (_isNotCarrying) && (_isCBRNActivated) && (_isNotSurrendering) && (_isShowerDesactivated);
};

_statement = {
  params ["_target", "_caller"];
  [_target] spawn FCLA_Interactions_fnc_turnOnShowerCBRN;
  [_caller, "putDown", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;
};

_turnOnShower = ["FCLA_Encender_Ducha", "Encender ducha", "\FCLA_Data\ACE_Actions\Shower_On.paa", _statement, _condition] call ACE_Interact_Menu_fnc_createAction;
[_shower, 0, [], _turnOnShower] call ACE_Interact_Menu_fnc_addActionToObject;


/* -------------------------------- APAGAR --------------------------------- */

_condition = {
  params ["_target", "_caller"];
  _isObjectAlive = alive _target;
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isShowerActivated = _target getVariable ["FCLA_Shower_Status", false];
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  (_isObjectAlive) && (_isNotDragging) && (_isNotCarrying) && (_isCBRNActivated) && (_isShowerActivated) && (_isNotSurrendering);
};

_statement = {
  params ["_target", "_caller"];
  [_target] spawn FCLA_Interactions_fnc_turnOffShowerCBRN;
  [_caller, "putDown", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;
};

_turnOffShower = ["FCLA_Apagar_Ducha", "Apagar ducha", "\FCLA_Data\ACE_Actions\Shower_Off.paa", _statement, _condition] call ACE_Interact_Menu_fnc_createAction;
[_shower, 0, [], _turnOffShower] call ACE_Interact_Menu_fnc_addActionToObject;


/* ------------------------- COMPROBAR SUMINISTRO -------------------------- */

_condition = {
  params ["_target", "_caller"];
  _isObjectAlive = alive _target;
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _isShowerDesactivated = !(_target getVariable ["FCLA_Shower_Status", false]);
  (_isObjectAlive) && (_isNotDragging) && (_isNotCarrying) && (_isCBRNActivated) && (_isNotSurrendering) && (_isShowerDesactivated);
};

_statement = {
  params ["_target", "_caller"];
  [_target, _caller] spawn FCLA_Interactions_fnc_showWaterSupplyCBRN;
};

_checkWaterSupply = ["FCLA_Comprobar_Suministro", "Comprobar suministro", "\FCLA_Data\ACE_Actions\Water_Meter.paa", _statement, _condition] call ACE_Interact_Menu_fnc_createAction;
[_shower, 0, [], _checkWaterSupply] call ACE_Interact_Menu_fnc_addActionToObject;
