
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
_forceDeactivation = _module getVariable ["FCLA_Force_Deactivation", false];
if ((_errorID == "") || (_header == "") || (_text == "") || (_forceDeactivation)) exitWith {};



//Verificar argumento.
_reportedErrors = missionNamespace getVariable ["FCLA_Reported_Errors", []];
if (_errorID in _reportedErrors) exitWith {};



//Reportar error y guardar.
["FCLA_GUI_Message", [_header, _text]] call CBA_fnc_globalEventJIP;
missionNamespace setVariable ["FCLA_Reported_Errors", _reportedErrors pushBack _errorID];
