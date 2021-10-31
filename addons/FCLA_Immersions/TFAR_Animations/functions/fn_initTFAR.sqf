
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna un eventhandler del tipo 'TFAR_fnc_addEventHandler', que se ejecutara
 * cuando se transmita por radio.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_TFAR_Animations_OnTangentEH", "OnTangent", {
  params ["_unit", "_currentRadio", "_transceiver", "_hasAdditionalChannel", "_buttonDown"];
  _getCurrentVehicleRole = [_unit] call CBA_fnc_vehicleRole;
  _isNotAlive = !alive _unit;
  _isSwimming = [_unit] call ACE_Common_fnc_isSwimming;
  _isDragging = _unit getVariable ["ACE_Dragging_isDragging", false];
  _inCameraMode = _unit in (call ACE_Spectator_fnc_players);
  _isHandcuffed = _unit getVariable ["ACE_Captives_isHandcuffed", false];
  _inWeaponAnimation = !isNil "FCLA_inWeapon_Animation";
  _isNotInCargoVehicle = if ((_getCurrentVehicleRole == "") || (_getCurrentVehicleRole == "cargo")) then {false} else {true};
  _isNotTouchingGround = !isTouchingGround _unit;
  if ((!FCLA_Radio_Animations) || (_isNotAlive) || (_isSwimming) || (_isDragging) || (_inCameraMode) || (_isHandcuffed) || (_inWeaponAnimation) || (_isNotInCargoVehicle) || (_isNotTouchingGround)) exitWith {};


  if (_buttonDown) then {
    _isHidden = isObjectHidden _unit;
    _inCurator = !isNull findDisplay 312;
    _isChestCompatible = (vest _unit) in FCLA_Radio_Animations_Vests;
    _usingBackpackRadio = _transceiver == 1;
    _isHeadsetCompatible = (((goggles _unit) in FCLA_Radio_Animations_Headgears_Headsets) || ((headgear _unit) in FCLA_Radio_Animations_Headgears_Headsets));
    _unit setVariable ["FCLA_TFAR_Animations_isTransmitting", true, true];
    if (!(weaponLowered _unit)) then {_unit action ["WeaponOnBack", _unit];};

    switch (true) do {
    	case (((!_usingBackpackRadio) && (_isHeadsetCompatible) && (_isChestCompatible)) || (_inCurator)): {
        [_unit] spawn FCLA_Immersions_fnc_waitUntilAndExecuteTFAR;
        _animation = if (FCLA_Radio_Animation_Preference == "_headset") then {"FCLA_Animation_TFAR_onEar";} else {"FCLA_Animation_TFAR_onVest";};
        [_unit, _animation, "playActionNow"] call FCLA_Common_fnc_playAnimation;
      };

    	case ((!_usingBackpackRadio) && (_isHeadsetCompatible)): {
        [_unit] spawn FCLA_Immersions_fnc_waitUntilAndExecuteTFAR;
        [_unit, "FCLA_Animation_TFAR_onEar", "playActionNow"] call FCLA_Common_fnc_playAnimation;
      };

      case ((!_usingBackpackRadio) && (_isChestCompatible)): {
        [_unit] spawn FCLA_Immersions_fnc_waitUntilAndExecuteTFAR;
        [_unit, "FCLA_Animation_TFAR_onVest", "playActionNow"] call FCLA_Common_fnc_playAnimation;
      };

    	default {
        if (_isHidden) exitWith {};
        [_unit, _currentRadio] spawn FCLA_Immersions_fnc_onHandTFAR;
      };
    };
  } else {
    _radioSimpleObj = _unit getVariable "FCLA_TFAR_Animations_Current_Radio";
    deleteVehicle _radioSimpleObj;
    _unit setVariable ["FCLA_TFAR_Animations_Current_Radio", nil, true];
    _unit setVariable ["FCLA_TFAR_Animations_isTransmitting", nil, true];
    [_unit, "FCLA_TFAR_End_Animation", "playActionNow"] call FCLA_Common_fnc_playAnimation;
  };
}, ObjNull] call TFAR_fnc_addEventHandler;
