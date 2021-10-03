
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_initWhistle

Description:
    Genera dos acciones (internas) del menú ACE 3D, que permiten hacer sonar
    el sibato, uno corto y otro largo, se necesita del item "FCLA_Whistle".
    Solo funciona para los jugadores.

Parameters:
    _unit - unidad a la que se le agregara estas acciones.

Examples:
		  player addItem "FCLA_Whistle";
		  [player] spawn FCLA_Interactions_fnc_initWhistle;

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if (!isPlayer _unit) exitWith {};



/* --------------------------------- CORTO --------------------------------- */

_Statement = {
  params ["_target", "_player", "_params"];
  [_target, ["FCLA_Whistle_Short", 50]] remoteExec ['say3D', 0];
};

_ShortWhistle = ["Silbato_corto", "Corto", "\FCLA_Interactions\Whistle\data\Icon.paa", _Statement, {[_player, "FCLA_Whistle"] call BIS_fnc_hasItem}] call ace_interact_menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_Equipment", "ACE_Whistle"], _ShortWhistle] call ace_interact_menu_fnc_addActionToObject;



/* --------------------------------- LARGO --------------------------------- */

_Statement = {
  params ["_target", "_player", "_params"];
  [_target, ["FCLA_Whistle_Long", 50]] remoteExec ['say3D', 0];
};

_LongWhistle = ["Silbato_largo", "Largo", "\FCLA_Interactions\Whistle\data\Icon.paa", _Statement, {[_player, "FCLA_Whistle"] call BIS_fnc_hasItem}] call ace_interact_menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_Equipment", "ACE_Whistle"], _LongWhistle] call ace_interact_menu_fnc_addActionToObject;
