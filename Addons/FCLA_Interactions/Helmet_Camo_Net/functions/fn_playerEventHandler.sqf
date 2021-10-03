
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_playerEventHandlerHCN

Description:
    Asigna un eventhandler del tipo 'addPlayerEventHandler' para eliminar la
    variable de tipo objeto que almacena el casco remplazado por su homogéneo
    con camuflaje.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

["loadout", {
  params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
  _headgearOfNewLoadout = _newUnitLoadout select 6;
  _headgearOfOldLoadout = _newUnitLoadout select 6;
  if (_headgearOfNewLoadout == _headgearOfOldLoadout) exitWith {};

  _unit setVariable ["FCLA_Saved_Headgear", nil, true];
}, false] call CBA_fnc_addPlayerEventHandler;
