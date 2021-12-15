
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce el sonido personalizado de manera tridimensional.
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
_modulePos = getPos _module;
_loopSound = _module getVariable ["FCLA_Sound_On_Loop", false];
_soundClass = _module getVariable ["FCLA_Classname_Sound", ""];
_moduleArea = _module getvariable ["objectArea", [0, 0, 0, false, -1]];
_maxDistance = selectMax [_moduleArea select 0, _moduleArea select 1];
_soundDuration = ceil (getNumber (configFile >> "CfgSounds" >> _soundClass >> "duration"));
_numberOfCompatibleSynchronizedObjects = {!(_x isKindOf "EmptyDetector")} count _synchronizedObjects;
if ((_soundClass == "") || (_soundDuration <= 0)) exitWith {};



//Reproducir sonido.
[{
  params ["_modulePos", "_synchronizedObjects", "_loopSound", "_soundClass", "_maxDistance", "_soundDuration", "_numberOfCompatibleSynchronizedObjects"];
  _findedEntity = _synchronizedObjects findIf {!(_x isKindOf "EmptyDetector")};
  _soundSource = if ((_findedEntity > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {_synchronizedObjects select _findedEntity;} else {createAgent ["VirtualAISquad", _modulePos, [], 0, "CAN_COLLIDE"];};

  if (_loopSound) then {
    [{
      _isNotAlive = !alive ((_this select 0) select 0);
      if (_isNotAlive) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
      if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};
      (_this select 0) call FCLA_Common_fnc_globalSay3D;
    }, _soundDuration, [_soundSource, _soundClass, _soundDuration, _maxDistance, false]] call CBA_fnc_addPerFrameHandler;
  } else {
    _deleteSource = if (_soundSource isKindOf "VirtualAISquad") then {true;} else {false;};
    [_soundSource, _soundClass, _soundDuration, _maxDistance, _deleteSource] call FCLA_Common_fnc_globalSay3D;
  };
}, [_modulePos, _synchronizedObjects, _loopSound, _soundClass, _maxDistance, _soundDuration, _numberOfCompatibleSynchronizedObjects], 0.1] call CBA_fnc_waitAndExecute;


//Eliminar módulo.
deleteVehicle _module;
