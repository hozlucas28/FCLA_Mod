
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_activateOxygenCBRN

Description:
    Enciende el suministro de oxígeno.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller", "_arrayOfCompatibleAssets"];
_currentBackpackContainer = backpackContainer _caller;
_currentBackpackContainer setVariable ["FCLA_Backpack_Oxygen_Activated", true, true];



//Mostrar manguera.
_isNotPlayingAnimation = !(_caller getVariable ["FCLA_Playing_Animation", false]);
if (_isNotPlayingAnimation) then {[_caller, "FCLA_Animation_Night_Vision_Switch", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;};
[_caller] call BIN_fnc_CBRNHoseInit;


//Consumir oxígeno.
[{
  (_this select 0) params ["_caller", "_arrayOfCompatibleAssets", "_lastTimeUpdated"];
  _currentGoggles = goggles _caller;
  _currentBackpack = backpack _caller;
  _currentBackpackContainer = backpackContainer _caller;

  _isAlive = alive _caller;
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _notInCameraMode = !(_caller getVariable ["FCLA_Camera_Mode_On", false]);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _haveBackpackEnoughtOxygen = (_currentBackpackContainer getVariable ["FCLA_Backpack_Oxygen", 100]) > 0;
  _isBackpackOxygenActivated = _currentBackpackContainer getVariable ["FCLA_Backpack_Oxygen_Activated", false];
  _haveCompatibleMask = _currentGoggles in FCLA_Oxygen_Masks;
  _haveCompatibleBackpack = _currentBackpack in FCLA_Backpacks_With_Oxygen;
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};


  if ((_isAlive) && (_isNotSwimming) && (_notInCameraMode) && (_isCBRNActivated) && (_haveBackpackEnoughtOxygen) && (_isBackpackOxygenActivated) && (_haveCompatibleMask) && (_haveCompatibleBackpack)) then {
    _delta = CBA_missionTime - _lastTimeUpdated;
    _backpackFirstAlertPlayed = _currentBackpackContainer getVariable ["FCLA_Backpack_Current_Alert_Played", "objNull"];
    _backpackOxygenRemaining = (_backpackOxygenRemaining - _delta) max 0;
    _currentBackpackContainer setVariable ["FCLA_Backpack_Oxygen", _backpackOxygenRemaining];

    if ((_backpackFirstAlertPlayed == "objNull") && (_backpackOxygenRemaining <= 50)) then {
      [_currentBackpackContainer, "FCLA_Low_Oxygen_Alert", 1, false] spawn FCLA_Development_fnc_globalSay3D;
      [{_this setVariable ["FCLA_Backpack_Current_Alert_Played", "Half_Capacity", true];}, _currentBackpackContainer, 1] call CBA_fnc_waitAndExecute;
    };

    if ((_backpackFirstAlertPlayed == "Half_Capacity") && (_backpackOxygenRemaining <= 25)) then {
      [_currentBackpackContainer, "FCLA_Low_Oxygen_Alert", 1, false] spawn FCLA_Development_fnc_globalSay3D;
      [{_this setVariable ["FCLA_Backpack_Current_Alert_Played", "Quarter_Capacity", true];}, _currentBackpackContainer, 1] call CBA_fnc_waitAndExecute;
    };
    (_this select 0) set [1, CBA_missionTime];
  } else {
    [_caller] spawn FCLA_Interactions_fnc_desactivateOxygenCBRN;
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };
}, 1, [_caller, _arrayOfCompatibleAssets, CBA_missionTime]] call CBA_fnc_addPerFrameHandler;
[_caller, "quick_view", "%1 activo el suministro de oxígeno", [name _caller]] call ACE_Medical_Treatment_fnc_addToLog;
