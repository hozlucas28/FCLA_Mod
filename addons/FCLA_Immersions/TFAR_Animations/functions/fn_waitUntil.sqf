
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un "waitUntilAndExecute" para detener la animación de transmisión
 * por radio, si se cumplen las condiciones planteadas.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

[{
  _vehicle = vehicle _this;
  _FFVSeats = [_vehicle] call ACE_Common_fnc_getTurretsFFV;
  _currentTurret = _vehicle unitTurret _this;
  _currentGesture = gestureState _this;
  _vehicleRole = [_this] call CBA_fnc_vehicleRole;
  _inVehicle = !isNull objectParent _this;
  _isNotTransmiting = !(_this getVariable ["FCLA_Transmitting", false]);
  _severalConditions = [_this, [0, 1, 3, 4, 7, 12, 13, 14, 15, 17]] call FCLA_Common_fnc_severalConditions;
  _isNotTouchingGround = !isTouchingGround _this;
  _isNotInCompatibleSeat = (_vehicle isKindOf "Air") && !(_currentTurret in _FFVSeats) && (_vehicleRole != "cargo");
  ((_inVehicle) && (_currentGesture == "FCLA_Animation_TFAR_onHand")) || (_isNotTransmiting) || (_severalConditions) || (_isNotTouchingGround) || (_isNotInCompatibleSeat);
}, {
  deleteVehicle (_this getVariable ["FCLA_TFAR_Animation_Radio", objNull]);
  _this setVariable ["FCLA_TFAR_Animation_Radio", nil, true];
  [_this, "FCLA_TFAR_End_Animation", "playActionNow"] call FCLA_Common_fnc_playAnimation;
}, _this] call CBA_fnc_waitUntilAndExecute;
