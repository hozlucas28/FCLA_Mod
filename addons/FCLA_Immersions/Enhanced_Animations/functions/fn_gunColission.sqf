
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Evita que el arma choque con la pared.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

[{
  _player = call CBA_fnc_currentUnit;
  _currentWeapon = currentWeapon _player;
  _currentPrimaryWeapon = primaryWeapon _player;
  _tacticalPositionValues = _player getVariable ["FCLA_Tactical_Position", [false, false]];
  _isProne = stance _player == "PRONE";
  _inVehicle = !isNull objectParent _player;
  _isNotAlive = !alive _player;
  _isWeaponLowered = weaponLowered _player;
  _isWeaponDeployed = isWeaponDeployed _player;
  _severalConditions = [_player] call FCLA_Common_fnc_severalConditions;
  _isNotTouchingGround = !isTouchingGround _player;
  _hasNotWeaponOnHands = _currentWeapon == "";
  _notUsingPrimaryWeapon = _currentWeapon != _currentPrimaryWeapon;
  if (!FCLA_Gun_Colission) exitWith {
    if (!(_tacticalPositionValues select 1)) exitWith {};
    _player setVariable ["FCLA_Tactical_Position", [_tacticalPositionValues select 0, false], true];
    if (!(_tacticalPositionValues select 0)) then {[_player, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;};
  };
  if ((_isProne) || (_inVehicle) || (_isNotAlive) || (_isWeaponLowered) || (_isWeaponDeployed) || (_severalConditions) || (_isNotTouchingGround) || (_hasNotWeaponOnHands) || (_notUsingPrimaryWeapon) || (_tacticalPositionValues select 0)) exitWith {
    if ((alive _player) || (_tacticalPositionValues select 0)) exitWith {};
    _player setVariable ["FCLA_Tactical_Position", [_tacticalPositionValues select 0, false], true];
    [_player, "FCLA_Tactical_Position_Stop"] call ACE_Common_fnc_doGesture;
  };
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

  _inertia = getNumber (ConfigFile >> "CfgWeapons" >> _currentWeapon >> "inertia");
  _distance = 0.505 + (_inertia min 0.85);

  _playerEyePos = eyePos _player;
  _playerVectorDir = vectorDir _player;
  _endPos	= _playerEyePos vectorAdd (_playerVectorDir vectorMultiply  _distance);

  _checkLeftPosition = _player modelToWorldWorld [0 - 0.5, 0, 0];
  _checkLeftPosition = [_checkLeftPosition select 0, _checkLeftPosition select 1, _playerEyePos select 2];
  _endLeftPosition = _checkLeftPosition vectorAdd (_playerVectorDir vectorMultiply  (_distance + (0.5  *  0.75)));

  _checkRightPosition = _player modelToWorldWorld [0.5, 0, 0];
  _checkRightPosition = [_checkRightPosition select 0, _checkRightPosition select 1, _playerEyePos select 2];
  _endRightPosition = _checkRightPosition vectorAdd (_playerVectorDir vectorMultiply  (_distance + (0.5  *  0.75)));

  _isWeaponColliding = (lineIntersects [_playerEyePos, _endPos, _player]) && (lineIntersects [_checkLeftPosition, _endLeftPosition, _player]) && (lineIntersects [_checkRightPosition, _endRightPosition, _player]);
  if (_isWeaponColliding) then {
    _arr = (lineIntersectsWith [_playerEyePos, _endPos, _player, objNull, true]);
    _pass = true;
    _obstacle = "";
    _nearestFoliage = nearestTerrainObjects [_player, ["bush"], 7];
    if (count _arr > 0) then {
      _obstacle = _arr select 0;
      if (_obstacle in _nearestFoliage) then {_pass = false;};
    };

    if (_pass) then {
      _randomAnimation = selectRandom ["FCLA_Tactical_Position_Up_v1", "FCLA_Tactical_Position_Up_v2"];
      [_player, _randomAnimation] call ACE_Common_fnc_doGesture;
      _player setVariable ["FCLA_Tactical_Position", [_tacticalPositionValues select 0, true], true];

      [{
        _currentWeapon = currentWeapon _this;
        _currentPrimaryWeapon = primaryWeapon _this;
        _tacticalPositionValues = _this getVariable ["FCLA_Tactical_Position", [false, false]];
        _isProne = stance _this == "PRONE";
        _inVehicle = !isNull objectParent _this;
        _isWeaponLowered = weaponLowered _this;
        _isWeaponDeployed = isWeaponDeployed _this;
        _severalConditions = [_this] call FCLA_Common_fnc_severalConditions;
        _isNotTouchingGround = !isTouchingGround _this;
        _hasNotWeaponOnHands = _currentWeapon == "";
        _notUsingPrimaryWeapon = _currentWeapon != _currentPrimaryWeapon;
        _tacticaPositionFinished = !(_tacticalPositionValues select 1);
        (_isProne) || (_inVehicle) || (_isWeaponLowered) || (_isWeaponDeployed) || (_severalConditions) || (_isNotTouchingGround) || (_hasNotWeaponOnHands) || (_notUsingPrimaryWeapon) || (_tacticaPositionFinished);
      }, {
        _tacticalPositionValues = _this getVariable ["FCLA_Tactical_Position", [false, false]];
        _this setVariable ["FCLA_Tactical_Position", [_tacticalPositionValues select 0, false], true];
        if (!(_tacticalPositionValues select 0)) then {[_this, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;};
      }, _player] call CBA_fnc_waitUntilAndExecute;
    };
  } else {
    if (!(_tacticalPositionValues select 1)) exitWith {};
    _player setVariable ["FCLA_Tactical_Position", [_tacticalPositionValues select 0, false], true];
    [_player, "FCLA_Tactical_Position_Stop"] call ACE_Common_fnc_doGesture;
  };
}, 0.1] call CBA_fnc_addPerFrameHandler;
