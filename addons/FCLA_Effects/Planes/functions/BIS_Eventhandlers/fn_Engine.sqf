
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Agrega/Elimina un eventhandler del tipo "PerFrameHandler", que ejecuta una
 * serie de funciones si le cumplen las condiciones.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_plane", "_engineState"];
_engineOne = _plane selectionPosition "HitEngine";
_engineTwo = _plane selectionPosition "HitEngine2";



if (_engineState) then {
  _handle = [{
    _args params ["_plane", "_engineOne", "_engineTwo"];
    _pos = getPos _plane;
    _speed = speed _plane;
    _posASL = getPosASL _plane;
    _posATL = getPosATL _plane;
    _posASLW = getPosASLW _plane;
    _velocity = velocity _plane;
    _enginePower = round ((airplaneThrottle _plane) * 100);
    if ((((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) || !(alive _plane)) exitWith {
      if (alive _plane) exitWith {};
      _plane setVariable ["FCLA_Planes_perFrameHandler_ID", nil, true];
      [_handle] call CBA_fnc_removePerFrameHandler;
    };

    if (!isTouchingGround _plane) then {["FCLA_Plane_Camera_Shake", [_plane, _speed]] call CBA_fnc_globalEvent;};
    if ((_speed >= 150) && ((_enginePower) >= 10)) then {[_plane, _engineOne, _engineTwo, _pos, _speed, _posASL, _posATL, _posASLW, _velocity] call FCLA_Effects_fnc_groundSmokePlanes;};
  }, 0, [_plane, _engineOne, _engineTwo]] call CBA_fnc_addPerFrameHandler;
  _plane setVariable ["FCLA_Planes_perFrameHandler_ID", _handle, true];
} else {
  _perFrameHandlerID = _plane getVariable ["FCLA_Planes_perFrameHandler_ID", -1];
  if (_perFrameHandlerID <= -1) exitWith {};
  [_perFrameHandlerID] call CBA_fnc_removePerFrameHandler;
  _plane setVariable ["FCLA_Planes_perFrameHandler_ID", nil, true];
};
