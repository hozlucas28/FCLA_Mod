
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
params [
        ["_source", objNull, [objNull, teamMemberNull], 0],
        ["_soundClass", "", [""], 0],
        ["_soundTime", getNumber (configFile >> "CfgSounds" >> (_this select 1) >> "duration"), [0], 0],
        ["_maxDistance", 100, [0], 0]
       ];



//Verificar argumentos.
_soundNotExist = !(isClass (configFile >> "CfgSounds" >> _soundClass));
_isSourcePlayingSound = _source getVariable ["FCLA_Playing_Sound", false];
if ((isNull _source) || (_maxDistance <= 0) || ((ceil _soundTime) <= 0) || (_soundNotExist) || (_isSourcePlayingSound)) exitWith {};



//Reproducir sonido.
_soundObj = createAgent ["VirtualAISquad", getPos _source, [], 0, "CAN_COLLIDE"];
_soundObj attachTo [_source, [0, 0, 0]];
[_soundObj, [_soundClass, _maxDistance, 1, false, 0]] remoteExec ["say3D", 0, true];
_source setVariable ["FCLA_Playing_Sound", true, true];


//Detener sonido.
[{
  params ["_source", "_soundObj"];
  _areNotAlive = (isNull _source) || (isNull _soundObj);
  _isSoundFinished = !(_source getVariable ["FCLA_Playing_Sound", false]);
  (_areNotAlive) || (_isSoundFinished);
}, {
  deleteVehicle (_this select 1);
}, [_source, _soundObj]] call CBA_fnc_waitUntilAndExecute;


//Restaurar variable.
[{_this setVariable ["FCLA_Playing_Sound", nil, true];}, _source, ceil _soundTime] call CBA_fnc_waitAndExecute;
true
