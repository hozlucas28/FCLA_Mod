
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea dos acciones ACE 3D (interna e externa) para compartir/ver el mapa.
 *
 * Public: [No]
---------------------------------------------------------------------------- */



/* ------------------------------- COMPARTIR ------------------------------- */

_Condition = {
  params ["_target", "_player"];
  [_player] call FCLA_Interactions_fnc_conditionToShareSM;
};

_Statement = {
  params ["_target", "_player"];
  [_player] spawn FCLA_Interactions_fnc_statementToShareSM;
};

_ShareMap = ["FCLA_Share_Map", "Compartir mapa", "\FCLA_Data\ACE_Actions\Map.paa", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
["CAManBase", 1, ["ACE_SelfActions"], _ShareMap, true] call ACE_Interact_Menu_fnc_addActionToClass;



/* ---------------------------------- VER ---------------------------------- */

_Condition = {
  params ["_target", "_player"];
  [_target, _player] call FCLA_Interactions_fnc_conditionToSeeSM;
};

_Statement = {
  params ["_target", "_player"];
  [_target, _player] spawn FCLA_Interactions_fnc_statementToSeeSM;
};

_SeeSharedMap = ["FCLA_See_Shared_Map", "Ver mapa", "\FCLA_Data\ACE_Actions\Map.paa", _Statement, _Condition, {}, [], [0, 0, 0], 2] call ACE_Interact_Menu_fnc_createAction;
["CAManBase", 0, ["ACE_MainActions"], _SeeSharedMap, true] call ACE_Interact_Menu_fnc_addActionToClass;
