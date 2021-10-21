
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Según el estado enviado activa/desactiva la ducha descontaminante. Esta
 * función crea un trigger en la posición de la ducha para que esta sea
 * funcional.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_shower", "_state"];



if (_state) then {
  _attachedObjects = [];
  for "_i" from 1 to 3 do {
    _pos = _shower selectionPosition format ["shower_%1_pos", _i];
    _dir = _shower selectionPosition format ["shower_%1_dir", _i];
    _vector = ((_shower modelToWorldVisual _pos) vectorFromTo (_shower modelToWorld _dir)) vectorMultiply 1.4;

    _particleObj = createVehicle ["#particlesource", [0, 0, 0], [], 0, "CAN_COLLIDE"];
    _particleObj attachTo [_shower, [0, 0, 0]];
    _particleObj setParticleParams [["\A3\data_f\Cl_water", 1, 0, 0], "", "Billboard", 1, 1.25, _pos, _vector, 0, 1.275 * 1.45, 1, 0, [0.1, 0.7, 0.9], [[1, 1, 1, 0.02], [1, 1, 1, 0.001]], [1], 0, 0, "", "", _shower];
    _particleObj setParticleCircle [0, [0, 0, 0]];
    _particleObj setParticleRandom [0, [0, 0, 0], [0, 0, 0], 53, 0.25, [0, 0, 0, 1], 0, 0];
    _particleObj setDropInterval 0.02;
    _attachedObjects pushBack _particleObj;
  };


  _shower animateSource ["Hide_Mist_Source", 0, true];
  _soundObj = createVehicle ["VirtualAISquad", [0, 0, 0], [], 0, "CAN_COLLIDE"];
  _handle = [{
    if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};
    [(_this select 0) select 0, "FCLA_Shower", 8, false] spawn FCLA_Common_fnc_globalSay3D;
  }, 8, _soundObj] call CBA_fnc_addPerFrameHandler;


  _trigger = createTrigger ["EmptyDetector", getpos _shower, false];
  _trigger setTriggerArea [0.75, 0.75, (getDir _shower), true, 2.3];
  _trigger setTriggerActivation ["ANYPLAYER", "PRESENT", true];
  _trigger setTriggerTimeout [5, 5, 5, true];
  _trigger setTriggerStatements ["(call CBA_fnc_currentUnit) in thisList;", "_unit = (call CBA_fnc_currentUnit); _unit setVariable ['FCLA_CBRN_Enable_Damage', nil, true]; [['| Descontaminación completada |', 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify; [_unit, 'quick_view', '%1 fue descontaminado', [name _unit]] call ACE_Medical_Treatment_fnc_addToLog;", ""];
  _trigger attachTo [_shower];
  _attachedObjects pushBack _trigger;
  _shower setVariable ["FCLA_Shower_Objects", _attachedObjects, true];


  [{(isNil "FCLA_CBRN_Activated") || (!alive (_this select 0)) || !((_this select 0) getVariable ["FCLA_Shower_Status", false])}, {
    params ["_shower", "_attachedObjects", "_soundObj", "_handle"];
    deleteVehicle _soundObj;
    [_handle] call CBA_fnc_removePerFrameHandler;

    if ((isNil "FCLA_CBRN_Activated") || (!alive _shower)) then {
      {deleteVehicle _x;} forEach _attachedObjects;
      [_shower] spawn FCLA_Interactions_fnc_turnOffShowerCBRN;
    };
  }, [_shower, _attachedObjects, _soundObj, _handle]] call CBA_fnc_waitUntilAndExecute;
} else {
  _attachedObjects = _shower getVariable ["FCLA_Shower_Objects", [""]];
  _shower animateSource ["Hide_Mist_Source", 1, true];
  if ((count _attachedObjects) <= 0) exitWith {};
  {deleteVehicle _x;} forEach _attachedObjects;
};
