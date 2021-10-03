
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_initSmokeSignal

Description:
    Genera dos acciones (internas) del menú ACE 3D, que permiten activar/desactivar
    las señales de humo. Estas seran visibles si el jugador tiene seleccionado el
    lanzagranadas, y el mismo cargado con un proyectil de humo. Solo funciona para
    los jugadores.

Parameters:
    _unit - unidad a la que se le agregara estas acciones.

Examples:
    [player] spawn FCLA_Interactions_fnc_initSmokeSignal;

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if (!isPlayer _unit) exitWith {};
_unit setVariable ["FCLA_Smoke_Signal_Switch", false];



/* -------------------------------- ACTIVAR -------------------------------- */

_Condition = {
  params ["_target", "_player", "_params"];
  (FCLA_Smoke_Signal_Allowed) && (["smoke",str ((weaponState _player)#3)] call BIS_fnc_inString) && !(_player getVariable "FCLA_Smoke_Signal_Switch");
};

_Statement = {
  params ["_target", "_player", "_params"];
	playsound "FCLA_Switch_Smoke_Signal";
	_player setVariable ["FCLA_Smoke_Signal_Switch", true];
};

_ActivateSmokeSignal = ["Activar_señal_humo", "Activar señal de humo", "\FCLA_Interactions\Smoke_Signal\data\Icon_On.paa", _Statement, _Condition] call ace_interact_menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions","ACE_Equipment"], _ActivateSmokeSignal] call ace_interact_menu_fnc_addActionToObject;



/* ------------------------------ DESACTIVAR ------------------------------- */

_Condition = {
  params ["_target", "_player", "_params"];
  (FCLA_Smoke_Signal_Allowed) && (["smoke",str ((weaponState _player)#3)] call BIS_fnc_inString) && (_player getVariable "FCLA_Smoke_Signal_Switch");
};

_Statement = {
  params ["_target", "_player", "_params"];
	playsound "FCLA_Switch_Smoke_Signal";
	_player setVariable ["FCLA_Smoke_Signal_Switch", false];
};

_DesactivateSmokeSignal = ["Desactivar_señal_humo", "Desactivar señal de humo", "\FCLA_Interactions\Smoke_Signal\data\Icon_Off.paa", _Statement, _Condition] call ace_interact_menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions","ACE_Equipment"], _DesactivateSmokeSignal] call ace_interact_menu_fnc_addActionToObject;



/* ----------------------------- EVENTHANDLERS ----------------------------- */

_unit addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
  #include "\FCLA_Interactions\Smoke_Signal\Smokes_Types.hpp"
  if ((_magazine in Smokes_Types) && (_unit getVariable "FCLA_Smoke_Signal_Switch")) then {
    [_projectile] spawn {
      params ["_projectile"];
      sleep 0.8;
      [_projectile] execVM "\FCLA_Interactions\Smoke_Signal\scripts\signal.sqf";
    };
  };
}];
