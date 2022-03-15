
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce el sonido seleccionado de manera tridimensional.
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
_loopSound = _module getVariable ["FCLA_Loop", false];
_soundClass = _module getVariable ["FCLA_Sound", ""];
_soundDuration = ceil (getNumber (configFile >> "CfgSFX" >> _soundClass >> "duration"));
_compatibleSynchronizedObjects = _synchronizedObjects select {!(_x isKindOf "EmptyDetector")};
_numberOfCompatibleSynchronizedObjects = count _compatibleSynchronizedObjects;
if ((_soundClass == "") || (_soundDuration <= 0)) exitWith {["FCLA_Module_Play_Sound", "- MODULO: REPRODUCIR SONIDO", "¡Error! El/Un modulo 'Reproducir sonido' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};



//Reproducir sonido.
_findedEntity = if (_numberOfCompatibleSynchronizedObjects == 1) then {0;} else {-1;};
_soundSource = if (_findedEntity > -1) then {_compatibleSynchronizedObjects select _findedEntity;} else {_module;};
_module attachTo [_soundSource, [0, 0, 0]];
_module setVariable ["RscAttributeSound", _soundClass, true];
[_module, _synchronizedObjects, _isActivated] spawn BIS_fnc_moduleSFX;

[{(!alive (_this select 0)) || (!alive (_this select 1))}, {
  deleteVehicle (_this select 1);
}, [_soundSource, _module]] call CBA_fnc_waitUntilAndExecute;

if (_loopSound) exitWith {};
[{deleteVehicle _this;}, _module, _soundDuration] call CBA_fnc_waitAndExecute;
