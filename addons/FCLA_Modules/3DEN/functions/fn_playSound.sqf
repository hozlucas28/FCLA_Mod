
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
_numberOfCompatibleSynchronizedObjects = {!(_x isKindOf "EmptyDetector")} count _synchronizedObjects;
if ((_soundClass == "") || (_soundDuration <= 0)) exitWith {};



//Reproducir sonido.
_findedEntity = _synchronizedObjects findIf {!(_x isKindOf "EmptyDetector")};
_soundSource = if ((_findedEntity > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {_synchronizedObjects select _findedEntity;} else {_module;};

_soundObj = createAgent ["ModuleSound_F", getPos _soundSource, [], 0, "CAN_COLLIDE"];
_soundObj setVariable ["RSCAttributeSound", _soundClass, true];
_soundObj attachTo [_soundSource];

[{(!alive (_this select 0)) || (!alive (_this select 1))}, {
  {deleteVehicle _x} forEach _this;
}, [_soundSource, _soundObj]] call CBA_fnc_waitUntilAndExecute;

if (!_loopSound) then {
  [{
    params ["_module", "_soundSource", "_soundObj"];
    deleteVehicle _soundObj;
    if (_module == _soundSource) then {deleteVehicle _module};
  }, [_module, _soundSource, _soundObj], _soundDuration] call CBA_fnc_waitAndExecute;
};


//Eliminar módulo.
if (_module != _soundSource) then {deleteVehicle _module;};
