
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Comparte el mapa.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];



//Compartir mapa.
playSound "FCLA_Map_Unfolded";
_player setVariable ["FCLA_Sharing_Map", true, true];
[["Compartiendo mapa:", 1.25], ["| √ |", 1.25, [0.345, 0.839, 0.553, 1]], false] call CBA_fnc_Notify;


//Reproducir sonido.
_soundSource = createAgent ["VirtualAISquad", getPos _player, [], 0, "CAN_COLLIDE"];
_soundSource attachTo [_player, [0, 0, 0]];
[_soundSource, "FCLA_Map_Unfolded", 2, 5, true] call FCLA_Common_fnc_globalSay3D;


//Dejar de compartir.
[{
  params ["_player", "_soundSource"];
  _inVehicle = !isNull objectParent _player;
  _isSwimming = [_player] call ACE_Common_fnc_isSwimming;
  _isNotOnMap = !visibleMap;
  _isNotAlive = !alive _player;
  _isHandcuffed = _player getVariable ["ACE_Captives_isHandcuffed", false];
  _isNotSharingMap = !(_player getVariable ["FCLA_Sharing_Map", false]);
  _hasNotCompatibleMap = (((getUnitLoadout _player) select 9) select 0) == "";
  (!FCLA_Share_Map_Allowed) || (_inVehicle) || (_isSwimming) || (_isNotOnMap) || (_isNotAlive) || (_isHandcuffed) || (_isNotSharingMap) || (_hasNotCompatibleMap)
}, {
  params ["_player", "_soundSource"];
  deleteVehicle _soundSource;
  _player setVariable ["FCLA_Sharing_Map", nil, true];
  [["Compartiendo mapa:", 1.25], ["| X |", 1.25, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;
}, [_player, _soundSource]] call CBA_fnc_waitUntilAndExecute;
