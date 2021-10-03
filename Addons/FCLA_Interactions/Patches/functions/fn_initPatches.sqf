
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_initPatches

Description:
    Genera siete acciones (internas) del menú ACE 3D, que permitira al usuario colocarse
		el parche que desee de las escuadras ó el parche médico. Solo funciona para los jugadores.

Parameters:
    _unit - unidad a la que se le agregara estas acciones.

Examples:
		  [player] spawn FCLA_Interactions_fnc_initPatches;

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if (!isPlayer _unit) exitWith {};



_Takana = ["Parche_Takana", "Takana", "\FCLA_Interactions\Patches\data\icons\Takana.paa", {
	[_player, "Patch_Takana", headgear _player, uniform _player, vest _player, backpack _player] spawn FCLA_Interactions_fnc_applyPatchesToLoadout;
}, {true}] call ace_interact_menu_fnc_createAction;

_Jaguar = ["Parche_Jaguar", "Jaguar", "\FCLA_Interactions\Patches\data\icons\Jaguar.paa", {
	[_player, "Patch_Jaguar", headgear _player, uniform _player, vest _player, backpack _player] spawn FCLA_Interactions_fnc_applyPatchesToLoadout;
}, {true}] call ace_interact_menu_fnc_createAction;

_Condor = ["Parche_Condor", "Condor", "\FCLA_Interactions\Patches\data\icons\Condor.paa", {
	[_player, "Patch_Condor", headgear _player, uniform _player, vest _player, backpack _player] spawn FCLA_Interactions_fnc_applyPatchesToLoadout;
}, {true}] call ace_interact_menu_fnc_createAction;

_Salamandra = ["Parche_Salamandra", "Salamandra", "\FCLA_Interactions\Patches\data\icons\Salamandra.paa", {
	[_player, "Patch_Salamandra", headgear _player, uniform _player, vest _player, backpack _player] spawn FCLA_Interactions_fnc_applyPatchesToLoadout;
}, {true}] call ace_interact_menu_fnc_createAction;

_Anaconda = ["Parche_Anaconda", "Anaconda", "\FCLA_Interactions\Patches\data\icons\Anaconda.paa", {
	[_player, "Patch_Anaconda", headgear _player, uniform _player, vest _player, backpack _player] spawn FCLA_Interactions_fnc_applyPatchesToLoadout;
}, {true}] call ace_interact_menu_fnc_createAction;

_Quetzal = ["Parche_Quetzal", "Quetzal", "\FCLA_Interactions\Patches\data\icons\Quetzal.paa", {
	[_player, "Patch_Quetzal", headgear _player, uniform _player, vest _player, backpack _player] spawn FCLA_Interactions_fnc_applyPatchesToLoadout;
}, {true}] call ace_interact_menu_fnc_createAction;

_Medico = ["Parche_Medic", "Médico", "\FCLA_Interactions\Patches\data\icons\Medic.paa", {
	[_player, "Patch_Medico", headgear _player, uniform _player, vest _player, backpack _player] spawn FCLA_Interactions_fnc_applyPatchesToLoadout;
}, {true}] call ace_interact_menu_fnc_createAction;


{[_unit, 1, ["ACE_SelfActions", "ACE_TeamManagement", "ACE_Patches"], _x] call ace_interact_menu_fnc_addActionToObject;} forEach [_Takana, _Jaguar, _Condor, _Salamandra, _Anaconda, _Quetzal, _Medico];



/* ----------------------------- EVENTHANDLERS ----------------------------- */

["loadout", {
  params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
	systemchat "Patches";
	_patche = if (!(isNil {player getVariable "Assigned_Patche"})) then {_unit getVariable "Assigned_Patche"} else {FCLA_Default_Patche};
	[player, _patche, headgear player, uniform player, vest player, backpack player] spawn FCLA_Interactions_fnc_applyPatchesToLoadout;
}, true] call CBA_fnc_addPlayerEventHandler;
