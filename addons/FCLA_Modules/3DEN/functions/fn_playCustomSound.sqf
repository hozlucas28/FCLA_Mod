
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
_moduleArea = _module getVariable ["objectArea", [0, 0, 0, false, -1]];
_maxDistance = selectMax [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4];
_soundDuration = ceil (getNumber (configFile >> "CfgSounds" >> _soundClass >> "duration"));
_compatibleSynchronizedObjects = _synchronizedObjects select {!(_x isKindOf "EmptyDetector")};
_numberOfCompatibleSynchronizedObjects = count _compatibleSynchronizedObjects;
if ((_soundClass == "") || (_soundDuration <= 0)) exitWith {["FCLA_Module_Play_Custom_Sound", "- MODULO: REPRODUCIR SONIDO (PERSONALIZADO)", "¡Error! El/Un modulo 'Reproducir sonido (personalizado)' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};



//Reproducir sonido.
_findedEntity = if (_numberOfCompatibleSynchronizedObjects == 1) then {0;} else {-1;};
_soundSource = if (_findedEntity > -1) then {_compatibleSynchronizedObjects select _findedEntity;} else {_module;};
[{CBA_missionTime > 0},
{
  params ["_module", "_soundSource", "_loopSound", "_soundClass", "_maxDistance", "_soundDuration"];
  if (_loopSound) then {
    [{
      _isNotAlive = !alive (_args select 0);
      if (_isNotAlive) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
      if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};
      _args call FCLA_Common_fnc_globalSay3D;
    }, 0.5, [_soundSource, _soundClass, _soundDuration, _maxDistance, false]] call CBA_fnc_addPerFrameHandler;
  } else {
    _deleteSource = if (_soundSource == _module) then {true;} else {false;};
    [_soundSource, _soundClass, _soundDuration, _maxDistance, _deleteSource] call FCLA_Common_fnc_globalSay3D;
  };
}, [_module, _soundSource, _loopSound, _soundClass, _maxDistance, _soundDuration]] call CBA_fnc_waitUntilAndExecute;


//Eliminar modulo.
if (_soundSource != _module) then {deleteVehicle _module;};
