
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_initSavePos

Description:
    Guarda el equipamiento, ubicación y rotación del jugador cuando este se
    desconecta. Una vez que se reconecta se lo teletransporta a la posición
    donde sufrio la desconexión con su rotacion e equipamiento. Esta función
    se activara unicamente si el addon option '¿Guardar ultima ubicación?'
    fue activado por el editor.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

if (!FCLA_Save_Position_onDisconnect) exitWith {};



addMissionEventHandler ["PlayerConnected", {
  params ["_id", "_uid", "_name", "_jip", "_owner"];
  if (_jip) then {
    _clientData = missionNamespace getVariable ["FCLA_Disconnected_Loadouts", []];
    _uidIndex = _clientData find _uid;
    if (_uidIndex > -1) then {
      _loadoutIndex = _uidIndex + 1;
      (_clientData select _loadoutIndex) remoteExec ["FCLA_Development_fnc_loadClientDataSavePos", _owner];
    };
  };
}];


addMissionEventHandler ["HandleDisconnect", {
 params ["_body", "_id", "_uid", "_name"];

 if (!isNull _body) then {
   if (isNil "FCLA_Disconnected_Loadouts") then {FCLA_Disconnected_Loadouts = [];};

   _loadout = getUnitLoadout _body;
   _position = getPos _body;
   _direction = getDir _body;
   _uidIndex = FCLA_Disconnected_Loadouts find _uid;

   if(_uidIndex > -1) then {
     _loadoutIndex = _uidIndex + 1;
     FCLA_Disconnected_Loadouts set [_loadoutIndex, [_loadout, _position, _direction]];
   } else {
     FCLA_Disconnected_Loadouts pushBack _uid;
     FCLA_Disconnected_Loadouts pushBack [_loadout, _position, _direction];
   };
  };
 false
}];
