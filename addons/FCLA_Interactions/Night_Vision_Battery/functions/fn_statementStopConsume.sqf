
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



//Verificar variables de tipo objeto.
_handle = _player getVariable ["FCLA_NVG_Battery_perFrameHandler_ID", -1];
_isNotConsuming = !(_player getVariable ["FCLA_NVG_Battery_Activated", false]);
if ((_handle <= -1) || (_isNotConsuming)) exitWith {};


//Detener consumo.
setAperture 0;
[_handle] call CBA_fnc_removePerFrameHandler;
_player setVariable ["FCLA_NVG_Battery_Activated", nil, true];
_player setVariable ["FCLA_NVG_Battery_perFrameHandler_ID", nil, true];
"FCLA_NVG_Battery_Overlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, false];
