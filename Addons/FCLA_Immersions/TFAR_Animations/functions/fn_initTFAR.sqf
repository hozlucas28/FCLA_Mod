
/* ----------------------------------------------------------------------------
Function: FCLA_Immersions_fnc_initTFAR

Description:
    Asigna un eventhandler del tipo 'TFAR_fnc_addEventHandler', que se ejecutara
    cuando se transmita por radio.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

["FCLA_TFAR_Animations_OnTangentEH", "OnTangent", {
  params ["_unit", "_currentRadio", "_transceiver", "_hasAdditionalChannel", "_buttonDown"];
  _getCurrentVehicleRole = [_unit] call CBA_fnc_vehicleRole;
  _isHidden = isObjectHidden _unit;
  _isNotAlive = !alive _unit;
  _isSwimming = [_unit] call ACE_Common_fnc_isSwimming;
  _isDragging = _unit getVariable ["ACE_Dragging_isDragging", false];
  _inCameraMode = _unit getVariable ["FCLA_Camera_Mode_On", false];
  _isHandcuffed = _unit getVariable ["ACE_Captives_isHandcuffed", false];
  _inWeaponAnimation = !isNil "FCLA_inWeapon_Animation";
  _isPlayingAnimation = _unit getVariable ["FCLA_Playing_Animation", false];
  _isNotInCargoVehicle = if ((_getCurrentVehicleRole == "") || (_getCurrentVehicleRole == "cargo")) then {false} else {true};
  _isNotTouchingGround = !isTouchingGround _unit;
  if ((!FCLA_Radio_Animations) || (_isHidden) || (_isNotAlive) || (_isSwimming) || (_isDragging) || (_inCameraMode) || (_isHandcuffed) || (_inWeaponAnimation) || (_isPlayingAnimation) || (_isNotInCargoVehicle) || (_isNotTouchingGround)) exitWith {};


  if (_buttonDown) then {
    _inZeus = !isNull findDisplay 312;
    _isUsingBackpackRadio = _transceiver == 1;
    _isHeadsetCompatible = ((goggles _unit in FCLA_Radio_Animations_Headgears_Headsets) || (headgear _unit in FCLA_Radio_Animations_Headgears_Headsets));
    _isChestCompatible = vest _unit in FCLA_Radio_Animations_Vests;
    _unit setVariable ["FCLA_TFAR_Animations_isTransmitting", true, true];
    if (!(weaponLowered _unit)) then {_unit action ["WeaponOnBack", _unit];};

    switch (true) do {
    	case (((!_isUsingBackpackRadio) && (_isHeadsetCompatible) && (_isChestCompatible)) || (_inZeus)): {
        [_unit] spawn FCLA_Immersions_fnc_waitUntilAndExecuteTFAR;
        _animation = if (FCLA_Radio_Animation_Preference == "_headset") then {"FCLA_Animation_TFAR_onEar";} else {"FCLA_Animation_TFAR_onVest";};
        [_unit, _animation, "playActionNow"] spawn FCLA_Development_fnc_playAnimation;
      };

    	case ((!_isUsingBackpackRadio) && (_isHeadsetCompatible)): {
        [_unit] spawn FCLA_Immersions_fnc_waitUntilAndExecuteTFAR;
        [_unit, "FCLA_Animation_TFAR_onEar", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;
      };

      case ((!_isUsingBackpackRadio) && (_isChestCompatible)): {
        [_unit] spawn FCLA_Immersions_fnc_waitUntilAndExecuteTFAR;
        [_unit, "FCLA_Animation_TFAR_onVest", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;
      };
    	default {[_unit, _currentRadio] spawn FCLA_Immersions_fnc_onHandTFAR;};
    };
  } else {
    _unit setVariable ["FCLA_TFAR_Animations_isTransmitting", nil, true];
    [_unit, "FCLA_TFAR_End_Animation", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;

    if (!(isNil {_unit getVariable "FCLA_TFAR_Animations_Current_Radio"})) then {
      _radioSimpleObj = _unit getVariable "FCLA_TFAR_Animations_Current_Radio";
      _unit setVariable ["FCLA_TFAR_Animations_Current_Radio", nil, true];
      deleteVehicle _radioSimpleObj;
    };
  };
}, ObjNull] call TFAR_fnc_addEventHandler;
