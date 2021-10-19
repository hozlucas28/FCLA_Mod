
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera tres acciones ACE 3D (internas), que permiten colocar/quitar las
 * distintas redes de camuflaje para el casco.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];



/* ---------------------------- COLOCAR - ARIDO ---------------------------- */

_Condition = {
  params ["_target", "_caller"];
  [_caller, "Arid", FCLA_Arid_Helmets_Without_Camo_Net] call FCLA_Interactions_fnc_canEquipHCN;
};

_Statement = {
  params ["_target", "_caller"];
  [_caller, "Arid", FCLA_Arid_Helmets_Without_Camo_Net, FCLA_Arid_Helmets_With_Camo_Net] spawn FCLA_Interactions_fnc_equipHCN;
};

_PutAridCamoNet = ["FCLA_Colocar_Red_de_Camuflaje_Arida", "Colocar camuflaje<br/>(casco)", "\FCLA_Interactions\Helmet_Camo_Net\data\pictures\FCLA_Camo_Net_Arid.paa", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_Equipment"], _PutAridCamoNet] call ACE_Interact_Menu_fnc_addActionToObject;


/* -------------------------- COLOCAR - TROPICAL --------------------------- */

_Condition = {
  params ["_target", "_caller"];
  [_caller, "Tropical", FCLA_Tropical_Helmets_Without_Camo_Net] call FCLA_Interactions_fnc_canEquipHCN;
};

_Statement = {
  params ["_target", "_caller"];
  [_caller, "Tropical", FCLA_Tropical_Helmets_Without_Camo_Net, FCLA_Tropical_Helmets_With_Camo_Net] spawn FCLA_Interactions_fnc_equipHCN;
};

_PutGreenCamoNet = ["FCLA_Colocar_Red_de_Camuflaje_Tropical", "Colocar camuflaje<br/>(casco)", "\FCLA_Interactions\Helmet_Camo_Net\data\pictures\FCLA_Camo_Net_Tropical.paa", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_Equipment"], _PutGreenCamoNet] call ACE_Interact_Menu_fnc_addActionToObject;


/* -------------------------------- QUITAR --------------------------------- */

_Condition = {
  params ["_target", "_caller"];
  _currentHelmet = headgear _caller;
  _compatibleHelmetsWithCamoNet = FCLA_Arid_Helmets_With_Camo_Net + FCLA_Tropical_Helmets_With_Camo_Net;

  _isNotOnMap = !visibleMap;
  _notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _notInCameraMode = !(_caller in (call ACE_Spectator_fnc_players));
  _isTouchingGround = isTouchingGround _caller;
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _haveCompatibleHelmetWithCamoNet = _currentHelmet in _compatibleHelmetsWithCamoNet;
  (_isNotOnMap) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_notInCameraMode) && (_isTouchingGround) && (_isNotSurrendering) && (_haveCompatibleHelmetWithCamoNet)
};

_Statement = {
  params ["_target", "_caller"];
  [_caller] spawn FCLA_Interactions_fnc_removeHCN;
};

_RemoveCamoNet = ["FCLA_Quitar_Red_de_Camuflaje", "Quitar camuflaje<br/>(casco)", "\FCLA_Data\ACE_Actions\Remove_Camo_Net.paa", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_Equipment"], _RemoveCamoNet] call ACE_Interact_Menu_fnc_addActionToObject;
