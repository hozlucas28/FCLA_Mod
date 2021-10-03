
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_equipHCN

Description:
    Coloca la red de camuflaje en el casco.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller", "_typeOfCamoNet", "_arrayOfHelmetsWithoutCamoNet", "_arrayOfHelmetsWithCamoNet"];



//Reproducir animación.
_notInVehicle = isNull objectParent _caller;
_isNotPlayingAnimation = !(_caller getVariable ["FCLA_Playing_Animation", false]);
if ((_notInVehicle) && (_isNotPlayingAnimation)) then {[_caller, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;};


_Condition = {
  (_this select 0) params ["_caller", "_typeOfCamoNet", "_arrayOfHelmetsWithoutCamoNet", "_arrayOfHelmetsWithCamoNet"];
  _isNotHandcuffed = !(_caller getVariable ["ACE_Captives_isHandcuffed", false]);
  _isNotUnconscious = !(_caller getVariable ["ACE_isUnconscious", false]);
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _canPutHelmetCamoNetGeneralCondition = [_caller, _typeOfCamoNet, _arrayOfHelmetsWithCamoNet] call FCLA_Interactions_fnc_canEquipHCN;
  (_isNotHandcuffed) && (_isNotUnconscious) && (_isNotSurrendering) && (_canPutHelmetCamoNetGeneralCondition);
};

_statementOnFinish = {
  (_this select 0) params ["_caller", "_typeOfCamoNet", "_arrayOfHelmetsWithoutCamoNet", "_arrayOfHelmetsWithCamoNet"];
  _currentHeadgear = headgear _caller;
  _caller setVariable ["FCLA_Saved_Headgear", _currentHeadgear, true];
  removeHeadgear _caller;

  if (_typeOfCamoNet == "Arid") then {
    _arrayOfCommonHelmets = _arrayOfHelmetsWithCamoNet select [0, 10];
    _arrayOfSnakeHelmets = _arrayOfHelmetsWithCamoNet select [10, 10];
    switch (true) do {
      case (_currentHeadgear in _arrayOfCommonHelmets): {_caller addHeadgear (_arrayOfHelmetsWithoutCamoNet select 0);};
      case (_currentHeadgear in _arrayOfSnakeHelmets): {_caller addHeadgear (_arrayOfHelmetsWithoutCamoNet select 1);};
    };
  } else {
    _arrayOfWoodlandHelmets = _arrayOfHelmetsWithCamoNet select [0, 2];
    _arrayOfDigitalHelmets = _arrayOfHelmetsWithCamoNet select [2, 9];
    _arrayOfTropicalHelmets = _arrayOfHelmetsWithCamoNet select [11, 10];
    switch (true) do {
      case (_currentHeadgear in _arrayOfWoodlandHelmets): {_caller addHeadgear (_arrayOfHelmetsWithoutCamoNet select 0);};
      case (_currentHeadgear in _arrayOfDigitalHelmets): {_caller addHeadgear (_arrayOfHelmetsWithoutCamoNet select 1);};
      case (_currentHeadgear in _arrayOfTropicalHelmets): {_caller addHeadgear (_arrayOfHelmetsWithoutCamoNet select 2);};
    };
  };

  if ((animationState _caller) != "ainvpknlmstpslaywrfldnon_medic") exitWith {};
  [_caller, "", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;
};

_statementOnFailure = {
  (_this select 0) params ["_caller", "_typeOfCamoNet", "_arrayOfHelmetsWithoutCamoNet", "_arrayOfHelmetsWithCamoNet"];
  if ((animationState _caller) == "ainvpknlmstpslaywrfldnon_medic") then {[_caller, "", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;};
};

[5, [_caller, _typeOfCamoNet, _arrayOfHelmetsWithoutCamoNet, _arrayOfHelmetsWithCamoNet], _statementOnFinish, _statementOnFailure, "Colocando red de camuflaje al casco...", _Condition] call ACE_Common_fnc_progressBar;
