
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_showOxygenSupplyCBRN

Description:
    Muestra el suministro de oxígeno restante.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller"];



//Reproducir animación.
_notInVehicle = isNull objectParent _caller;
_isNotPlayingAnimation = !(_caller getVariable ["FCLA_Playing_Animation", false]);
if ((_notInVehicle) && (_isNotPlayingAnimation)) then {[_caller, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;};


_Condition = {
  (_this select 0) params ["_caller"];
  _currentBackpack = backpack _caller;

  _isNotOnMap = !visibleMap;
  _notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _notInCameraMode = !(_caller in (call ACE_Spectator_fnc_players));
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isNotHandcuffed = !(_caller getVariable ["ACE_Captives_isHandcuffed", false]);
  _isNotUnconscious = !(_caller getVariable ["ACE_isUnconscious", false]);
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _haveCompatibleBackpack = _currentBackpack in FCLA_Backpacks_With_Oxygen;
  (_isNotOnMap) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_notInCameraMode) && (_isCBRNActivated) && (_isNotHandcuffed) && (_isNotUnconscious) && (_isNotSurrendering) && (_haveCompatibleBackpack);
};

_statementOnFinish = {
  (_this select 0) params ["_caller"];
  _currentBackpackContainer = backpackContainer _caller;
  _remainingOxygen = _currentBackpackContainer getVariable ["FCLA_Backpack_Oxygen", 100];

  _coloredBars = round ((_remainingOxygen / 100) * 10);
  if ((_coloredBars == 0) && (_remainingOxygen > 0)) then {_coloredBars = 1;};
  _emptyBars = 10 - _coloredBars;
  _color = [((2 * (1 - _remainingOxygen / 100)) min 1), ((2 * _remainingOxygen / 100) min 1), 0];

  _string = "";
  for "_i" from 1 to _coloredBars do {_string = _string + "|";};
  _text = [_string, _color] call ACE_Common_fnc_stringToColoredText;

  _string = "";
  for "_i" from 1 to _emptyBars do {_string = _string + "|";};
  _text = composeText [_text, [_string, "#808080"] call ACE_Common_fnc_stringToColoredText];

  _picture = getText (configFile >> "CfgVehicles" >> (backpack _caller) >> "picture");
  [_text, _picture] call ACE_Common_fnc_displayTextPicture;
  [_caller, "quick_view", "%1 comprobo el suministro de oxígeno: %2%3", [name _caller, _remainingOxygen, "%"]] call ACE_Medical_Treatment_fnc_addToLog;

  if ((animationState _caller) != "ainvpknlmstpslaywrfldnon_medic") exitWith {};
  [_caller, "", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;
};

_statementOnFailure = {
  (_this select 0) params ["_caller"];
  if ((animationState _caller) == "ainvpknlmstpslaywrfldnon_medic") then {[_caller, "", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;};
};

[5, [_caller], _statementOnFinish, _statementOnFailure, "Comprobando suministro de oxígeno...", _Condition] call ACE_Common_fnc_progressBar;
