
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_globalSay3D

Description:
    Reproduce el sonido enviado como parámetro de manera global, sin importar el
    entorno de ejecución.

Arguments:
    _source - Unidad/Objeto de donde se origina el sonido.
    _soundClass - Classname del sonido a reproducir.
    _soundTime - Tiempo en segundos que dura el sonido a reproducir.
    _deleteSource - ¿Borrar fuente del sonido cuando se termina de reproducir?
                    Valor booleano (true/false). Opcional.

Example:
    [player, "FCLA_Notification", 1] spawn FCLA_Development_fnc_globalSay3D;

Note:
    Asigna una variable de tipo objeto a la unidad/objeto desde donde proviene
    el sonido, para asi evitar un bucle de reproducción.

Public: [Yes]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_source", []], ["_soundClass", ""], ["_soundTime", 0], ["_deleteSource", false]];
_soundExists = getArray (configFile >> "CfgSounds" >> _soundClass >> "sound");
_isSourceHidden = isObjectHidden _source;
_isPlaying3DSound = _source getVariable ["FCLA_Playing_3D_Sound", false];
if ((_source isEqualTo []) || (_soundExists isEqualTo []) || (_isSourceHidden) || (_soundTime <= 0) || (_isPlaying3DSound)) exitWith {false};


[_source, _soundClass, 100] call CBA_fnc_globalSay3D;
_source setVariable ["FCLA_Playing_3D_Sound", true, true];
[{
  (_this select 0) setVariable ["FCLA_Playing_3D_Sound", nil, true];
  if (_this select 1) then {deleteVehicle _source};
}, [_source, _deleteSource], _soundTime] call CBA_fnc_waitAndExecute;
