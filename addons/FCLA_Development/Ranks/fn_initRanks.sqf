
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Le asigna al jugador un rango.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_newRank = [player] call FCLA_Common_fnc_getRankName;
_currentRank = rank player;
_disableByEditor = player getVariable ["FCLA_Disable_autoRank", false];
if ((_newRank == "") || (_newRank == _currentRank) || (_disableByEditor)) exitWith {};


[player, _newRank] remoteExec ["setUnitRank", 0, true];
