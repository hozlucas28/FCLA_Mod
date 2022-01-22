
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reporta un error.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_errorID", "", [""], 0],
        ["_header", "", [""], 0],
        ["_text", "", [""], 0]
       ];
if ((_errorID == "") || (_header == "") || (_text == "")) exitWith {};



//Verificar argumento.
_reportedErrors = missionNamespace getVariable ["FCLA_Reported_Errors", []];
if (_errorID in _reportedErrors) exitWith {};



//Reportar error y guardar.
["FCLA_GUI_Message", [_header, _text]] call CBA_fnc_globalEvent;
missionNamespace setVariable ["FCLA_Reported_Errors", _reportedErrors pushBack _errorID];
