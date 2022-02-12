
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce un sonido proveniente de un objeto/unidad en todos los clientes de
 * manera tridimencional (3D).
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_source", "_soundClass", "_maxDistance"];



//Verificar argumentos.
_soundTime = getNumber (configFile >> "CfgSounds" >> _soundClass >> "duration");
_soundNotExist = !(isClass (configFile >> "CfgSounds" >> _soundClass));
if ((isNull _source) || (_maxDistance <= 0) || ((ceil _soundTime) <= 0) || (_soundNotExist)) exitWith {};



//Reproducir sonido.
_soundObj = createAgent ["VirtualAISquad", getPos _source, [], 0, "CAN_COLLIDE"];
_soundObj attachTo [_source, [0, 0, 0]];
[_soundObj, [_soundClass, _maxDistance, 1, false, 0]] remoteExec ["say3D", 0, false];


//Eliminar agente.
[{deleteVehicle _this;}, _soundObj, ceil _soundTime] call CBA_fnc_waitAndExecute;
