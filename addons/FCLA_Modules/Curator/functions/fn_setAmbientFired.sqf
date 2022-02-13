
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Fuerza al vehiculo a disparar hacia el cielo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Asignar disparos ambientales", {
  params ["_position", "_attachedObject"];
  _hasNotWeapons = (count (weapons _attachedObject)) <= 0;
  _hasNotMagazines = (count (magazines _attachedObject)) <= 0;
  if ((isNull _attachedObject) || !(_attachedObject in vehicles) || (_hasNotWeapons) || (_hasNotMagazines)) exitWith {["ERROR! EL MODULO DEBE SER COLOCADO SOBRE UN VEHICULO COMPATIBLE"] call ZEN_Common_fnc_showMessage;};


  _vehicleName = toUpper (getText (configFile >> "CfgVehicles" >> (typeOf _attachedObject) >> "displayName"));
  _vehicleWeapons = weapons _attachedObject;
  _vehicleWeaponsNames = [];
  {
    _weaponsName = getText (configFile >> "CfgWeapons" >> _x >> "displayName");
    _vehicleWeaponsNames pushBack _weaponsName;
  } forEach _vehicleWeapons;


  [_vehicleName,
	[
   ["COMBO", "Seleccionar arma",
    [
     _vehicleWeapons,
     _vehicleWeaponsNames,
     0
    ],
    true
   ]
	],
  {
    (_this select 0) params ["_weaponSelected"];
    (_this select 1) params ["_position", "_attachedObject", "_vehicleName", "_vehicleWeapons", "_vehicleWeaponsNames"];
    _vehicleMagazines = magazines _attachedObject;
    _compatibleMagazines = getArray (configFile >> "CfgWeapons" >> _weaponSelected >> "magazines");
    _compatibleMagazines = _compatibleMagazines select {_x in _vehicleMagazines};
    _vehicleMagazinesNames = [];

    {
      _magazineName = getText (configFile >> "CfgMagazines" >> _x >> "displayName");
      _vehicleMagazinesNames pushBack _magazineName;
    } forEach _compatibleMagazines;

    [_vehicleName,
  	[
     ["COMBO", "Seleccionar municion",
      [
       _compatibleMagazines,
       _vehicleMagazinesNames,
       0
      ],
      true
     ],
     ["SLIDER", ["Minimo de disparos", "Cantidad minima de disparos que se efectuaran"],
      [
       1,
       100,
       10,
       0
      ],
      true
     ],
     ["SLIDER", ["Maximo de disparos", "Cantidad maxima de disparos que se efectuaran"],
      [
       1,
       100,
       20,
       0
      ],
      true
     ],
     ["SLIDER", ["Tiempo minimo", "Tiempo minimo (en segundos) para repetir disparos"],
      [
       1,
       300,
       4,
       0
      ],
      true
     ],
     ["SLIDER", ["Tiempo maximo", "Tiempo maximo (en segundos) para repetir disparos"],
      [
       1,
       300,
       8,
       0
      ],
      true
     ]
  	],
    {
      (_this select 1) params ["_position", "_attachedObject", "_weapon"];
      (_this select 0) params ["_magazine", "_minimumShots", "_maximumShots", "_minimumDelay", "_maximumDelay"];
      _minimumShots = round _minimumShots;
      _maximumShots = round _maximumShots;
      _minimumDelay = round _minimumDelay;
      _maximumDelay = round _maximumDelay;

      _module = createAgent ["FCLA_Module_Ambient_Fired_Empty", _position, [], 0, "CAN_COLLIDE"];
      _module setVariable ["FCLA_Ammo", _magazine, true];
      _module setVariable ["FCLA_Weapon", _weapon, true];
      _module setVariable ["FCLA_Minimum_Shots", _minimumShots, true];
      _module setVariable ["FCLA_Maximum_Shots", _maximumShots, true];
      _module setVariable ["FCLA_Minimum_Delay", _minimumDelay, true];
      _module setVariable ["FCLA_Maximum_Delay", _maximumDelay, true];
      _module synchronizeObjectsAdd [_attachedObject];
      [_module, [_attachedObject], true] call FCLA_Modules_fnc_setAmbientFired3DEN;

      _curatorLogic = getAssignedCuratorLogic player;
      ["ZEN_Common_addObjects", [[_module], _curatorLogic]] call CBA_fnc_serverEvent;
      ["EL VEHICULO COMENZARA A REALIZAR DISPAROS AMBIENTALES"] call ZEN_Common_fnc_showMessage;
    }, {}, [_position, _attachedObject, _weaponSelected]] call ZEN_Dialog_fnc_Create;
  }, {}, [_position, _attachedObject, _vehicleName, _vehicleWeapons, _vehicleWeaponsNames]] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Tracers.paa"] call ZEN_Custom_Modules_fnc_Register;
