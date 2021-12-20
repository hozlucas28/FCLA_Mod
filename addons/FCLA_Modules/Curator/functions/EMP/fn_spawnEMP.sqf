
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Generar un pulso electromagnético.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_this spawn {
  params ["_logic", "_rad", "_jammer"];
  _logicPos = getPos _logic;
  _nearUnits = _logicPos nearEntities [["CAManBase"], _rad];
  _nearVehicles = _logicPos nearEntities [["LandVehicle", "Air", "Ship"], _rad];
  _nearStaticWeapons = (_logicPos nearEntities [["StaticWeapon"], _rad]) select {_x in allUnitsUAV};
  ["FCLA_EMP", [_logic, _rad], allPlayers] call CBA_fnc_targetEvent;


  _particleObjOne = createVehicle ["#particlesource", _logicPos, [], 0, "CAN_COLLIDE"];
  _particleObjOne setDropInterval 0.1;
  _particleObjOne setParticleCircle [0, [0, 0, 0]];
  _particleObjOne setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
  _particleObjOne setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract.p3d", 1, 0, 1], "", "Billboard", 1, 0.5, [0, 0, 0], [0, 0, 0], 0, 10, 7.9, 0, [30, 1000], [[1, 1, 1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _logic];
  [{deleteVehicle _this;}, _particleObjOne, 1] call CBA_fnc_waitAndExecute;

  _particleObjTwo = createVehicle ["#particlesource", _logicPos, [], 0, "CAN_COLLIDE"];
  _particleObjTwo setDropInterval 50;
  _particleObjTwo setParticleCircle [0, [0, 0, 0]];
  _particleObjTwo setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
  _particleObjTwo setParticleParams [["\A3\data_f\koule", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, 0], [0, 0, 1], 3, 10, 7.9, 0, [50, 1000], [[1, 1, 1, 0.1], [1, 1, 1, 0]], [1], 1, 0, "", "", _logic];
  [{deleteVehicle _this;}, _particleObjTwo, 1] call CBA_fnc_waitAndExecute;

  _lightObj = createVehicle ["#lightpoint", _logicPos, [], 0, "CAN_COLLIDE"];
  _lightObj setLightBrightness 0;
  _lightObj setLightDayLight true;
  _lightObj setLightColor [1, 1, 1];
  _lightObj setLightAmbient [1, 1, 1];
  _lightObj lightAttachObject [_logic, [0, 0, 3]];
  _lightObj setLightAttenuation [10, 10, 50, 0, 50, 2000];

  _brightness = 0;
  while {_brightness < 50} do	{
    _lightObj setLightBrightness _brightness;
    _brightness = _brightness + 2;
    sleep 0.01;
  };
  deleteVehicle _lightObj;


  //Apagar luces (vehículos incluidos).
  [_logic, _rad, "Off", false] call FCLA_Common_fnc_switchLights;


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
    _particleObjSix setParticleRandom [0.2, [_maxWidth/4, _maxLength/4, _maxHeight], [0, 0, 0], 0, 0.001, [0, 0, 0, 1], 1, 0];
    _particleObjSix setParticleParams [["\A3\data_f\blesk1", 1, 0, 1], "", "SpaceObject", 1, 0.2, [0, 0, 0], [0, 0, 0], 0, 10, 7.9, 0, [0.002, 0.002], [[1, 1, 0.1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _x];
    [{deleteVehicle _this;}, _particleObjSix, 1] call CBA_fnc_waitAndExecute;

    _unitLoadout = getUnitLoadout _x;
    _unitNVG = hmd _x;
    _unitBinocular = binocular _x;
    _unitPrimaryWeapon = primaryWeapon _x;
    _unitHandgunWeapon = handgunWeapon _x;
    _unitLauncherWeapon = secondaryWeapon _x;
    _hasLauncherVisionModes = [_x, _unitLauncherWeapon, false] call FCLA_Common_fnc_checkSightVisionModes;
    _hasBinocularsVisionModes = [_x, _unitBinocular, false] call FCLA_Common_fnc_checkSightVisionModes;
    _hasPrimaryWeaponVisionModes = [_x, _unitPrimaryWeapon, false] call FCLA_Common_fnc_checkSightVisionModes;
    _hasSecondaryWeaponVisionModes = [_x, _unitHandgunWeapon, false] call FCLA_Common_fnc_checkSightVisionModes;

    _launcherSight = ;
    _primaryWeaponSight = ;
    _secondaryWeaponSight = ;

    _itemInGPSSlot = ;
    _itemInRadioSlot = ;
    _itemInClockSlot = ;

    if (_hasLauncherVisionModes) then {_x removeSecondaryWeaponItem _launcherSight;}; //REVISAR SI ME SACA LA MUNICION ACTUAL. Y QUE PASA SI LA MIRA BIENE INTEGRADA.
    if (_hasBinocularsVisionModes) then {[_x, _unitBinocular] call CBA_fnc_removeWeapon;};
    if (_hasPrimaryWeaponVisionModes) then {_x removePrimaryWeaponItem _primaryWeaponSight;};
    if (_hasSecondaryWeaponVisionModes) then {_x removeHandgunItem _secondaryWeaponSight;}; ///TRATAR DE VER QUE PASA SI LE DOY UNA MIRA CON STRING VACIO







  } forEach _nearUnits;



  ///AFECTAR RADIOS DE UNIDADES Y VEHICULOS
  //SI TENGO LOS PALITOS DE LUZ QUE NO ME LOS QUITE.
  //APAGAR LUCES.
  //QUITAR LACERES.
  //QUITAR RADIOS.
  //QUITAR GPS Y TERMINALES.
  //RELOJES INTELIGENTES.
  //Destrui items en las cajas y vehículos, salvo que sean anti PEM. Aclarar en los coments de los módulos.
};
