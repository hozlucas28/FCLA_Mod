
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna dos eventhandlers del tipo 'addPlayerEventHandler', donde uno
 * reproduce un sonido al apuntar con el arma y el otro cuando se cambia
 * el modo de visión (nocturna/térmica).
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Al cambiar vista de cámara.
["cameraView", {
  params ["_unit", "_newCameraMode"];
  _vehicle = vehicle _unit;
  _FFVSeats = [_vehicle] call ACE_Common_fnc_getTurretsFFV;
  _currentTurret = _vehicle unitTurret _unit;

  _notInFFVSeat = !(_currentTurret in _FFVSeats);
  _noWeaponOnHand = (currentWeapon _unit) == "";
  _isWeaponLowered = weaponLowered _unit;
  _severalConditions = [_unit, [4, 8, 14]] call FCLA_Common_fnc_severalConditions;
  _isNotTouchingGround = !isTouchingGround _unit;
  if ((!FCLA_Aim_Sounds) || (_notInFFVSeat) || (_noWeaponOnHand) || (_isWeaponLowered) || (_severalConditions) || (_isNotTouchingGround)) exitWith {};

  switch (toUpper _newCameraMode) do {
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
  params ["_unit", "_newVisionMode"];
  _vehicle = vehicle _unit;
  _FFVSeats = [_vehicle] call ACE_Common_fnc_getTurretsFFV;
  _NVGBattery = _unit getVariable ["FCLA_NVG_Battery", FCLA_NVG_Initial_Battery];
  _currentTurret = _vehicle unitTurret _unit;

  _notInFFVSeat = !(_currentTurret in _FFVSeats);
  _hasNotNVGBattery = if (FCLA_NVG_Require_Battery) then {_NVGBattery <= 0;} else {false;};
  _severalConditions = [_unit, [4, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16]] call FCLA_Common_fnc_severalConditions;
  _visionModeDesactivated = _newVisionMode == 0;
  if ((!FCLA_visionMode_Sounds) || ((_notInFFVSeat) && (_hasNotNVGBattery)) || (_severalConditions) || (_visionModeDesactivated)) exitWith {};

  if (_vehicle == _unit) then {
    [_unit, "FCLA_Vision_Mode_Changed", nil, 200, false] call FCLA_Common_fnc_globalSay3D;
  } else {
    playSound "FCLA_Vision_Mode_Changed";
  };
}, false] call CBA_fnc_addPlayerEventHandler;
