
/* ----------------------------------------------------------------------------
Script: "\FCLA_Modules\PEM\scripts\Init.sqf"

Description:
    Genera un pulso PEM con los atributos enviados a travez del módulo.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module", "_range", "_isVisible", "_isVisionAffected"];



if ((_isVisible) || (_isVisionAffected)) then {
  [[_module, _range + 100, [1, 50, 27]], "\FCLA_Modules\global\camShake.sqf"] remoteExec ["execVM", 0, true];

  if (_isVisible) then {
  	_rippleParticleObj = createVehicle ["#particlesource", getPosATL _module, [], 0, "CAN_COLLIDE"];
  	_rippleParticleObj setParticleCircle [0, [0, 0, 0]];
  	_rippleParticleObj setParticleRandom [0, [0.25, 0.25, 0],[0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
  	_rippleParticleObj setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract.p3d", 1, 0, 1], "", "Billboard", 1, 0.5, [0, 0, 0], [0, 0, 0], 0, 10, 7.9, 0, [30, 1000], [[1, 1, 1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _module];
  	_rippleParticleObj setDropInterval 0.1;
  	[_rippleParticleObj] spawn {sleep 1; deleteVehicle (_this#0);};

  	_blastParticleObj = createVehicle ["#particlesource", getPosATL _module, [], 0, "CAN_COLLIDE"];
  	_blastParticleObj setParticleCircle [0, [0, 0, 0]];
  	_blastParticleObj setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
  	_blastParticleObj setParticleParams [["\A3\data_f\koule", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, 0], [0, 0, 1], 3, 10, 7.9, 0, [50, 1000], [[1, 1, 1, 0.1], [1, 1, 1, 0]], [1], 1, 0, "", "", _module];
  	_blastParticleObj setDropInterval 50;
  	[_blastParticleObj] spawn {sleep 1; deleteVehicle (_this#0);};

  	_PEMLightObj = createVehicle ["#lightpoint", getPosATL _module, [], 0, "CAN_COLLIDE"];
  	_PEMLightObj lightAttachObject [_module, [0, 0, 3]];
  	_PEMLightObj setLightAmbient [1, 1, 1];
  	_PEMLightObj setLightColor [1, 1, 1];
  	_PEMLightObj setLightBrightness 0;
  	_PEMLightObj setLightDayLight true;
  	_PEMLightObj setLightAttenuation [10, 10, 50, 0, 50, 2000];

  	_lightBrightness = 0;
  	while {_lightBrightness < 50} do	{
  		_PEMLightObj setLightBrightness _lightBrightness;
  		_lightBrightness = _lightBrightness + 2;
  		sleep 0.01;
  	};
  	deleteVehicle _PEMLightObj;
  };

  if (_isVisionAffected) then {[[_module, _range], "\FCLA_Modules\PEM\scripts\Affect_Vision.sqf"] remoteExec ["execVM", 0, true];};
};


_modulePosition = position _module;
_listMan = _modulePosition nearEntities [["CAManBase"], _range];
_listVehicles = _modulePosition nearEntities [["Car", "Motorcycle", "Tank", "Air", "Ship"], _range];
_listStaticTurrets = _modulePosition nearEntities [["StaticWeapon"], _range];
_listLights = nearestObjects [_modulePosition, [
                                                "Land_FloodLight_F","Land_PowerPoleWooden_L_F",	"PowerLines_Wires_base_F",
                                                "Land_PowerPoleWooden_F","PowerLines_base_F","PowerLines_Small_base_F",
                                                "StreetLamp","Land_LightHouse_F","Land_Lighthouse_small_F",
                                                "Land_PortableLight_single_F","Land_PortableLight_double_F",
                                                "Land_PortableHelipadLight_01_F","PortableHelipadLight_01_blue_F",
                                                "PortableHelipadLight_01_red_F","PortableHelipadLight_01_white_F",
                                                "PortableHelipadLight_01_green_F","PortableHelipadLight_01_yellow_F",
                                                "Land_runway_edgelight","Land_NavigLight","Land_NavigLight_3_F",
                                                "Land_Flush_Light_green_F","Land_Flush_Light_red_F","Land_Flush_Light_yellow_F",
                                                "Land_runway_edgelight_blue_F","Land_LampAirport_F","Land_LampDecor_F",
                                                "Land_NavigLight_3_short_F","Land_LampHarbour_F","Land_LampShabby_F",
                                                "Land_PowerPoleWooden_small_F","Land_LampHalogen_F","Land_LampSolar_F",
                                                "Land_LampStreet_small_F","Land_LampStreet_F","Land_LampAirport_F﻿",
                                                "Land_fs_roof_F","Land_fs_sign_F","Land_TTowerBig_2_F","Land_TTowerBig_1_F",
                                                "Lamps_base_F"
                                               ], _range];
_electronicHelmets = ["H_WirelessEarpiece_F", "H_PilotHelmetFighter_B", "H_PilotHelmetFighter_O", "H_HelmetO_ViperSP_ghex_F", "H_PilotHelmetFighter_I", "H_HelmetO_ViperSP_hex_F", "H_Pilot_Enhanced"];
_electronicGoggles = ["G_Tactical_Black","G_Tactical_Clear","G_Goggles_VR","G_WirelessEarpiece_F"];
_electronicHandgunWeapons = ["hgun_esd_01_F","ACE_Flashlight_Maglite_ML300L","ACE_VMH3","ACE_VMM3"];


[[_module, _range + 100, "FCLA_Earthquake"], "\FCLA_Modules\global\playSound.sqf"] remoteExec ["execVM", 0, true];


{
  _x setHitPointDamage ["hitEngine", 1];
  _x setHitPointDamage ["hitturret", 1];
  _x setHitPointDamage ["hitgun", 1];
  _x disableTIEquipment true;
  _x disableNVGEquipment true;

  _bbr = boundingBoxReal vehicle _x;
  _p1 = _bbr select 0;
  _p2 = _bbr select 1;
  _maxWidth = abs ((_p2 select 0) - (_p1 select 0));
  _maxLength = abs ((_p2 select 1) - (_p1 select 1));
  _maxHeight = abs ((_p2 select 2) - (_p1 select 2));

  _vehicleParticleObj = createVehicle ["#particlesource", getPos _x, [], 0, "CAN_COLLIDE"];
  _vehicleParticleObj setParticleCircle [_maxWidth - 0.5, [0, 0, 0]];
  _vehicleParticleObj setParticleRandom [0.2, [0.2, 0.2, _maxHeight/2 - 0.5], [0, 0, 0], 0, 0.02, [0, 0, 0, 1], 1, 0];
  _vehicleParticleObj setParticleParams [["\A3\data_f\blesk1", 1, 0, 1], "", "SpaceObject", 1, 0.2, [0, 0, 0], [0, 0, 0], 0, 10, 7.9, 0, [0.003, 0.003], [[1, 1, 0.1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _x];
  _vehicleParticleObj setDropInterval 0.01;
  [_vehicleParticleObj] spawn {sleep 1; deleteVehicle (_this#0);};
} forEach _listVehicles;

{
  _x setDamage 0.9;
  sleep 0.1 + (random 0.1);
  _sclipiri = 1 + floor (random 5);
  _number = 0;
  while {_number < _sclipiri} do {
  	_randomSleep = 0.1 + (random 2);
    _bbr = boundingBoxReal vehicle _x;
    _p1 = _bbr select 0;
    _p2 = _bbr select 1;
    _maxHeight = abs ((_p2 select 2) - (_p1 select 2));
    _sparkRelPos = (_maxHeight/2) - 0.45;
    _sparkRandomSound = selectRandom ["FCLA_Sparks_1", "FCLA_Sparks_2", "FCLA_Sparks_3", "FCLA_Sparks_4", "FCLA_Sparks_5", "FCLA_Sparks_6", "FCLA_Sparks_7"];
    _sparkType = selectRandom ["white", "orange"];

    _randomDrop = 0.001 + (random 0.05);
    _sparkParticleObj = createVehicle ["#particlesource", getPosATL _x, [], 0, "CAN_COLLIDE"];

    if (_sparkType == "orange") then {
    	_sparkParticleObj setParticleCircle [0, [0, 0, 0]];
    	_sparkParticleObj setParticleRandom [1, [0.1, 0.1, 0.1], [0, 0, 0], 0, 0.25, [0, 0, 0, 0], 0, 0];
    	_sparkParticleObj setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, _sparkRelPos], [0, 0, 0], 0, 15, 7.9, 0, [0.5, 0.5, 0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _x, 0, true, 0.3, [[0, 0, 0, 0]]];
    	_sparkParticleObj setDropInterval _randomDrop;

      [_x, [_sparkRandomSound, 100]] remoteExec ["say3D", 0, true];
    	sleep _randomSleep;
    	deleteVehicle _sparkParticleObj;
    } else {
    	_sparkParticleObj setParticleCircle [0, [0, 0, 0]];
    	_sparkParticleObj setParticleRandom [1, [0.05, 0.05, 0.1], [5, 5, 3], 0, 0.0025, [0, 0, 0, 0], 0, 0];
    	_sparkParticleObj setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, _sparkRelPos], [0, 0, 0], 0, 20, 7.9, 0, [0.5, 0.5, 0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _x, 0, true, 0.3, [[0, 0, 0, 0]]];
    	_sparkParticleObj setDropInterval 0.001;

    	[_x, [_sparkRandomSound, 100]] remoteExec ["say3D", 0, true];
    	sleep 0.1 + (random 0.4);
    	deleteVehicle _sparkParticleObj;
    };
  	sleep _randomSleep;
  	_number = _number + 1;
  };
} forEach _listLights;

{
  _x setDamage 1;
  sleep 0.1 + (random 0.1);
  _sclipiri = 1 + floor (random 5);
  _number = 0;
  while {_number < _sclipiri} do {
  	_randomSleep = 0.1 + (random 2);
    _bbr = boundingBoxReal vehicle _x;
    _p1 = _bbr select 0;
    _p2 = _bbr select 1;
    _maxHeight = abs ((_p2 select 2) - (_p1 select 2));
    _sparkRelPos = (_maxHeight/2) - 0.45;
    _sparkRandomSound = selectRandom ["FCLA_Sparks_1", "FCLA_Sparks_2", "FCLA_Sparks_3", "FCLA_Sparks_4", "FCLA_Sparks_5", "FCLA_Sparks_6", "FCLA_Sparks_7"];
    _sparkType = selectRandom ["white", "orange"];

    _randomDrop = 0.001 + (random 0.05);
    _sparkParticleObj = createVehicle ["#particlesource", getPosATL _x, [], 0, "CAN_COLLIDE"];

    if (_sparkType == "orange") then {
    	_sparkParticleObj setParticleCircle [0, [0, 0, 0]];
    	_sparkParticleObj setParticleRandom [1, [0.1, 0.1, 0.1], [0, 0, 0], 0, 0.25, [0, 0, 0, 0], 0, 0];
    	_sparkParticleObj setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, _sparkRelPos], [0, 0, 0], 0, 15, 7.9, 0, [0.5, 0.5, 0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _x, 0, true, 0.3, [[0, 0, 0, 0]]];
    	_sparkParticleObj setDropInterval _randomDrop;

    	_x say3D [_sparkRandomSound, 350];
    	sleep _randomSleep;
    	deleteVehicle _sparkParticleObj;
    } else {
    	_sparkParticleObj setParticleCircle [0, [0, 0, 0]];
    	_sparkParticleObj setParticleRandom [1, [0.05, 0.05, 0.1], [5, 5, 3], 0, 0.0025, [0, 0, 0, 0], 0, 0];
    	_sparkParticleObj setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0,_sparkRelPos], [0, 0, 0], 0, 20, 7.9, 0, [0.5,0.5,0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _x,0,true,0.3,[[0,0,0,0]]];
    	_sparkParticleObj setDropInterval 0.001;

    	[_x, [_sparkRandomSound, 100]] remoteExec ["say3D", 0, true];
    	sleep 0.1 + (random 0.4);
    	deleteVehicle _sparkParticleObj;
    };
  	sleep _randomSleep;
  	_number = _number + 1;
  };
} forEach _listStaticTurrets;


[[_module, _range, "FCLA_Radiation_Meter"], "\FCLA_Modules\global\playSound.sqf"] remoteExec ["execVM", 0, true];


{
  _UAVs = (vehicle _x isKindOf "UAV_01_base_F") || (vehicle _x isKindOf "UAV_02_base_F") || (vehicle _x isKindOf "UAV_03_base_F") || (vehicle _x isKindOf "UAV_04_base_F") || (vehicle _x isKindOf "UAV_05_base_F") || (vehicle _x isKindOf "UAV_06_base_F") || (vehicle _x isKindOf "UGV_01_Base_F") || (vehicle _x isKindOf "UGV_02_Base_F");
  if (_UAVs || (vehicle _x isKindOf "StaticWeapon")) exitWith {};

  _bbr = boundingBoxReal vehicle _x;
  _p1 = _bbr select 0;
  _p2 = _bbr select 1;
  _maxWidth = abs ((_p2 select 0) - (_p1 select 0));
  _maxLength = abs ((_p2 select 1) - (_p1 select 1));
  _maxHeight = abs ((_p2 select 2) - (_p1 select 2));

  _staticParticleObj = createVehicle ["#particlesource", getPos _x, [], 0, "CAN_COLLIDE"];
  _staticParticleObj setParticleCircle [0, [0, 0, 0]];
  _staticParticleObj setParticleRandom [0.2, [_maxWidth/4, _maxLength/4, _maxHeight], [0, 0, 0], 0, 0.001, [0, 0, 0, 1], 1, 0];
  _staticParticleObj setParticleParams [["\A3\data_f\blesk1", 1, 0, 1], "", "SpaceObject", 1, 0.2, [0, 0, 0], [0, 0, 0], 0, 10, 7.9, 0, [0.002, 0.002], [[1, 1, 0.1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _x];
  _staticParticleObj setDropInterval 0.01;
  [_staticParticleObj] spawn {sleep 1; deleteVehicle (_this#0);};

  _unitNVG = hmd _x;
  _unitBinocular = binocular _x;
  _unitHandgunWeapon = handgunWeapon _x;
	if (headgear _x in _electronicHelmets) then {removeHeadgear _x};
  if (_unitNVG != "") then {_x unassignItem _unitNVG; _x removeItem _unitNVG;};
  if ((goggles _x) in _electronicGoggles) then {removeGoggles _x;};
  if (_unitBinocular != "Binocular") then {_x removeWeapon _unitBinocular;};
  if (_unitHandgunWeapon in _electronicHandgunWeapons) then {_x removeWeapon _unitHandgunWeapon;};

  //Accesorios del arma principal.
  _primaryWeaponAccessories = _x weaponAccessories primaryWeapon _x;
  for "_i" from 0 to 3 do {_x removePrimaryWeaponItem (_primaryWeaponAccessories select _i);};

  //Accesorios del arma secundaria.
  _secondaryWeaponAccessories = _x weaponAccessories handgunWeapon _x;
  for "_i" from 0 to 3 do {_x removeHandgunItem (_secondaryWeaponAccessories select _i);};

  //Accesorios del lanzador.
  _launcherWeaponAccessories = _x weaponAccessories secondaryWeapon _x;
  for "_i" from 0 to 3 do {_x removeSecondaryWeaponItem (_launcherWeaponAccessories select _i);};

  //Slot de reloj.
  _x unassignItem "ChemicalDetector_01_watch_F"; _x removeItem "ChemicalDetector_01_watch_F";
  _x unassignItem "tf_microdagr"; _x removeItem "tf_microdagr";
  _x unassignItem "ACE_Altimeter"; _x removeItem "ACE_Altimeter";

  //Slot de Radios.
  _x unassignItem "tf_anprc148jem"; _x removeItem "tf_anprc148jem";
  _x unassignItem "tf_anprc152"; _x removeItem "tf_anprc152";
  _x unassignItem "tf_anprc154"; _x removeItem "tf_anprc154";
  _x unassignItem "tf_fadak"; _x removeItem "tf_fadak";
  _x unassignItem "tf_pnr1000a"; _x removeItem "tf_pnr1000a";
  _x unassignItem "ItemRadio"; _x removeItem "ItemRadio";
  _x unassignItem "tf_rf7800str"; _x removeItem "tf_rf7800str";

  //Slot de Terminales.
  _x unassignItem "ItemGPS"; _x removeItem "ItemGPS";
  _x unassignItem "I_UavTerminal"; _x removeItem "I_UavTerminal";
  _x unassignItem "C_UavTerminal"; _x removeItem "C_UavTerminal";
  _x unassignItem "O_UavTerminal"; _x removeItem "O_UavTerminal";
  _x unassignItem "I_E_UavTerminal"; _x removeItem "I_E_UavTerminal";
  _x unassignItem "B_UavTerminal"; _x removeItem "B_UavTerminal";
} forEach _listMan;
