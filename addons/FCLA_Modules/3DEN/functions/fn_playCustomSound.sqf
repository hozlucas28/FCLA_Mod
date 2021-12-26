
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
_forceDeactivation = _module getVariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Verificar argumentos.
_modulePos = getPos _module;
_loopSound = _module getVariable ["FCLA_Sound_On_Loop", false];
_soundClass = _module getVariable ["FCLA_Classname_Sound", ""];
_moduleArea = _module getVariable ["objectArea", [0, 0, 0, false, -1]];
_maxDistance = selectMax [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4];
_soundDuration = ceil (getNumber (configFile >> "CfgSounds" >> _soundClass >> "duration"));
_numberOfCompatibleSynchronizedObjects = {!(_x isKindOf "EmptyDetector")} count _synchronizedObjects;
if ((_soundClass == "") || (_soundDuration <= 0)) exitWith {["¡Error! El/Un módulo 'Reproducir sonido (personalizado)' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Reproducir sonido.
_findedEntity = _synchronizedObjects findIf {!(_x isKindOf "EmptyDetector")};
_soundSource = if ((_findedEntity > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {_synchronizedObjects select _findedEntity;} else {_module;};
[{
  params ["_soundSource", "_loopSound", "_soundClass", "_maxDistance", "_soundDuration"];
  if (_loopSound) then {
    [{
      _isNotAlive = !alive (_args select 0);
      if (_isNotAlive) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
      if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};
      _args call FCLA_Common_fnc_globalSay3D;
    }, 0.5, [_soundSource, _soundClass, _soundDuration, _maxDistance, false]] call CBA_fnc_addPerFrameHandler;
  } else {
    _deleteSource = if (_soundSource isKindOf "VirtualAISquad") then {true;} else {false;};
    [_soundSource, _soundClass, _soundDuration, _maxDistance, _deleteSource] call FCLA_Common_fnc_globalSay3D;
  };
}, [_soundSource, _loopSound, _soundClass, _maxDistance, _soundDuration], 0.1] call CBA_fnc_waitAndExecute;


//Eliminar módulo.
if (_soundSource != _module) then {deleteVehicle _module;};
