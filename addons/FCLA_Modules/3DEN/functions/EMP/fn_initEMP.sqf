
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Inicializa un pulso electromagnetico.
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



//Generar pulso electromagnetico.
_jammer = _module getVariable ["FCLA_Jammer", false];
_moduleArea = _module getVariable ["objectArea", [0, 0, 0, false, -1]];
[_module, selectMax [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4], _jammer] spawn FCLA_Modules_fnc_spawnEMP3DEN;
