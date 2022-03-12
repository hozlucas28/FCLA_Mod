
/********************************************************************************|
|           CONTROLADORES DE EVENTOS (JUGADORES) - "SONIDOS MEJORADOS"           |
|********************************************************************************/

if (hasInterface) then {
  //Reproduce un sonido cuando se cambia el modo de vision (nocturna/termica).
  ["visionMode", {
    params ["_unit", "_newVisionMode"];
    _NVGBattery = _unit getVariable ["FCLA_NVG_Battery", FCLA_NVG_Initial_Battery];
    _hasNotNVGBattery = if (FCLA_NVG_Require_Battery) then {_NVGBattery <= 0;} else {false;};
    _severalConditions = [_unit, [4, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16]] call FCLA_Common_fnc_severalConditions;
    _visionModeDesactivated = _newVisionMode == 0;
    if ((!FCLA_visionMode_Sounds) || (_hasNotNVGBattery) || (_severalConditions) || (_visionModeDesactivated)) exitWith {};

    if (isNull objectParent _unit) then {
      [_unit, "FCLA_Vision_Mode_Changed", 200] call FCLA_Effects_fnc_globalSayES;
    } else {
      playSound "FCLA_Vision_Mode_Changed";
    };
  }, false] call CBA_fnc_addPlayerEventHandler;


  //Reproduce un sonido al apuntar con el arma.
  ["cameraView", {
    params ["_unit", "_newCameraMode", "_oldCameraMode"];
    _vehicle = vehicle _unit;
    _FFVSeats = [_vehicle] call ACE_Common_fnc_getTurretsFFV;
    _currentTurret = _vehicle unitTurret _unit;
    _notInFFVSeat = _currentTurret in _FFVSeats;
    _noWeaponOnHand = (currentWeapon _unit) == "";
    _isWeaponLowered = weaponLowered _unit;
    _severalConditions = [_unit, [4, 8, 14]] call FCLA_Common_fnc_severalConditions;
    _isNotTouchingGround = !isTouchingGround _unit;
    if ((!FCLA_Aim_Sounds) || (_notInFFVSeat) || (_noWeaponOnHand) || (_isWeaponLowered) || (_severalConditions) || (_isNotTouchingGround) || ((_newCameraMode == "INTERNAL") && (_oldCameraMode == "EXTERNAL"))) exitWith {};

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
};
