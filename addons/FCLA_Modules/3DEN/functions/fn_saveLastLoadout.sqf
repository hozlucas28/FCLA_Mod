
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite guardar el equipamiento que tenian por ultima vez los jugadores, para
 * asi equiparlos con los mismos en la proxima misión que contenga la misma ID.
 * Si la ID habia sido utilizada en una misión anterior se le colocara el
 * equipamiento guardado de esa misión.
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
_moreThanOne = ("FCLA_Module_Save_Loadout" countType _allLogics) > 1;
_missionID = _module getVariable ["FCLA_Mission_ID", false];
if (_moreThanOne) exitWith {["FCLA_Module_Save_Loadout", "• MÓDULO: GUARDAR ULTIMO EQUIPAMIENTO", "¡Error! Solo puede haber un módulo de este tipo. Los módulos 'Guardar ultimo equipamiento' han sido desactivados."] spawn FCLA_Common_fnc_errorMessage;};
if (_missionID == "") exitWith {["¡Error! El módulo 'Guardar ultima ubicación' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Al conectarse.
addMissionEventHandler ["PlayerConnected", {
  params ["_eventHandlerID", "_playerUID", "_playerName", "_JIP", "_player", "_eventHandlerIDStr"];
  _savedLoadouts = profileNamespace getVariable ["FCLA_Saved_Loadouts", []];
  _appliedLoadouts = missionNamespace getVariable ["FCLA_Applied_Loadouts", []];
  _findedMissionID = _savedLoadouts find _thisArgs;
  if ((!_JIP) || (_savedLoadouts isEqualTo []) || (_playerUID in _appliedLoadouts) || (_findedMissionID <= -1)) exitWith {};
  _savedLoadout = (_savedLoadouts select (_findedMissionID + 1));
  [player, _savedLoadout] remoteExec ["setUnitLoadout", _player];
  missionNamespace setVariable ["FCLA_Applied_Loadouts", _appliedLoadouts pushBack _playerUID];
}, [_missionID]];


//Al desconectarse.
addMissionEventHandler ["HandleDisconnect", {
  params ["_player", "_eventHandlerID", "_playerUID", "_playerName"];
  _savedLoadouts = profileNamespace getVariable ["FCLA_Saved_Loadouts", []];
  _findedMissionID = _savedLoadouts find _thisArgs;

  if (_findedMissionID > -1) then {
    _savedLoadout = _findedMissionID + 1;
    _savedLoadouts set [_savedLoadout, getUnitLoadout _player];
    profileNamespace setVariable ["FCLA_Saved_Loadouts", _savedLoadouts];
  } else {
    _savedLoadouts pushBack _playerUID;
    _savedLoadouts pushBack (getUnitLoadout _player);
    profileNamespace setVariable ["FCLA_Saved_Loadouts", _savedLoadouts];
  };
}, [_missionID]];
