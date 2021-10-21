
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce un sonido proveniente de un objeto/unidad en todos los clientes de
 * manera tridimencional (3D).
 *
 * Arguments:
 *            0: Origen del sonido. <OBJECT|UNIT>
 *            1: Classname del sonido que se quiere reproducir. <STRING>
 *            2: Tiempo en segundos que dura el sonido a reproducir. <NUMBER>
 *            3: Máxima distancia entre el cliente y el origen para reproducir el sonido, opcional. <NUMBER> (default: 100)
 *            4: ¿Borrar origen del sonido cuando se termina de reproducir?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 * [player, "FCLA_Hiss_1", 1] spawn FCLA_Common_fnc_globalSay3D; //No se borrara el origen del sonido.
 * [player, "FCLA_Hiss_1", 1, true] spawn FCLA_Common_fnc_globalSay3D; //Se borrara el origen del sonido.
 *
 * Note:
 * Asigna una variable de tipo objeto a la unidad/objeto desde donde proviene
 * el sonido, para asi evitar un bucle de reproducción.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_source", objNull, [objNull, teamMemberNull], 0],
        ["_soundClass", "", [""], 0],
        ["_soundTime", 0, [0], 0],
        ["_maxDistance", 100, [0], 0],
        ["_deleteSource", false, [true], 0]
       ];



//Verficar argumentos.
_soundNotExist = (getArray (configFile >> "CfgSounds" >> _soundClass >> "sound")) isEqualTo [];
_isSourceHidden = isObjectHidden _source;
_isSourcePlayingSound = _source getVariable ["FCLA_Playing_Sound", false];
if ((isNull _source) || (_maxDistance <= 0) || (_soundTime <= 0) || (_soundNotExist) || (_isSourceHidden) || (_isSourcePlayingSound)) exitWith {false};


//Reproducir sonido.
[_source, _soundClass, _maxDistance] call CBA_fnc_globalSay3D;
_source setVariable ["FCLA_Playing_Sound", true, true];


//Eliminar origen.
[{
  if (_this select 0) then {deleteVehicle _source};
  (_this select 1) setVariable ["FCLA_Playing_Sound", nil, true];
}, [_deleteSource, _source], round _soundTime] call CBA_fnc_waitAndExecute;
true
