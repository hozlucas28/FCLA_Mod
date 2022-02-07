
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra un mensaje a modo de error.
 *
 * Arguments:
 *            0: ID. <STRING>
 *            1: Titulo. <STRING>
 *            2: Texto. <STRING>
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la funcion? <BOOL>
 *
 * Example:
 * ["FCLA_Example", "Mensaje", "Esto es un ejemplo de un mensaje de error."] call FCLA_Common_fnc_errorMessage;
 *
 * Note:
 * La ID (argumento 0) sirve para que el error no se repita si ya ha sido
 * mostrado/reportado.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_ID", "", [""], 0],
        ["_header", "", [""], 0],
        ["_text", "", [""], 0]
       ];



//Verificar argumentos.
_inMultiplayer = serverName != "";
_reportedErrors = if (isNil "FCLA_Reported_Errors") then {[];} else {FCLA_Reported_Errors;};
if ((_ID == "") || (_header == "") || (_text == "") || (_inMultiplayer) || (_ID in _reportedErrors)) exitWith {false};



//Reportar y almacenar.
_reportedErrors pushBack _ID;
["FCLA_GUI_Message", [_header, _text]] call CBA_fnc_globalEventJIP;
["FCLA_Reported_Errors", _reportedErrors] call CBA_fnc_publicVariable;
true
