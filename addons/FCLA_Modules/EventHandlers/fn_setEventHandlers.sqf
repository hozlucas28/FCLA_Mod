
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea controladores de eventos que se utilizan en el addon "FCLA Modules".
 *
 * Public: [No]
---------------------------------------------------------------------------- */



/* -------------------------- EFECTO VISUAL (PEM) -------------------------- */

["FCLA_EMP", {
  _this spawn {
    params ["_logic", "_rad"];
    _player = call CBA_fnc_currentUnit;
    if (isObjectHidden _player) exitWith {};

    if (_player inArea [_logic, _rad + (_rad / 2), _rad + (_rad / 2), 0, false, _rad + (_rad / 2)]) then {
      enableCamShake true;
      addCamShake [1, 25, 27];
    };
    if (!(_player inArea [_logic, _rad, _rad, 0, false, _rad])) exitWith {};

    sleep 1;
    cutText ["", "WHITE OUT", 1];
    if (isDamageAllowed _player) then {[_player, 0.75] call ACE_Medical_fnc_adjustPainLevel;};
    hint parseText "<t color='#FF0000'>Fuiste afectado por un PEM.<br/>Tus accesorios electrónicos se han destruido.</t>";
    {playSound _x;} forEach ["FCLA_Radiation", "Earthquake_01"];

    sleep 0.1;
    titleCut ["", "WHITE IN", 1];
    "dynamicBlur" ppEffectEnable true;
    "dynamicBlur" ppEffectAdjust [5];
    "dynamicBlur" ppEffectCommit 0;

    sleep 1;
    "dynamicBlur" ppEffectAdjust [1];
    "dynamicBlur" ppEffectCommit 1;

    sleep 5;
    playsound "FCLA_Deafness";
    "dynamicBlur" ppEffectAdjust [0];
    "dynamicBlur" ppEffectCommit 10;

    sleep 10;
    "dynamicBlur" ppEffectEnable false;
  };
}] call CBA_fnc_addEventHandler;



/* ------------------- EFECTO VISUAL (TORMENTA DE ARENA) ------------------- */

["FCLA_Sandstorm", {
  systemchat str _this;
  [{
    _typeOfCurrentClimateEvent = missionNameSpace getVariable ["FCLA_Climate_Event", ""];
    if ((!alive (_this select 0)) || (_typeOfCurrentClimateEvent != "Sandstorm")) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
    call ACE_Goggles_fnc_applyDustEffect;
  }, 0.5, _this] call CBA_fnc_addPerFrameHandler;


  _this spawn {
  	while {alive _this} do {
      enableCamShake true;
  		addCamShake [0.1, 27, 17];
  		sleep 15 + random 120;
  	};
  };


  [] spawn {
  	_grainSand = 0;
  	while {_grainSand < 2} do {
  		_ppEffect = ppEffectCreate ["FilmGrain", 2000];
      _ppEffect ppEffectCommit 0;
  		_ppEffect ppEffectEnable true;
  		_ppEffect ppEffectAdjust [0.1, 0.1, _grainSand, 0.1, 0.1, true];
  		_grainSand = _grainSand + 0.1;
  		sleep 0.5;
  	};
  };


  [] spawn {
  	sleep 5;
  	_colorEffect = 1;
  	while {_colorEffect > 0.86} do {
  		"colorCorrections" ppEffectAdjust [_colorEffect, 1, 0.01, [-0.14, 0.17, 0.33, _colorEffect - 1], [_colorEffect, -0.4, _colorEffect, _colorEffect], [-0.57, _colorEffect, -1.2, _colorEffect]];
  		"colorCorrections" ppEffectCommit 0;
  		"colorCorrections" ppEffectEnable true;
  		_colorEffect = _colorEffect - 0.001;
  		sleep 0.1;
  	};
  };


  sleep 15;
  while {alive _this} do {
    _player = call CBA_fnc_currentUnit;
    _playerPos = getPos _player;
    _vehiclePlayer = vehicle _player;

  	_ppEffect = ppEffectCreate ["FilmGrain", 2000];
    _ppEffect ppEffectCommit 0;
  	_ppEffect ppEffectEnable true;
  	_ppEffect ppEffectAdjust [0.1, 0.1, 2, 0.1, 0.1, true];

    "colorCorrections" ppEffectCommit 0;
  	"colorCorrections" ppEffectEnable true;
  	"colorCorrections" ppEffectAdjust [ 0.86, 1, 0.01, [-0.14, 0.17, 0.33, -0.14], [0.86, -0.4, 0.86, 0.86], [-0.57, 0.86, -1.2, 0.86]];

  	_leavesObj = "#particlesource" createVehicleLocal _playerPos;
    _leavesObj setDropInterval (0.2 + random 0.5);
    _leavesObj setParticleCircle [100, [0, 0, 0]];
  	_leavesObj setParticleRandom [0, [10, 10, 7], [4, 4, 5], 2, 0.1, [0, 0, 0, 0.5], 1, 1];
  	_leavesObj setParticleParams [["\A3\data_f\ParticleEffects\Hit_Leaves\Sticks_Green", 1, 1, 1], "", "SpaceObject", 1, 27, [0, 0, 0], [50, 50, 10], 2, 0.000001, 0.0, 0.1, [0.1 + random 5], [[0.68, 0.68, 0.68, 1]], [1.5, 1], 13, 13, "", "", _vehiclePlayer, 0, true, 1, [[0, 0, 0, 0]]];
    if (_vehiclePlayer == _player) then {_leavesObj attachto [_player];} else {_leavesObj attachto [_vehiclePlayer];};

  	_dustObj = "#particlesource" createVehicleLocal _playerPos;
    _dustObj setDropInterval (0.01 + random 0.1);
  	_dustObj setParticleCircle [10, [3, 3, 0]];
  	_dustObj setParticleRandom [10, [0.25, 0.25, 0], [1, 1, 0], 1, 1, [0, 0, 0, 0.1], 0, 0];
  	_dustObj setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 12, [0, 0, 0], [-1, -1, 0], 3, 10.15, 7.9, 0.01, [10, 10, 20], [[0.65, 0.5, 0.5, 0], [0.65, 0.6, 0.5, 0.3], [1, 0.95, 0.8, 0]], [0.08], 1, 0, "", "", _vehiclePlayer,0,true];
    if (_vehiclePlayer == _player) then {_dustObj attachto [_player];} else {_dustObj attachto [_vehiclePlayer];};

  	sleep 5 + random 10;
  	deleteVehicle _leavesObj;
  	deleteVehicle _dustObj;
  };


  _ppEffect = ppEffectCreate ["DynamicBlur", 500];
  _ppEffect ppeffectcommit 3;
  _ppEffect ppeffectenable true;
  _ppEffect ppeffectadjust [3];
  sleep 3;


  _colorEffect = 0.86;
  while {_colorEffect < 1} do {
    "colorCorrections" ppEffectAdjust [_colorEffect, 1, 0.01, [1 - _colorEffect, 0.17, 0.33, _colorEffect - 1], [_colorEffect, -0.4, _colorEffect, _colorEffect], [0.299, 0.587, 0.114, 1 - _colorEffect]];
    "colorCorrections" ppEffectCommit 0;
    "colorCorrections" ppEffectEnable true;
    _colorEffect = _colorEffect + 0.001;
    sleep 0.0001;
  };


  _ppEffect ppeffectcommit 3;
  _ppEffect ppeffectadjust [0];


  sleep 3;
  _ppEffect ppEffectEnable false;
  ppEffectDestroy _ppEffect;


  _grainSand = 0;
  while {_grainSand > 0} do {
    _ppEffect = ppEffectCreate ["FilmGrain", 2000];
    _ppEffect ppEffectEnable true;
    _ppEffect ppEffectAdjust [0.1, 0.1, _grainSand, 0.1, 0.1, true];
    _ppEffect ppEffectCommit 0;
    _grainSand = _grainSand - 0.1;
    sleep 0.5;
  };


  _ppEffect ppEffectEnable false;
  "colorCorrections" ppEffectEnable false;
  ppEffectDestroy _ppEffect;
  enableCamShake false;
}] call CBA_fnc_addEventHandler;
