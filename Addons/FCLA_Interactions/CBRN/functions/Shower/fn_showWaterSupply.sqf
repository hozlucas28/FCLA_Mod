
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_showWaterSupplyCBRN

Description:
    Muestra el suministro de agua restante.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_caller"];



//Reproducir animación.
_notInVehicle = isNull objectParent _caller;
_isNotPlayingAnimation = !(_caller getVariable ["FCLA_Playing_Animation", false]);
if ((_notInVehicle) && (_isNotPlayingAnimation)) then {[_caller, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;};


_Condition = {
  (_this select 0) params ["_target", "_caller"];
  _isNotOnMap = !visibleMap;
  _notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
  _isCloseEnough = _caller distance _target <= 2;
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _notInCameraMode = !(_caller getVariable ["FCLA_Camera_Mode_On", false]);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isNotHandcuffed = !(_caller getVariable ["ACE_Captives_isHandcuffed", false]);
  _isNotUnconscious = !(_caller getVariable ["ACE_isUnconscious", false]);
  _isTouchingGround = isTouchingGround _caller;
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  (_isNotOnMap) && (_notInStairs) && (_isCloseEnough) && (_isNotSwimming) && (_notInCameraMode) && (_isCBRNActivated) && (_isNotHandcuffed) && (_isNotUnconscious) && (_isTouchingGround) && (_isNotSurrendering);
};

_statementOnFinish = {
  (_this select 0) params ["_target", "_caller"];
  _remainingWater = _target getVariable ["FCLA_Shower_Water", 100];

  _coloredBars = round ((_remainingWater / 100) * 10);
  if ((_coloredBars == 0) && (_remainingWater > 0)) then {_coloredBars = 1;};
  _emptyBars = 10 - _coloredBars;
  _color = [((2 * (1 - _remainingWater / 100)) min 1), ((2 * _remainingWater / 100) min 1), 0];

  _string = "";
  for "_i" from 1 to _coloredBars do {_string = _string + "|";};
  _text = [_string, _color] call ACE_Common_fnc_stringToColoredText;

  _string = "";
  for "_i" from 1 to _emptyBars do {_string = _string + "|";};
  _text = composeText [_text, [_string, "#808080"] call ACE_Common_fnc_stringToColoredText];
  [_text, "\FCLA_Data\ACE_Actions\Water_Meter.paa"] call ACE_Common_fnc_displayTextPicture;

  if ((animationState _caller) != "ainvpknlmstpslaywrfldnon_medic") exitWith {};
  [_caller, "", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;
};

_statementOnFailure = {
  (_this select 0) params ["_target", "_caller"];
  if ((animationState _caller) == "ainvpknlmstpslaywrfldnon_medic") then {[_caller, "", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;};
};

[5, [_target, _caller], _statementOnFinish, _statementOnFailure, "Comprobando suministro de agua...", _Condition] call ACE_Common_fnc_progressBar;
