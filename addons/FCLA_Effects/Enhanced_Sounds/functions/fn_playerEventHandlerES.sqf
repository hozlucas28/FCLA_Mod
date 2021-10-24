
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna dos eventhandlers del tipo 'addPlayerEventHandler', donde uno
 * reproduce un sonido cuando se apunta con el arma y el otro cuando se cambia
 * el modo de visión (nocturna/térmica).
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Al cambiar vista de cámara.
["cameraView", {
  params ["_unit", "_newCameraMode", "_oldCameraMode"];
  _noWeaponOnHand = currentWeapon _unit == "";
  _isWeaponLowered = weaponLowered _unit;
  _severalConditions = [_unit, [8, 14]] call FCLA_Common_fnc_severalConditions;
  _isNotTouchingGround = !isTouchingGround _unit;
  if ((!FCLA_Aim_Sounds) || (_noWeaponOnHand) || (_isWeaponLowered) || (_severalConditions) || (_isNotTouchingGround)) exitWith {};

  switch (Upper _newCameraMode) do {
    case "INTERNAL": {
      _randomSound = selectRandom ["FCLA_Holster_Weapon_5", "FCLA_Holster_Weapon_1", "FCLA_Holster_Weapon_2", "FCLA_Holster_Weapon_3", "FCLA_Holster_Weapon_4"];
      playSound _randomSound;
    };

    case "GUNNER": {
      _randomSound = selectRandom ["FCLA_Weapon_Aim_4", "FCLA_Weapon_Aim_5", "FCLA_Weapon_Aim_1", "FCLA_Weapon_Aim_2", "FCLA_Weapon_Aim_3"];
      playSound _randomSound;
    };
  };
}, false] call CBA_fnc_addPlayerEventHandler;



//Al cambiar el modo de visión.
["visionMode", {
  params ["_unit", "_newVisionMode", "_oldVisionMode"];
  _inUAV = ([_unit] call ace_common_fnc_getUavControlPosition) != "";
  _inZeus = !isNull findDisplay 312;
  _inStairs = _unit getVariable ["FCLA_inStairs", false];
  _isNotAlive = !alive _unit;
  _isSwimming = [_unit] call ACE_Common_fnc_isSwimming;
  _inCameraMode = _unit in (call ACE_Spectator_fnc_players);
  _isHandcuffed = _unit getVariable ["ACE_Captives_isHandcuffed", false];
  _isDayVisionMode = _newVisionMode == 0;
  if ((!FCLA_visionMode_Sounds) || (_inUAV) || (_inZeus) || (_inStairs) || (_isNotAlive) || (_isSwimming) || (_inCameraMode) || (_isHandcuffed) || (_isDayVisionMode)) exitWith {};

  [_unit, "FCLA_Vision_Mode_Changed", 2, false] call FCLA_Common_fnc_globalSay3D;
}, false] call CBA_fnc_addPlayerEventHandler;
