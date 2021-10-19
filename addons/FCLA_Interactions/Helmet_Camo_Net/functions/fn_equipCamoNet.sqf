
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca la red de camuflaje en el casco.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller", "_typeOfCamoNet", "_helmetsWithoutCamoNet", "_helmetsWithCamoNet"];



//Reproducir animación.
_notInVehicle = isNull objectParent _caller;
_isNotPlayingAnimation = !(_caller getVariable ["FCLA_Playing_Animation", false]);
if ((_notInVehicle) && (_isNotPlayingAnimation)) then {[_caller, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;};


_Condition = {
  (_this select 0) params ["_caller", "_typeOfCamoNet", "_helmetsWithoutCamoNet", "_helmetsWithCamoNet"];
  _isNotHandcuffed = !(_caller getVariable ["ACE_Captives_isHandcuffed", false]);
  _isNotUnconscious = !(_caller getVariable ["ACE_isUnconscious", false]);
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _canPutHelmetCamoNetGeneralCondition = [_caller, _typeOfCamoNet, _helmetsWithCamoNet] call FCLA_Interactions_fnc_canEquipHCN;
  (_isNotHandcuffed) && (_isNotUnconscious) && (_isNotSurrendering) && (_canPutHelmetCamoNetGeneralCondition);
};

_statementOnFinish = {
  (_this select 0) params ["_caller", "_typeOfCamoNet", "_helmetsWithoutCamoNet", "_helmetsWithCamoNet"];
  _currentHeadgear = headgear _caller;
  _caller setVariable ["FCLA_Saved_Headgear", _currentHeadgear, true];
  removeHeadgear _caller;

  if (_typeOfCamoNet == "Arid") then {
    _commonHelmets = _helmetsWithCamoNet select [0, 10];
    _snakeHelmets = _helmetsWithCamoNet select [10, 10];
    switch (true) do {
      case (_currentHeadgear in _commonHelmets): {_caller addHeadgear (_helmetsWithoutCamoNet select 0);};
      case (_currentHeadgear in _snakeHelmets): {_caller addHeadgear (_helmetsWithoutCamoNet select 1);};
    };
  } else {
    _woodlandHelmets = _helmetsWithCamoNet select [0, 2];
    _digitalHelmets = _helmetsWithCamoNet select [2, 9];
    _tropicalHelmets = _helmetsWithCamoNet select [11, 10];
    switch (true) do {
      case (_currentHeadgear in _woodlandHelmets): {_caller addHeadgear (_helmetsWithoutCamoNet select 0);};
      case (_currentHeadgear in _digitalHelmets): {_caller addHeadgear (_helmetsWithoutCamoNet select 1);};
      case (_currentHeadgear in _tropicalHelmets): {_caller addHeadgear (_helmetsWithoutCamoNet select 2);};
    };
  };

  if ((animationState _caller) != "ainvpknlmstpslaywrfldnon_medic") exitWith {};
  [_caller, "", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;
};

_statementOnFailure = {
  (_this select 0) params ["_caller", "_typeOfCamoNet", "_helmetsWithoutCamoNet", "_helmetsWithCamoNet"];
  if ((animationState _caller) == "ainvpknlmstpslaywrfldnon_medic") then {[_caller, "", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;};
};

[5, [_caller, _typeOfCamoNet, _helmetsWithoutCamoNet, _helmetsWithCamoNet], _statementOnFinish, _statementOnFailure, "Colocando red de camuflaje al casco...", _Condition] call ACE_Common_fnc_progressBar;
