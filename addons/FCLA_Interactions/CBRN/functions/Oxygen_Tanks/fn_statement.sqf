
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Recarga el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];



//Reproducir animación.
[_player, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] call FCLA_Common_fnc_playAnimation;


_Condition = {
  (_this select 0) params ["_target", "_player"];
  _currentBackpack = backpack _player;
  _currentBackpackContainer = backpackContainer _player;

  _isNotOnMap = !visibleMap;
  _notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
  _isObjectAlive = alive _target;
  _notInCameraMode = !(_player in (call ACE_Spectator_fnc_players));
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isNotHandcuffed = !(_player getVariable ["ACE_Captives_isHandcuffed", false]);
  _isNotOxygenFull = (_currentBackpackContainer getVariable ["FCLA_Backpack_Oxygen", 100]) < 100;
  _isNotUnconscious = !(_player getVariable ["ACE_isUnconscious", false]);
  _isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
  _hasOxygenRemaining = (_target getVariable ["FCLA_Oxygen_Supply", 1000]) > 0;
  _isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
  _haveCompatibleBackpack = _currentBackpack in FCLA_Backpacks_With_Oxygen;
  (_isNotOnMap) && (_notInStairs) && (_isNotHandcuffed) && (_isObjectAlive) && (_notInCameraMode) && (_isCBRNActivated) && (_isNotOxygenFull) && (_isNotUnconscious) && (_isNotSurrendering) && (_hasOxygenRemaining) && (_isNotSwimming) && (_haveCompatibleBackpack);
};

_statementOnFinish = {
  (_this select 0) params ["_target", "_player"];
  _oxygenSupply = _target getVariable ["FCLA_Oxygen_Supply", 1000];
  _currentBackpackContainer = backpackContainer _player;

  _target setVariable ["FCLA_Oxygen_Supply", _oxygenSupply - 100, true];
  _currentBackpackContainer setVariable ["FCLA_Backpack_Oxygen", 100, true];
  _currentBackpackContainer setVariable ["FCLA_Backpack_Current_Alert_Played", nil, true];

  _coloredBars = round ((100 / 100) * 10);
  if ((_coloredBars == 0) && (100 > 0)) then {_coloredBars = 1;};
  _emptyBars = 10 - _coloredBars;
  _color = [((2 * (1 - 100 / 100)) min 1), ((2 * 100 / 100) min 1), 0];

  _string = "";
  for "_i" from 1 to _coloredBars do {_string = _string + "|";};
  _text = [_string, _color] call ACE_Common_fnc_stringToColoredText;

  _string = "";
  for "_i" from 1 to _emptyBars do {_string = _string + "|";};
  _text = composeText [_text, [_string, "#808080"] call ACE_Common_fnc_stringToColoredText];

  _picture = getText (configFile >> "CfgVehicles" >> (backpack _player) >> "picture");
  [_text, _picture] call ACE_Common_fnc_displayTextPicture;

  if ((animationState _player) != "ainvpknlmstpslaywrfldnon_medic") exitWith {};
  [_player, "", "SwitchMove"] call FCLA_Common_fnc_playAnimation;
};

_statementOnFailure = {
  (_this select 0) params ["_player"];
  if ((animationState _player) == "ainvpknlmstpslaywrfldnon_medic") then {[_player, "", "SwitchMove"] call FCLA_Common_fnc_playAnimation;};
};

[10, [_target, _player], _statementOnFinish, _statementOnFailure, "Recargando oxígeno...", _Condition] call ACE_Common_fnc_progressBar;
