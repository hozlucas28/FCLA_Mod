
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
_backpackContainer = backpackContainer _unit;



//Verificar si tiene oxígeno.
if ((_backpackContainer getVariable ["FCLA_Backpack_Oxygen", 100]) <= 0) exitWith {
  _string = "";
  for "_i" from 1 to 0 do {_string = _string + "|";};
  _text = [_string, [1, 0, 0]] call ACE_Common_fnc_stringToColoredText;

  _string = "";
  for "_i" from 1 to 10 do {_string = _string + "|";};
  _text = composeText [_text, [_string, "#808080"] call ACE_Common_fnc_stringToColoredText];

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
  (_this select 0) params ["_player", "_lastTimeUpdated"];
  _currentGoggles = goggles _player;
  _currentBackpack = backpack _player;
  _backpackContainer = backpackContainer _player;

  _isSwimming = [_player] call ACE_Common_fnc_isSwimming;
  _isCBRNDesactivated = isNil "FCLA_CBRN_Activated";
  _hasNotCompatibleMask = !(_currentGoggles in FCLA_Oxygen_Masks);
  _hasNotCompatibleBackpack = !(_currentBackpack in FCLA_Backpacks_With_Oxygen);
  _isBackpackOxygenDesactivated = !(_backpackContainer getVariable ["FCLA_Backpack_Oxygen_Activated", false]);
  if ((_isSwimming) || (_isCBRNDesactivated) || (_hasNotCompatibleMask) || (_hasNotCompatibleBackpack) || (_isBackpackOxygenDesactivated)) exitWith {
    [_player] spawn FCLA_Interactions_fnc_statementDesactivateOxygenCBRN;
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

  _delta = CBA_missionTime - _lastTimeUpdated;
  _backpackOxygenRemaining = (_backpackOxygenRemaining - _delta) max 0;
  _backpackFirstAlertPlayed = _backpackContainer getVariable ["FCLA_Backpack_Last_Alert", "NONE"];
  _backpackContainer setVariable ["FCLA_Backpack_Oxygen", _backpackOxygenRemaining];

  switch (true) do {
    case ((_backpackFirstAlertPlayed == "NONE") && (_backpackOxygenRemaining <= 50)): {
      _this setVariable ["FCLA_Backpack_Last_Alert", "Half_Capacity", true];
      [_backpackContainer, "FCLA_Low_Oxygen_Alert", 1, 15, false] call FCLA_Common_fnc_globalSay3D;
    };

    case ((_backpackFirstAlertPlayed == "Half_Capacity") && (_backpackOxygenRemaining <= 25)): {
      _this setVariable ["FCLA_Backpack_Last_Alert", "Quarter_Capacity", true];
      [_backpackContainer, "FCLA_Low_Oxygen_Alert", 1, 15, false] call FCLA_Common_fnc_globalSay3D;
    };
  };

  (_this select 0) set [1, CBA_missionTime];
}, 1, [_player, CBA_missionTime]] call CBA_fnc_addPerFrameHandler;
