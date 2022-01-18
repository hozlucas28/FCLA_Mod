
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
 *            2: Tiempo en segundos que dura el sonido a reproducir, opcional. <NUMBER> (default: duración definida en su classname)
 *            3: Máxima distancia en la que se escuchara el sonido, opcional. <NUMBER> (default: 100)
 *            4: ¿Borrar origen del sonido cuando se termina de reproducir?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Examples:
 *             //Opcionales no definidos.
 *             [player, "FCLA_Hiss_1"] call FCLA_Common_fnc_globalSay3D;
 *
 *             //Opcionales definidos.
 *             [Unidad_1, "FCLA_Hiss_2", 1, 50, true] call FCLA_Common_fnc_globalSay3D;
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
        ["_soundTime", getNumber (configFile >> "CfgSounds" >> (_this select 1) >> "duration"), [0], 0],
        ["_maxDistance", 100, [0], 0],
        ["_deleteSource", false, [true], 0]
       ];



//Verificar argumentos.
_soundNotExist = !(isClass (configFile >> "CfgSounds" >> _soundClass));
_isSourcePlayingSound = _source getVariable ["FCLA_Playing_Sound", false];
if ((isNull _source) || (_maxDistance <= 0) || ((ceil _soundTime) <= 0) || (_soundNotExist) || (_isSourcePlayingSound)) exitWith {false};



//Reproducir sonido.
_soundObj = createAgent ["VirtualAISquad", getPos _source, [], 0, "CAN_COLLIDE"];
_soundObj attachTo [_source, [0, 0, 0]];
[_soundObj, [_soundClass, _maxDistance, 1, false, 0]] remoteExec ["say3D", 0, true];
_source setVariable ["FCLA_Playing_Sound", true, true];


//Detener sonido.
[{
  params ["_source", "_soundObj"];
  _areNotAlive = (!alive _source) || (!alive _soundObj);
  _isSoundFinished = !(_source getVariable ["FCLA_Playing_Sound", false]);
  (_areNotAlive) || (_isSoundFinished);
}, {
  deleteVehicle (_this select 1);
}, [_source, _soundObj]] call CBA_fnc_waitUntilAndExecute;


//Eliminar origen.
[{
  (_this select 0) setVariable ["FCLA_Playing_Sound", nil, true];
  if (_this select 1) then {deleteVehicle (_this select 0)};
}, [_source, _deleteSource], ceil _soundTime] call CBA_fnc_waitAndExecute;
true
