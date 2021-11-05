
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Detiene el consumo de la batería de las gafas de visión nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_handle = _player getVariable ["FCLA_NVG_Battery_perFrameHandler_ID", -1];
if (_handle <= -1) exitWith {};



//Verificar si no se esta consumiendo.
_isNotConsuming = !(_player getVariable ["FCLA_NVG_Battery_Consume", false]);
if (_isNotConsuming) exitWith {};


//Detener consumo.
setAperture 0;
[_handle] call CBA_fnc_removePerFrameHandler;
_player setVariable ["FCLA_NVG_Battery_Consume", nil, true];
"FCLA_NVG_Battery_Overlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, false];
