
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
  _inVehicle = !isNull objectParent _this;
  _isNotAlive = !alive _this;
  _isSwimming = [_this] call ACE_Common_fnc_isSwimming;
  _isDragging = _this getVariable ["ACE_Dragging_isDragging", false];
  _isHandcuffed = _this getVariable ["ACE_Captives_isHandcuffed", false];
  _isNotTransmiting = !(_this getVariable ["FCLA_TFAR_Animations_isTransmitting", false]);
  _isNotTouchingGround = !isTouchingGround _this;
  ((_inVehicle) || (_isNotAlive) || (_isSwimming) || (_isDragging) || (_isHandcuffed) || (_isNotTouchingGround)) && (_isNotTransmiting);
}, {
  _isTransmiting = _this getVariable ["FCLA_TFAR_Animations_isTransmitting", false];
  if (_isTransmiting) then {[_this, "FCLA_TFAR_End_Animation", "playActionNow"] call FCLA_Common_fnc_playAnimation;};
  if (!(isNil {_this getVariable "FCLA_TFAR_Animations_Current_Radio"})) then {
    _radioSimpleObj = _this getVariable "FCLA_TFAR_Animations_Current_Radio";
    _this setVariable ["FCLA_TFAR_Animations_Current_Radio", nil, true];
    deleteVehicle _radioSimpleObj;
  };
}, _this] call CBA_fnc_waitUntilAndExecute;
