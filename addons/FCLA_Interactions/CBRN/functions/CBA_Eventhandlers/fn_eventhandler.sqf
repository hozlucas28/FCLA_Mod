
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un eventhandler que permite encender/apagar la ducha descontaminante.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Switch_Shower", {
  params ["_shower", "_state"];
  if (!_state) exitWith {
    _shower animateSource ["Hide_Mist_Source", 1, true];
    _objects = _shower getVariable ["FCLA_Shower_Objects", []];
    if (_objects isEqualTo []) exitWith {};
    {deleteVehicle _x;} forEach _objects;
    _shower setVariable ["FCLA_Shower_Status", nil, true];
    _shower setVariable ["FCLA_Shower_Objects", nil, true];
  };


  //Generar efecto.
  _objects = [];
  _shower animateSource ["Hide_Mist_Source", 0, true];
  _target setVariable ["FCLA_Shower_Status", true, true];
  for "_i" from 1 to 3 do {
    _pos = _shower selectionPosition format ["shower_%1_pos", _i];
    _dir = _shower selectionPosition format ["shower_%1_dir", _i];
    _vector = ((_shower modelToWorldVisual _pos) vectorFromTo (_shower modelToWorld _dir)) vectorMultiply 1.4;
    _particleObj = createVehicle ["#particlesource", getPos _shower, [], 0, "CAN_COLLIDE"];
    _particleObj setDropInterval 0.02;
    _particleObj attachTo [_shower, [0, 0, 0]];
    _particleObj setParticleCircle [0, [0, 0, 0]];
    _particleObj setParticleRandom [0, [0, 0, 0], [0, 0, 0], 53, 0.25, [0, 0, 0, 1], 0, 0];
    _particleObj setParticleParams [["\A3\data_f\Cl_water", 1, 0, 0], "", "Billboard", 1, 1.25, _pos, _vector, 0, 1.275 * 1.45, 1, 0, [0.1, 0.7, 0.9], [[1, 1, 1, 0.02], [1, 1, 1, 0.001]], [1], 0, 0, "", "", _shower];
    _objects pushBack _particleObj;
  };


  //Reproducir sonido.
  _soundObj = createAgent ["VirtualAISquad", getPos _shower, [], 0, "CAN_COLLIDE"];
  _soundObj attachTo [_shower, [0, 0, 0]];
  _objects pushBack _soundObj;
  [{
    _isNotAlive = !alive (_this select 0);
    if (_isNotAlive) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
    if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};
    [_this select 0, "FCLA_Shower", nil, 20, false] call FCLA_Common_fnc_globalSay3D;
  }, 0.5, _soundObj] call CBA_fnc_addPerFrameHandler;


  //Crear activador.
  _Condition = {
    (call CBA_fnc_currentUnit) in thisList;
  };

  _Statement = {
    _player = call CBA_fnc_currentUnit;
    _player setVariable ['FCLA_CBRN_Damage_Activated', nil, true];
    [['| Descontaminación completada |', 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;
    [_player, 'quick_view', '%1 descontaminando', [name _player]] call ACE_Medical_Treatment_fnc_addToLog;
    [_player, 'quick_view', '%1 fue descontaminado', [name _player]] call ACE_Medical_Treatment_fnc_addToLog;
  };

  _trigger = createTrigger ["EmptyDetector", getpos _shower, true];
  _trigger setTriggerInterval 0.5;
  _trigger attachTo [_shower, [0, 0, 0]];
  _trigger setTriggerTimeout [5, 5, 5, true];
  _trigger setTriggerActivation ["ANY", "PRESENT", true];
  _trigger setTriggerArea [0.75, 0.75, getDir _shower, true, 2.3];
  _trigger setTriggerStatements [[_Condition] call ACE_Common_fnc_codeToString, [_Statement] call ACE_Common_fnc_codeToString, ""];
  _objects pushBack _trigger;
  _shower setVariable ["FCLA_Shower_Objects", _objects, true];
}] call CBA_fnc_addEventhandler;
