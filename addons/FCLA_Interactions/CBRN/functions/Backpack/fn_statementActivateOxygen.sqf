
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Activa el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_backpackContainer = backpackContainer _player;



//Verificar si tiene oxígeno.
if ((_backpackContainer getVariable ["FCLA_Backpack_Oxygen", FCLA_CBRN_Initial_Backpack_Oxygen]) <= 0) exitWith {
  _text = ["||||||||||", "#808080"] call ACE_Common_fnc_stringToColoredText;
  _picture = getText (configFile >> "CfgVehicles" >> (backpack _player) >> "picture");
  [_text, _picture] call ACE_Common_fnc_displayTextPicture;
};



//Colocar manguera.
[_player, true] spawn FCLA_Interactions_fnc_showHoseCBRN;
_backpackContainer setVariable ["FCLA_Backpack_Oxygen_Activated", true, true];
[_player, "FCLA_Night_Vision_Switch", "playActionNow"] call FCLA_Common_fnc_playAnimation;
[_player, "quick_view", "%1 activo el suministro de oxígeno", [name _player]] call ACE_Medical_Treatment_fnc_addToLog;


//Comenzar consumo oxígeno.
[{
  _args params ["_player", "_lastTimeUpdated"];
  _controlledUnit = call CBA_fnc_currentUnit;
  _currentGoggles = goggles _player;
  _currentBackpack = backpack _player;
  _backpackContainer = backpackContainer _player;
  _remainingBackpackOxygen = _backpackContainer getVariable ["FCLA_Backpack_Oxygen", FCLA_CBRN_Initial_Backpack_Oxygen];
  _compatibleOxygenMasks = if (isNil "FCLA_CBRN_Compatible_Oxygen_Masks") then {["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_RegulatorMask_F"];} else {FCLA_CBRN_Compatible_Oxygen_Masks;};
  _compatibleBackpacksWithOxygen = if (isNil "FCLA_CBRN_Compatible_Backpacks_With_Oxygen") then {["B_CombinationUnitRespirator_01_F", "B_SCBA_01_F"];} else {FCLA_CBRN_Compatible_Backpacks_With_Oxygen;};

  _inStairs = _player getVariable ["FCLA_inStairs", false];
  _inCurator = !isNull findDisplay 312;
  _isNotAlive = !alive _player;
  _isSwimming = [_player] call ACE_Common_fnc_isSwimming;
  _inCameraMode = _player in (call ACE_Spectator_fnc_players);
  _hasNotCompatibleMask = !(_currentGoggles in _compatibleOxygenMasks);
  _hasNotCompatibleBackpack = !(_currentBackpack in _compatibleBackpacksWithOxygen);
  _isBackpackOxygenDesactivated = !(_backpackContainer getVariable ["FCLA_Backpack_Oxygen_Activated", false]);
  _isNotControlledUnit = _player != _controlledUnit;

  if ((_isNotAlive) || (_isSwimming) || (_hasNotCompatibleMask) || (_hasNotCompatibleBackpack) || (_isBackpackOxygenDesactivated) || (_remainingBackpackOxygen <= 0)) exitWith {
    [_player] spawn FCLA_Interactions_fnc_statementDesactivateOxygenCBRN;
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
  if ((((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) || (_inStairs) || (_inCurator) || (_inCameraMode) || (_isNotControlledUnit)) exitWith {_args set [1, CBA_missionTime];};

  _delta = CBA_missionTime - _lastTimeUpdated;
  _backpackOxygenLifeTime = FCLA_CBRN_Backpack_Oxygen_Life_Time * 60;
  _backpackOxygenConsumed = linearConversion [0, _backpackOxygenLifeTime, _delta, 0, 100, true];
  _backpackContainer setVariable ["FCLA_Backpack_Oxygen", (_remainingBackpackOxygen - _backpackOxygenConsumed) max 0];

  _backpackLastAlert = _backpackContainer getVariable ["FCLA_Backpack_Last_Alert", ""];
  switch (true) do {
    case ((_backpackLastAlert == "") && (_remainingBackpackOxygen <= 50)): {
      playSound "FCLA_Oxygen_Alert";
      _backpackContainer setVariable ["FCLA_Backpack_Last_Alert", "Half_Capacity", true];
    };

    case ((_backpackLastAlert == "Half_Capacity") && (_remainingBackpackOxygen <= 25)): {
      playSound "FCLA_Oxygen_Alert";
      _backpackContainer setVariable ["FCLA_Backpack_Last_Alert", "Quarter_Capacity", true];
    };
  };

  _args set [1, CBA_missionTime];
}, 1, [_player, CBA_missionTime]] call CBA_fnc_addPerFrameHandler;
