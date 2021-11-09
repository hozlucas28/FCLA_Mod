
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
  _currentVehicleRole = [_this] call CBA_fnc_vehicleRole;
  _isNotTransmiting = !(_this getVariable ["FCLA_Transmitting", false]);
  _severalConditions = [_this, [0, 1, 3, 4, 7, 12, 13, 14, 15]] call FCLA_Common_fnc_severalConditions;
  _isNotInCargoVehicle = (_getCurrentVehicleRole != "") && (_getCurrentVehicleRole != "cargo");
  _isNotTouchingGround = !isTouchingGround _this;
  (_isNotTransmiting) || (_severalConditions) || (_isNotInCargoVehicle) || (_isNotTouchingGround);
}, {
  deleteVehicle (_this getVariable ["FCLA_TFAR_Animations_Current_Radio", objNull]);
  _this setVariable ["FCLA_TFAR_Animations_Current_Radio", nil, true];
  [_this, "FCLA_TFAR_End_Animation", "playActionNow"] call FCLA_Common_fnc_playAnimation;
}, _this] call CBA_fnc_waitUntilAndExecute;
