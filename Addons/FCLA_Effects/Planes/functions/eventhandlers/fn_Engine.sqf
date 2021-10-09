
/* ----------------------------------------------------------------------------
Function: FCLA_Effects_fnc_enginePlanesEH

Description:
    Agrega/Elimina un eventhandler del tipo "PerFrameHandler", que ejecuta una
    serie de funciones si le cumplen las condiciones.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_plane", "_engineState"];
_engineOne = _plane selectionPosition "HitEngine";
_engineTwo = _plane selectionPosition "HitEngine2";



if (_engineState) then {
  _handle = [{
    (_this select 0) params ["_plane", "_engineOne", "_engineTwo"];
    _pos = getPos _plane;
    _speed = speed _plane;
    _posASL = getPosASL _plane;
    _posATL = getPosATL _plane;
    _posASLW = getPosASLW _plane;
    _velocity = velocity _plane;
    _enginePower = round ((airplaneThrottle _plane) * 100);
    if ((((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) || !(alive _plane)) exitWith {
      if (alive _plane) exitWith {};
      _plane setVariable ["FCLA_Planes_PerFrameHandler_ID", nil, true];
      [_this select 1] call CBA_fnc_removePerFrameHandler;
    };

    if (!isTouchingGround _plane) then {[[_plane, _speed], FCLA_Effects_fnc_camShakePlanes] remoteExec ["spawn", 0];};
    if ((_speed >= 150) && ((_enginePower) >= 25)) then {[_plane, _engineOne, _engineTwo, _pos, _speed, _posASL, _posATL, _posASLW, _velocity] Spawn FCLA_Effects_fnc_groundSmokePlanes;};
  }, 0, [_plane, _engineOne, _engineTwo]] call CBA_fnc_addPerFrameHandler;
  _plane setVariable ["FCLA_Planes_PerFrameHandler_ID", _handle, true];
} else {
  _perFrameHandlerID = _plane getVariable ["FCLA_Planes_PerFrameHandler_ID", -1000];
  if (_perFrameHandlerID == -1000) exitWith {};
  [_perFrameHandlerID] call CBA_fnc_removePerFrameHandler;
  _plane setVariable ["FCLA_Planes_PerFrameHandler_ID", nil, true];
};