
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera el efecto seleccionado en la posición del módulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_delayEffect = ceil (_module getVariable ["FCLA_Delay", 0]);
_selectedEffect = toUpper (_module getVariable ["FCLA_Effect", "sparks"]);
if ((_selectedEffect in ["SPARKS", "WIND_GUST"]) && (_delayEffect <= 0)) exitWith {["FCLA_Module_Spawn_Effect", "• MÓDULO: GENERAR EFECTO", "¡Error! El/Un módulo 'Generar efecto' no se pudo inicializar con éxito."] call FCLA_Common_fnc_errorMessage;};



//Generar efecto.
_jipID = ["FCLA_Spawn_Effect", [_module, _selectedEffect, _delayEffect]] call CBA_fnc_globalEventJIP;
[_jipID, _module] call CBA_fnc_removeGlobalEventJIP;
