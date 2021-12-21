
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un pulso electromagnético.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_this spawn {
  params ["_module", "_rad", "_jammer"];
  _rad = if (_rad <= -1) then {worldSize;} else {_rad;};
  _modulePos = getPos _module;
  _nearUnits = _modulePos nearEntities [["CAManBase"], _rad];
  _nearVehicles = _modulePos nearEntities [["LandVehicle", "Air", "Ship"], _rad];
  _nearStaticWeapons = (_modulePos nearEntities [["StaticWeapon"], _rad]) select {_x in allUnitsUAV};
  ["FCLA_EMP", [_module, _rad], allPlayers] call CBA_fnc_targetEvent;


  _particleObjOne = createVehicle ["#particlesource", _modulePos, [], 0, "CAN_COLLIDE"];
  _particleObjOne setDropInterval 0.1;
  _particleObjOne setParticleCircle [0, [0, 0, 0]];
  _particleObjOne setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
  _particleObjOne setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract.p3d", 1, 0, 1], "", "Billboard", 1, 0.5, [0, 0, 0], [0, 0, 0], 0, 10, 7.9, 0, [30, 1000], [[1, 1, 1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _module];
  [{deleteVehicle _this;}, _particleObjOne, 1] call CBA_fnc_waitAndExecute;

  _particleObjTwo = createVehicle ["#particlesource", _modulePos, [], 0, "CAN_COLLIDE"];
  _particleObjTwo setDropInterval 50;
  _particleObjTwo setParticleCircle [0, [0, 0, 0]];
  _particleObjTwo setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
  _particleObjTwo setParticleParams [["\A3\data_f\koule", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, 0], [0, 0, 1], 3, 10, 7.9, 0, [50, 1000], [[1, 1, 1, 0.1], [1, 1, 1, 0]], [1], 1, 0, "", "", _module];
  [{deleteVehicle _this;}, _particleObjTwo, 1] call CBA_fnc_waitAndExecute;

  _lightObj = createVehicle ["#lightpoint", _modulePos, [], 0, "CAN_COLLIDE"];
  _lightObj setLightBrightness 0;
  _lightObj setLightDayLight true;
  _lightObj setLightColor [1, 1, 1];
  _lightObj setLightAmbient [1, 1, 1];
  _lightObj lightAttachObject [_module, [0, 0, 3]];
  _lightObj setLightAttenuation [10, 10, 50, 0, 50, 2000];

  _brightness = 0;
  while {_brightness < 50} do	{
    _lightObj setLightBrightness _brightness;
    _brightness = _brightness + 2;
    sleep 0.01;
  };
  deleteVehicle _lightObj;


  //Apagar luces.
  [_module, _rad, "Off", false] call FCLA_Common_fnc_switchLights;


  //Dañar vehículos.
  {
    _x disableTIEquipment true;
    _x disableNVGEquipment true;
    _x setHitPointDamage ["hitGun", 1];
    _x setHitPointDamage ["hitEngine", 1];
    _x setHitPointDamage ["hitTurret", 1];

    _bbr = boundingBoxReal vehicle _x;
    _p1 = _bbr select 0;
    _p2 = _bbr select 1;
    _maxWidth = abs ((_p2 select 0) - (_p1 select 0));
    _maxLength = abs ((_p2 select 1) - (_p1 select 1));
    _maxHeight = abs ((_p2 select 2) - (_p1 select 2));

    _particleObjThree = createVehicle ["#particlesource", getPos _x, [], 0, "CAN_COLLIDE"];
    _particleObjThree setDropInterval 0.01;
    _particleObjThree setParticleCircle [_maxWidth - 0.5, [0, 0, 0]];
    _particleObjThree setParticleRandom [0.2, [0.2, 0.2, _maxHeight / 2 - 0.5], [0, 0, 0], 0, 0.02, [0, 0, 0, 1], 1, 0];
    _particleObjThree setParticleParams [["\A3\data_f\blesk1", 1, 0, 1], "", "SpaceObject", 1, 0.2, [0, 0, 0], [0, 0, 0], 0, 10, 7.9, 0, [0.003, 0.003], [[1, 1, 0.1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _x];
    [{deleteVehicle _this;}, _particleObjThree, 1] call CBA_fnc_waitAndExecute;
  } forEach _nearVehicles;


  //Destruir torretas inteligentes.
  {
    _maxLoops = 1 + floor (random 5);
    _numberOfLoops = 0;
    _x setDamage [1, false];

    sleep 0.1 + (random 0.1);
    while {_numberOfLoops < _maxLoops} do {
      _bbr = boundingBoxReal vehicle _x;
      _p1 = _bbr select 0;
      _p2 = _bbr select 1;
      _maxHeight = abs ((_p2 select 2) - (_p1 select 2));
      _sparkPos = (_maxHeight / 2) - 0.45;
      _sparkType = selectRandom ["White", "Orange"];
      _randomDelay = 0.1 + (random 2);
      _randomSound = selectRandom ["FCLA_Sparks_1", "FCLA_Sparks_2", "FCLA_Sparks_3", "FCLA_Sparks_4", "FCLA_Sparks_5", "FCLA_Sparks_6", "FCLA_Sparks_7"];
      _randomDropInterval = 0.001 + (random 0.05);

      if (_sparkType == "White") then {
        _particleObjFive = createVehicle ["#particlesource", getPosATL _x, [], 0, "CAN_COLLIDE"];
      	_particleObjFive setParticleCircle [0, [0, 0, 0]];
      	_particleObjFive setParticleRandom [1, [0.05, 0.05, 0.1], [5, 5, 3], 0, 0.0025, [0, 0, 0, 0], 0, 0];
      	_particleObjFive setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0,_sparkPos], [0, 0, 0], 0, 20, 7.9, 0, [0.5, 0.5, 0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _x, 0, true, 0.3, [[0, 0, 0, 0]]];
      	_particleObjFive setDropInterval 0.001;
        [_x, [_randomSound, 200, 1, false, 0]] remoteExec ["say3D", 0, true];
      	sleep _randomDelay;
      	deleteVehicle _particleObjFive;
      } else {
        _particleObjFour = createVehicle ["#particlesource", getPosATL _x, [], 0, "CAN_COLLIDE"];
      	_particleObjFour setParticleCircle [0, [0, 0, 0]];
      	_particleObjFour setParticleRandom [1, [0.1, 0.1, 0.1], [0, 0, 0], 0, 0.25, [0, 0, 0, 0], 0, 0];
      	_particleObjFour setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, _sparkPos], [0, 0, 0], 0, 15, 7.9, 0, [0.5, 0.5, 0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _x, 0, true, 0.3, [[0, 0, 0, 0]]];
      	_particleObjFour setDropInterval _randomDropInterval;
        [_x, [_randomSound, 200, 1, false, 0]] remoteExec ["say3D", 0, true];
      	sleep _randomDelay;
      	deleteVehicle _particleObjFour;
      };
    	sleep _randomDelay;
    	_numberOfLoops = _numberOfLoops + 1;
    };
  } forEach _nearStaticWeapons;


  //Destruir items.
  {
    _bbr = boundingBoxReal vehicle _x;
    _p1 = _bbr select 0;
    _p2 = _bbr select 1;
    _maxWidth = abs ((_p2 select 0) - (_p1 select 0));
    _maxLength = abs ((_p2 select 1) - (_p1 select 1));
    _maxHeight = abs ((_p2 select 2) - (_p1 select 2));

    _particleObjSix = createVehicle ["#particlesource", getPos _x, [], 0, "CAN_COLLIDE"];
    _particleObjSix setDropInterval 0.01;
    _particleObjSix setParticleCircle [0, [0, 0, 0]];
    _particleObjSix setParticleRandom [0.2, [_maxWidth / 4, _maxLength / 4, _maxHeight], [0, 0, 0], 0, 0.001, [0, 0, 0, 1], 1, 0];
    _particleObjSix setParticleParams [["\A3\data_f\blesk1", 1, 0, 1], "", "SpaceObject", 1, 0.2, [0, 0, 0], [0, 0, 0], 0, 10, 7.9, 0, [0.002, 0.002], [[1, 1, 0.1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _x];
    [{deleteVehicle _this;}, _particleObjSix, 1] call CBA_fnc_waitAndExecute;

    _unitLoadout = getUnitLoadout _x;
    _unitNVG = (_unitLoadout select 9) select 5;
    _unitBinocular = (_unitLoadout select 8) select 0;
    _unitPrimaryWeapon = (_unitLoadout select 0) select 0;
    _unitHandgunWeapon = (_unitLoadout select 2) select 0;
    _unitLauncherWeapon = (_unitLoadout select 1) select 0;
    _hasLauncherVisionModes = [_x, _unitLauncherWeapon, false] call FCLA_Common_fnc_checkSightVisionModes;
    _hasBinocularsVisionModes = [_x, _unitBinocular, false] call FCLA_Common_fnc_checkSightVisionModes;
    _hasPrimaryWeaponVisionModes = [_x, _unitPrimaryWeapon, false] call FCLA_Common_fnc_checkSightVisionModes;
    _hasHandgunWeaponVisionModes = [_x, _unitHandgunWeapon, false] call FCLA_Common_fnc_checkSightVisionModes;
    _launcherSight = (_unitLoadout select 1) select 3;
    _primaryWeaponSight = (_unitLoadout select 0) select 3;
    _handgunWeaponSight = (_unitLoadout select 2) select 3;
    _launcherPointer = (_unitLoadout select 1) select 2;
    _primaryWeaponPointer = (_unitLoadout select 0) select 2;
    _handgunWeaponPointer = (_unitLoadout select 2) select 2;
    _itemInGPSSlot = (_unitLoadout select 9) select 1;
    //_itemInRadioSlot = (_unitLoadout select 9) select 2;
    _itemInClockSlot = (_unitLoadout select 9) select 4;

    if (_hasLauncherVisionModes) then {
      if (_launcherSight == "") exitWith {_x removeWeapon _unitLauncherWeapon;};
      _x removeSecondaryWeaponItem _launcherSight;
    };

    if (_hasPrimaryWeaponVisionModes) then {
      if (_primaryWeaponSight == "") exitWith {_x removeWeapon _unitPrimaryWeapon;};
      _x removePrimaryWeaponItem _primaryWeaponSight;
    };

    if (_hasHandgunWeaponVisionModes) then {
      if (_handgunWeaponSight == "") exitWith {_x removeWeapon _unitHandgunWeapon;};
      _x removeHandgunItem _handgunWeaponSight;
    };

    if (_hasBinocularsVisionModes) then {[_x, _unitBinocular] call CBA_fnc_removeWeapon;};
    if (_unitNVG != "FCLA_Light_Sticks") then {_x unassignItem _unitNVG; _x removeItem _unitNVG;};

    _x removeHandgunItem _handgunWeaponPointer;
    _x removePrimaryWeaponItem _primaryWeaponPointer;
    _x removeSecondaryWeaponItem _launcherPointer;
    _x unassignItem _itemInGPSSlot;
    _x removeItem _itemInGPSSlot;
    //_x unassignItem _itemInRadioSlot;
    //_x removeItem _itemInRadioSlot;
    _x unassignItem _itemInClockSlot;
    _x removeItem _itemInClockSlot;
    _x unassignItem _itemInClockSlot;
    _x removeItem _itemInClockSlot;
  } forEach _nearUnits;


  //Crear jammer.
  if (!_jammer) exitWith {deleteVehicle _module;};
  [{
    _args params ["_module", "_rad"];
    _isNotAlive = !alive _module;
    _unitsInArea = allUnits select {_x inArea [_module, _rad, _rad, 0, false, _rad]};
    _vehiclesInArea = vehicles select {_x inArea [_module, _rad, _rad, 0, false, _rad]};
    _unitsNotInArea = allUnits select {!(_x inArea [_module, _rad, _rad, 0, false, _rad])};
    _vehiclesNotInArea = vehicles select {!(_x inArea [_module, _rad, _rad, 0, false, _rad])};
    _entitiesAffected = _module getVariable ["FCLA_Entities_Affected", []];
    _normalRadioRange = missionNamespace getVariable ["FCLA_TFAR_Multiplicator", call TFAR_fnc_getTransmittingDistanceMultiplicator];
    if (_isNotAlive) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
    if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

    {
      _affectedRadioRange = linearConversion [_rad, _rad / 2, _x distance _module, _normalRadioRange, 0, true];
      _x setVariable ["tf_sendingDistanceMultiplicator", _affectedRadioRange, true];
      _x setVariable ["tf_receivingDistanceMultiplicator", _affectedRadioRange, true];
      if (!(_x in _entitiesAffected)) then {_entitiesAffected pushBack _x;};
    } forEach _unitsInArea;

    {
      _affectedRadioRange = linearConversion [_rad, _rad / 2, _x distance _module, _normalRadioRange, 0, true];
      _x setVariable ["tf_range", _affectedRadioRange, true];
      if (!(_x in _entitiesAffected)) then {_entitiesAffected pushBack _x;};
    } forEach _vehiclesInArea;

    {
      if (!(_x in _entitiesAffected)) exitWith {};
      _x setVariable ["tf_sendingDistanceMultiplicator", _normalRadioRange, true];
      _x setVariable ["tf_receivingDistanceMultiplicator", _normalRadioRange, true];
      _entitiesAffected = _entitiesAffected - [_x];
    } forEach _unitsNotInArea;

    {
      if (!(_x in _entitiesAffected)) exitWith {};
      _x setVariable ["tf_range", _normalRadioRange, true];
      _entitiesAffected = _entitiesAffected - [_x];
    } forEach _vehiclesNotInArea;
    _module setVariable ["FCLA_Entities_Affected", _entitiesAffected, true];
  }, 0.5, [_module, _rad]] call CBA_fnc_addPerFrameHandler;
};
