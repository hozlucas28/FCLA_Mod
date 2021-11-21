
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
  _vehicle = vehicle _unit;
  _FFVSeats = [_vehicle] call ACE_Common_fnc_getTurretsFFV;
  _currentTurret = _vehicle unitTurret _unit;
  _vehicleRole = [_unit] call CBA_fnc_vehicleRole;
  _severalConditions = [_unit, [0, 1, 3, 4, 7, 12, 13, 14, 15, 17]] call FCLA_Common_fnc_severalConditions;
  _isNotTouchingGround = !isTouchingGround _unit;
  _isNotInCompatibleSeat = (_vehicle isKindOf "Air") && !(_currentTurret in _FFVSeats) && (_vehicleRole != "cargo");
  if ((!FCLA_Radio_Animations) || (_severalConditions) || (_isNotTouchingGround) || (_isNotInCompatibleSeat)) exitWith {};


  if (_buttonDown) then {
    _isHidden = isObjectHidden _unit;
    _inVehicle = !isNull objectParent _unit;
    _isChestCompatible = (vest _unit) in FCLA_Radio_Animations_Vests;
    _usingBackpackRadio = _transceiver == 1;
    _isNotWeaponLowered = !(weaponLowered _unit);
    _isHeadsetCompatible = (((goggles _unit) in FCLA_Radio_Animations_Headgears_Headsets) || ((headgear _unit) in FCLA_Radio_Animations_Headgears_Headsets));
    _hasNotLauncherOnHand = (currentWeapon _unit) != (secondaryWeapon _unit);

    _unit setVariable ["FCLA_Transmitting", true, true];
    if ((_isNotWeaponLowered) && (_hasNotLauncherOnHand)) then {_unit action ["WeaponOnBack", _unit];};

    switch (true) do {
    	case ((!_usingBackpackRadio) && (_isHeadsetCompatible) && (_isChestCompatible)): {
        _unit spawn FCLA_Immersions_fnc_waitUntilTFAR;
        _animation = if (FCLA_Radio_Animation_Preference == "_headset") then {"FCLA_Animation_TFAR_onEar";} else {"FCLA_Animation_TFAR_onVest";};
        [_unit, _animation] call ACE_Common_fnc_doGesture;
        //[_unit, _animation, "playActionNow"] call FCLA_Common_fnc_playAnimation;
      };

    	case ((!_usingBackpackRadio) && (_isHeadsetCompatible)): {
        _unit spawn FCLA_Immersions_fnc_waitUntilTFAR;
        [_unit, "FCLA_Animation_TFAR_onEar"] call ACE_Common_fnc_doGesture;
        //[_unit, "FCLA_Animation_TFAR_onEar", "playActionNow"] call FCLA_Common_fnc_playAnimation;
      };

      case ((!_usingBackpackRadio) && (_isChestCompatible)): {
        _unit spawn FCLA_Immersions_fnc_waitUntilTFAR;
        [_unit, "FCLA_Animation_TFAR_onVest"] call ACE_Common_fnc_doGesture;
        //[_unit, "FCLA_Animation_TFAR_onVest", "playActionNow"] call FCLA_Common_fnc_playAnimation;
      };

    	default {
        if ((_isHidden) || (_inVehicle)) exitWith {};
        [_unit, _currentRadio] spawn FCLA_Immersions_fnc_radioOnHandTFAR;
      };
    };
  } else {
    deleteVehicle (_unit getVariable ["FCLA_TFAR_Animation_Radio", objNull]);
    _unit setVariable ["FCLA_Transmitting", nil, true];
    _unit setVariable ["FCLA_TFAR_Animation_Radio", nil, true];
    [_unit, "FCLA_TFAR_End_Animation"] call ACE_Common_fnc_doGesture;
  };
}, ObjNull] call TFAR_fnc_addEventHandler;
