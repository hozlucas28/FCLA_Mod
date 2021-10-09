
/* ----------------------------------------------------------------------------
Function: FCLA_Effects_fnc_playerEventHandlerES

Description:
    Asigna dos eventhandlers del tipo 'addPlayerEventHandler', donde uno
    reproduce un sonido cuando se apunta con el arma y el otro cuando se cambia
    el modo de visión (nocturna/térmica).

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Al cambiar vista de cámara.
["cameraView", {
  params ["_unit", "_newCameraMode", "_oldCameraMode"];
  _noWeaponOnHand = currentWeapon _unit == "";
  _isWeaponLowered = weaponLowered _unit;
  _generalConditionToStop = [_unit] call FCLA_Development_fnc_generalCondition;
  if ((!FCLA_Aim_Sounds) || (_noWeaponOnHand) || (_isWeaponLowered) || (_generalConditionToStop)) exitWith {};

  switch (_newCameraMode) do {
    case "Internal": {
      _randomSound = selectRandom ["FCLA_Holster_Weapon_5", "FCLA_Holster_Weapon_1", "FCLA_Holster_Weapon_2", "FCLA_Holster_Weapon_3", "FCLA_Holster_Weapon_4"];
      playSound _randomSound;
    };

    case "Gunner": {
      _randomSound = selectRandom ["FCLA_Weapon_Aim_4", "FCLA_Weapon_Aim_5", "FCLA_Weapon_Aim_1", "FCLA_Weapon_Aim_2", "FCLA_Weapon_Aim_3"];
      playSound _randomSound;
    };
  };
}, false] call CBA_fnc_addPlayerEventHandler;



//Al cambiar el modo de visión.
["visionMode", {
  params ["_unit", "_newVisionMode", "_oldVisionMode"];
  _inUAV = !(isNull (getConnectedUAV _unit)) && (cameraOn == (getConnectedUAV _unit));
  _inZeus = !isNull findDisplay 312;
  _inStairs = _unit getVariable ["FCLA_inStairs", false];
  _isNotAlive = !alive _unit;
  _isSwimming = [_unit] call ACE_Common_fnc_isSwimming;
  _inCameraMode = _unit getVariable ["FCLA_Camera_Mode_On", false];
  _isHandcuffed = _unit getVariable ["ACE_Captives_isHandcuffed", false];
  _isDayVisionMode = _newVisionMode == 0;
  if ((!FCLA_visionMode_Sounds) || (_inUAV) || (_inZeus) || (_inStairs) || (_isNotAlive) || (_isSwimming) || (_inCameraMode) || (_isHandcuffed) || (_isDayVisionMode)) exitWith {};

  [_unit, "FCLA_Vision_Mode_Changed", 2, false] spawn FCLA_Development_fnc_globalSay3D;
}, false] call CBA_fnc_addPlayerEventHandler;