
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Guarda el equipamiento, vehículo, ubicación y rotación del jugador cuando se
 * desconecta. Una vez que se reconecta se lo teletransporta a la posición ó
 * vehículo donde sufrio la desconexión. Esta función se activara unicamente
 * si el addon option '¿Guardar ultima ubicación?' esta activado.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Al conectarse.
addMissionEventHandler ["PlayerConnected", {
  params ["_id", "_uid", "_name", "_jip", "_owner"];
  _clientData = missionNamespace getVariable ["FCLA_Disconnected_Loadouts", []];
  _uidIndex = _clientData find _uid;
  if ((!_jip) || (_uidIndex <= -1) || (!FCLA_Save_Position_onDisconnect)) exitWith {};
  _loadoutIndex = _uidIndex + 1;
  [_clientData select _loadoutIndex] remoteExec ["FCLA_Development_fnc_loadClientDataSP", _owner];
}];


//Al desconectarse.
addMissionEventHandler ["HandleDisconnect", {
 params ["_body", "_id", "_uid", "_name"];
 if (isNull _body) exitWith {};
 if (isNil "FCLA_Disconnected_Loadouts") then {FCLA_Disconnected_Loadouts = [];};
 _uidIndex = FCLA_Disconnected_Loadouts find _uid;
 _lastLoadout = getUnitLoadout player;
 _lastVehicle = vehicle player;
 _lastPosition = getPos player;
 _lastDirection = getDir player;

 if (_uidIndex > -1) then {
   _loadoutIndex = _uidIndex + 1;
   FCLA_Disconnected_Loadouts set [_loadoutIndex, [_lastLoadout, _lastVehicle, _lastPosition, _lastDirection]];
 } else {
   FCLA_Disconnected_Loadouts pushBack _uid;
   FCLA_Disconnected_Loadouts pushBack [_lastLoadout, _lastVehicle, _lastPosition, _lastDirection];
 };
}];
