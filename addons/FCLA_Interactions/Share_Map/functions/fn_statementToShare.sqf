
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
_player setVariable ["FCLA_Sharing_Map", true, true];
[{
  if (!((_this select 0) getVariable ["FCLA_Sharing_Map", false])) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};
  hintSilent parseText "<t size='1.5'>Compartiendo mapa:</t><br/><t size='1.5' color='#FF58D68D'>| √ |</t>";
}, 0.5, _player] call CBA_fnc_addPerFrameHandler;


//Reproducir sonido.
if (isObjectHidden _player) then {
  _soundSource = createAgent ["VirtualAISquad", getPos _player, [], 0, "CAN_COLLIDE"];
  _soundSource attachTo [_player, [0, 0, 0]];
  [_soundSource, "FCLA_Map_Unfolded", nil, 250, true] call FCLA_Common_fnc_globalSay3D;
};


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
  hintSilent parseText "<t size='1.5'>Compartiendo mapa:</t><br/><t size='1.5' color='#FFD65858'>| X |</t>";
  [{hintSilent "";}, [], 4] call CBA_fnc_waitAndExecute;
}, [_player, _soundSource]] call CBA_fnc_waitUntilAndExecute;
