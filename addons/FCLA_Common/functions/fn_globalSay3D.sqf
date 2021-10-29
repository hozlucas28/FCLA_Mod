
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce un sonido proveniente de un objeto/unidad en todos los clientes de
 * manera tridimencional (3D). Evita conflictos con el mod.
 *
 * Arguments:
 *            0: Origen del sonido. <UNIT|OBJECT|VEHICLE>
 *            1: Classname del sonido que se quiere reproducir. <STRING>
 *            2: Tiempo en segundos que dura el sonido a reproducir. <NUMBER>
 *            3: Máxima distancia en la que se escuchara el sonido, opcional. <NUMBER> (default: 100)
 *            4: ¿Borrar origen del sonido cuando se termina de reproducir?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Examples:
 * [player, "FCLA_Hiss_1", 1] call FCLA_Common_fnc_globalSay3D; //Opcionales no definidos.
 * [Unidad_1, "FCLA_Hiss_2", 1, 50, true] call FCLA_Common_fnc_globalSay3D; //Opcionales definidos.
 *
 * Note:
 * La función le asigna el valor <true> a la variable de tipo
 * objeto "FCLA_Playing_Sound" asociada a la unidad/objeto origen
 * del sonido, para asi evitar un bucle de reproducción.
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
_soundNotExist = !(isClass (configFile >> "CfgSounds" >> _soundClass));
_isSourceHidden = isObjectHidden _source;
_isSourcePlayingSound = _source getVariable ["FCLA_Playing_Sound", false];
if ((isNull _source) || (_maxDistance <= 0) || (_soundTime <= 0) || (_soundNotExist) || (_isSourceHidden) || (_isSourcePlayingSound)) exitWith {false};


//Reproducir sonido.
[_source, _soundClass, _maxDistance] call CBA_fnc_globalSay3D;
_source setVariable ["FCLA_Playing_Sound", true, true];


//Eliminar origen.
[{
  (_this select 0) setVariable ["FCLA_Playing_Sound", nil, true];
  if (_this select 1) then {deleteVehicle (_this select 0)};
}, [_source, _deleteSource], round _soundTime] call CBA_fnc_waitAndExecute;
true
