
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_loadClientDataSavePos

Description:
    Devuelve el equipamiento, posición y rotación al jugador.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

_this params ["_loadout", "_positionASL", "_dir"];
player setUnitLoadout _loadout;
player setDir _dir;
player setPosASL _positionASL;
