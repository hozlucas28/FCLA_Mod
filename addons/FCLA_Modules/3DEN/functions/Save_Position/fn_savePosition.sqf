
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Guarda la ubicación/dirección/equipamiento/vehículo de los jugadores cuando
 * se desconectan. Una vez que se reconectan se los teletransporta a la posición
 * ó vehículo donde sufrieron la desconexión.
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
_allLogics = allMissionObjects "Logic";
_moreThanOne = ("FCLA_Module_Save_Position" countType _allLogics) > 1;
_saveLoadoutState = _module getVariable ["FCLA_Save_Loadout", false];
_saveVehicleState = _module getVariable ["FCLA_Save_Vehicle", false];
_savePosAndDirState = _module getVariable ["FCLA_Save_PosAndDir", false];
if (_moreThanOne) exitWith {["FCLA_Module_Save_Position", "• MÓDULO: GUARDAR ULTIMA UBICACIÓN", "¡Error! Solo puede haber un módulo de este tipo. Los módulos 'Guardar ultima ubicación' han sido desactivados."] spawn FCLA_Modules_fnc_reportError3DEN;};
if ((!_saveLoadoutState) && (!_saveVehicleState) && (!_savePosAndDirState)) exitWith {["¡Error! El módulo 'Guardar ultima ubicación' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Al conectarse.
addMissionEventHandler ["PlayerConnected", {
  params ["_eventHandlerID", "_playerUID", "_playerName", "_JIP", "_player", "_eventHandlerIDStr"];
  _playersSavedData = missionNamespace getVariable ["FCLA_Players_Saved_Data", []];
  _findedUID = _playersSavedData find _playerUID;
  if ((!_JIP) || (_playersSavedData isEqualTo []) || (_findedUID <= -1)) exitWith {};
  _playerData = (_playersSavedData select (_findedUID + 1));
  [_playerData, _thisArgs] remoteExec ["FCLA_Modules_fnc_setPosition3DEN", _player];
}, [_savePosAndDirState, _saveLoadoutState, _saveVehicleState]];


//Al desconectarse.
addMissionEventHandler ["HandleDisconnect", {
  params ["_player", "_eventHandlerID", "_playerUID", "_playerName"];
  _thisArgs params ["_savePosAndDirState", "_saveLoadoutState", "_saveVehicleState"];
  _playersSavedData = missionNamespace getVariable ["FCLA_Players_Saved_Data", []];
  _findedUID = _playersSavedData find _playerUID;

  _vehicleToSave = if (_saveVehicleState) then {vehicle _player;};
  _loadoutToSave = if (_saveLoadoutState) then {getUnitLoadout _player;};
  _posAndDirToSave = if (_savePosAndDirState) then {[getPos _player, getDir _player];};

  if (_findedUID > -1) then {
    _playerData = _findedUID + 1;
    _playersSavedData set [_playerData, [_posAndDirToSave, _loadoutToSave, _vehicleToSave]];
  } else {
    _playersSavedData pushBack _playerUID;
    _playersSavedData pushBack [_posAndDirToSave, _loadoutToSave, _vehicleToSave];
  };
}, [_savePosAndDirState, _saveLoadoutState, _saveVehicleState]];


//Eliminar módulo.
deleteVehicle _module;
