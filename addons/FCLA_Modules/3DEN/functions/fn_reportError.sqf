
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reporta un error.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_errorID", "_header", "_text"];
_reportedErrors = missionNamespace getVariable ["FCLA_Reported_Errors", []];
if (_errorID in _reportedErrors) exitWith {};



//Reportar error y guardar.
["FCLA_GUI_Message", [_header, _text]] call CBA_fnc_globalEventJIP;
missionNamespace setVariable ["FCLA_Reported_Errors", _reportedErrors pushBack _errorID];
