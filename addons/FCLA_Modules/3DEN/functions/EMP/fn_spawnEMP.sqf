
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
  _rad = if (_rad <= 0) then {worldSize;} else {_rad;};
  _modulePos = getPos _module;
  _nearUnits = _modulePos nearEntities [["CAManBase"], _rad];
  _nearVehicles = _modulePos nearEntities [["Satellite_Antenna_RF_3080", "LandVehicle", "Air", "Ship"], _rad];
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
    _isNotHidden = !isObjectHidden _x;
    _isNotInvulnerable = isDamageAllowed _x;
    if ((_isNotHidden) && (_isNotInvulnerable)) then {
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

      _typeOfObject = typeOf _x;
      if (_typeOfObject == "Satellite_Antenna_RF_3080") exitWith {_x setDamage [1, true];};

      _x disableTIEquipment true;
      _x disableNVGEquipment true;
      _x setHitPointDamage ["hitGun", 1];
      _x setHitPointDamage ["hitcomgun", 1];
      _x setHitPointDamage ["hitEngine", 1];
      _x setHitPointDamage ["hitTurret", 1];
      _x setHitPointDamage ["hitcomturret", 1];
    };
  } forEach _nearVehicles;


  //Destruir torretas inteligentes.
  {
    _isNotHidden = !isObjectHidden _x;
    _isNotInvulnerable = isDamageAllowed _x;
    if ((_isNotHidden) && (_isNotInvulnerable)) then {
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
    };
  } forEach _nearStaticWeapons;


  //Destruir items.
  {
    _isNotHidden = !isObjectHidden _x;
    if (_isNotHidden) then {
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
      _unitNVG = hmd _x;
      _unitBinocular = binocular _x;
      _unitPrimaryWeapon = primaryWeapon _x;
      _unitHandgunWeapon = handgunWeapon _x;
      _unitLauncherWeapon = secondaryWeapon _x;
      _unitPrimaryWeaponItems = primaryWeaponItems _x;
      _unitHandgunWeaponItems = handgunItems _x;
      _unitLauncherWeaponItems = secondaryWeaponItems _x;
      _hasLauncherVisionModes = [_x, _unitLauncherWeapon, false] call FCLA_Common_fnc_checkSightVisionModes;
      _hasBinocularsVisionModes = [_x, _unitBinocular, false] call FCLA_Common_fnc_checkSightVisionModes;
      _hasPrimaryWeaponVisionModes = [_x, _unitPrimaryWeapon, false] call FCLA_Common_fnc_checkSightVisionModes;
      _hasHandgunWeaponVisionModes = [_x, _unitHandgunWeapon, false] call FCLA_Common_fnc_checkSightVisionModes;
      _launcherSight = _unitLauncherWeaponItems select 2;
      _primaryWeaponSight = _unitPrimaryWeaponItems select 2;
      _handgunWeaponSight = _unitHandgunWeaponItems select 2;
      _launcherPointer = _unitLauncherWeaponItems select 1;
      _primaryWeaponPointer = _unitPrimaryWeaponItems select 1;
      _handgunWeaponPointer = _unitHandgunWeaponItems select 1;
      _itemInGPSSlot = (_unitLoadout select 9) select 1;
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
      if (_unitNVG != "FCLA_Light_Sticks") then {_x unassignItem _unitNVG; _x removeItems _unitNVG;};

      _x removeHandgunItem _handgunWeaponPointer;
      _x removePrimaryWeaponItem _primaryWeaponPointer;
      _x removeSecondaryWeaponItem _launcherPointer;
      _x removeItems "FCLA_RF_3080";
      _x unassignItem _itemInGPSSlot;
      _x removeItems _itemInGPSSlot;
      _x unassignItem _itemInClockSlot;
      _x removeItems _itemInClockSlot;
      _x unassignItem _itemInClockSlot;
      _x removeItems _itemInClockSlot;
    };
  } forEach _nearUnits;


  //Crear jammer.
  if (!_jammer) exitWith {deleteVehicle _module;};
  _jammerModule = createAgent ["FCLA_Module_Jammer", _modulePos, [], 0, "CAN_COLLIDE"];
  _jammerModule attachTo [_module, [0, 0, 0]];
  _jammerModule setVariable ["FCLA_Jammer_ID", "", true];
  _jammerModule setVariable ["FCLA_Deactivatable", false, true];
  _jammerModule setVariable ["FCLA_Affect_Vehicles", true, true];
  _jammerModule setVariable ["FCLA_Need_Hacking_Device", false, true];
  _jammerModule setVariable ["objectArea", [_rad, _rad, 0, false, _rad], true];
  [{(!alive (_this select 0)) || (!alive (_this select 1))}, {{deleteVehicle _x;} forEach _this;}, [_module, _jammerModule]] call CBA_fnc_waitUntilAndExecute;
};
