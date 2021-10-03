
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_initShareMap

Description:
    Genera dos acciones (una interna y otra externa) del menú ACE 3D, que permite
    compartir el mapa (interna), y ver el mapa que se esta compartiendo (externa).
    Solo funciona para los jugadores.

Parameters:
    _unit - unidad a la que se le agregara estas acciones.

Examples:
		  [player] spawn FCLA_Interactions_fnc_initShareMap;

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if (!isPlayer _unit) exitWith {};
_unit setVariable ["Share_Map_Status", false, true];



/* ------------------------------- COMPARTIR ------------------------------- */

_Condition = {
  params ["_target", "_player", "_params"];
  (FCLA_Share_Map_Allowed) && (visibleMap) && (isNull objectParent _player) && !(_player getVariable "Share_Map_Status") &&
  ([_player, "ItemMap"] call BIS_fnc_hasItem)
};

_Statement = {
  params ["_target", "_player", "_params"];
  _player setVariable ["Share_Map_Status", true, true];
  playSound "FCLA_Unfold_Map";
  [["Compartiendo mapa:", 1.25], ["| √ |", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;
  ["Unit_sharingMap", _target] call CBA_fnc_globalEvent;
  [_player] spawn {
    params ["_player"];
    waituntil {!visibleMap};
    _player setVariable ["Share_Map_Status", false, true];
    if (alive _player) then {[["Compartiendo mapa:", 1.25], ["| X |", 1.25, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;};
  };
};

_ShareMap = ["Compartir_mapa", "Compartir mapa", "\FCLA_Interactions\Share_Map\data\Icon.paa", _Statement, _Condition] call ace_interact_menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions"], _ShareMap] call ace_interact_menu_fnc_addActionToObject;



/* ---------------------------- VER COMPARTIDO ----------------------------- */

_Condition = {
  params ["_target", "_player", "_params"];
  (FCLA_Share_Map_Allowed) && !(_target getVariable ["ace_captives_isSurrendering", false]) &&
  !(_target getVariable ["ace_captives_isHandcuffed", false]) && (alive _target) && (_target getVariable "Share_Map_Status") &&
  !([_player, "ItemMap"] call BIS_fnc_hasItem)
};

_Statement = {
  params ["_target", "_player", "_params"];
  _player linkItem "ItemMap";
  openMap [true, false];
  playSound "FCLA_Unfold_Map";
  [["Mapa de:", 1.25], [name _target, 1.25], true] call CBA_fnc_Notify;
  [_player, _target] spawn {
    params ["_player", "_target"];
    waituntil {!visibleMap || !alive _target || (_player distance _target > 3) || !(_target getVariable "Share_Map_Status")};
    _player unassignItem "ItemMap";
    _player removeItem "ItemMap";
    if (!(alive _target) || !(_target getVariable "Share_Map_Status")) exitWith {[[name _target + ":", 1.25], ["Dejo de compartir su mapa.", 1.25, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;};
    if (_player distance _target > 3) exitWith {[[name _target + ":", 1.25], ["Se ha alejado demasiado.", 1.25, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;};
  };
};

_SeeSharedMap = ["Ver_mapa", "Ver mapa", "\FCLA_Interactions\Share_Map\data\Icon.paa", _Statement, _Condition] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _SeeSharedMap] call ace_interact_menu_fnc_addActionToObject;



/* ----------------------------- EVENTHANDLER ------------------------------ */

//Informar que un jugador esta compartiendo el mapa.
["Unit_sharingMap", {
  params ["_target"];
  if ((player distance _target <= 3) && (side player == side _target) && (player != _target)) then {
    [[name _target + ":", 1.25], ["Esta compartiendo su mapa.", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;
  };
}] call CBA_fnc_addEventHandler;
