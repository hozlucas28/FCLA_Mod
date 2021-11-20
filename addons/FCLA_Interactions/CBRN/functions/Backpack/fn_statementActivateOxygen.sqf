
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
[_player] call BIN_fnc_CBRNHoseInit;
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

  _inStairs = _controlledUnit getVariable ["FCLA_inStairs", false];
  _inCurator = !isNull findDisplay 312;
  _isNotAlive = !alive _player;
  _isSwimming = [_player] call ACE_Common_fnc_isSwimming;
  _inCameraMode = _player in (call ACE_Spectator_fnc_players);
  _hasNotCompatibleMask = !(_currentGoggles in FCLA_Oxygen_Masks);
  _hasNotCompatibleBackpack = !(_currentBackpack in FCLA_Backpacks_With_Oxygen);
  _isBackpackOxygenDesactivated = !(_backpackContainer getVariable ["FCLA_Backpack_Oxygen_Activated", false]);
  _isNotControlledUnit = _player != _controlledUnit;

  if ((_isNotAlive) || (_isSwimming) || (_hasNotCompatibleMask) || (_hasNotCompatibleBackpack) || (_isBackpackOxygenDesactivated)) exitWith {
    [_player] spawn FCLA_Interactions_fnc_statementDesactivateOxygenCBRN;
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
  if ((((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) || (_inStairs) || (_inCurator) || (_inCameraMode) || (_isNotControlledUnit)) exitWith {_args set [1, CBA_missionTime];};

  _delta = CBA_missionTime - _lastTimeUpdated;
  _backpackOxygen = _backpackContainer getVariable ["FCLA_Backpack_Oxygen", FCLA_CBRN_Initial_Backpack_Oxygen];
  _backpackOxygenLifeTime = FCLA_CBRN_Backpack_Oxygen_Life_Time * 60;
  _backpackOxygenConsumed = linearConversion [0, _backpackOxygenLifeTime, _delta, 0, 100, true];
  _backpackContainer setVariable ["FCLA_Backpack_Oxygen", (_backpackOxygen - _backpackOxygenConsumed) max 0];

  _backpackLastAlert = _backpackContainer getVariable ["FCLA_Backpack_Last_Alert", ""];
  switch (true) do {
    case ((_backpackLastAlert == "") && (_backpackOxygen <= 50)): {
      playSound "FCLA_Oxygen_Alert";
      _backpackContainer setVariable ["FCLA_Backpack_Last_Alert", "Half_Capacity", true];
    };

    case ((_backpackLastAlert == "Half_Capacity") && (_backpackOxygen <= 25)): {
      playSound "FCLA_Oxygen_Alert";
      _backpackContainer setVariable ["FCLA_Backpack_Last_Alert", "Quarter_Capacity", true];
    };
  };

  _args set [1, CBA_missionTime];
}, 1, [_player, CBA_missionTime]] call CBA_fnc_addPerFrameHandler;
