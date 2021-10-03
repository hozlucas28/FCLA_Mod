
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_initCamera

Description:
    Genera una acción (interna) del menú ACE 3D, que permite colocar una cámara
    debajo de una puerta para ver que hay en el interior sin la necesidad
    de abrirla. Requiere el item "ACE_HuntIR_monitor" para funcionar.
    Solo funciona para los jugadores.

Parameters:
    _unit - unidad a la que se le agregara esta acción.

Examples:
		  player addItem "ACE_HuntIR_monitor";
		  [player] spawn FCLA_Interactions_fnc_initCamera;

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if (!isPlayer _unit) exitWith {};



/* ----------------------------- PASAR CÁMARA ------------------------------ */

_Condition = {
  params ["_target", "_player", "_params"];
  ((([cursorTarget] call FCLA_Interactions_fnc_doorState) select 0) != "") && ([_player, "ACE_HuntIR_monitor"] call BIS_fnc_hasItem) &&
  (isTouchingGround _player) && (isNull objectParent _player);
};

_Statement = {
  params ["_target", "_player", "_params"];
  [cursorTarget] spawn FCLA_Interactions_fnc_camera;
};

_UseCamera = ["Pasar_camara", "Pasar cámara", "\z\ace\addons\huntir\UI\w_huntir_monitor_ca.paa", _Statement, _Condition] call ace_interact_menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions","ACE_Equipment"], _UseCamera] call ace_interact_menu_fnc_addActionToObject;
