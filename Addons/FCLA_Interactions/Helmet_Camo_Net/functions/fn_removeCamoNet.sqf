
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_removeHCN

Description:
    Quita la red de camuflaje que tiene el casco.

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
  params ["_caller"];
  _isNotHandcuffed = !(_caller getVariable ["ACE_Captives_isHandcuffed", false]);
  _isNotUnconscious = !(_caller getVariable ["ACE_isUnconscious", false]);
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  _canRemoveHelmetCamoNetGeneralCondition = [_caller, FCLA_Arid_Helmets_With_Camo_Net + FCLA_Tropical_Helmets_With_Camo_Net] call FCLA_Interactions_fnc_canRemoveHCN;
  (_isNotHandcuffed) && (_isNotUnconscious) && (_isNotSurrendering) && (_canRemoveHelmetCamoNetGeneralCondition);
};

_statementOnFinish = {
  params ["_caller"];
  _currentHeadgear = headgear _caller;
  _savedHeadgear = _caller getVariable ["FCLA_Saved_Headgear", ""];
  _caller setVariable ["FCLA_Saved_Headgear", nil, true];
  removeHeadgear _caller;

  if (_savedHeadgear != "") exitWith {_caller addHeadgear _savedHeadgear;};
  if (_currentHeadgear in FCLA_Arid_Helmets_With_Camo_Net) then {
    switch (true) do {
      case (_currentHeadgear == "H_HelmetB_camo"): {_caller addHeadgear "H_HelmetSpecB";};
      case (_currentHeadgear == "H_HelmetB_Camo_Snake"): {_caller addHeadgear "H_HelmetB_snakeskin";};
    };
  } else {
    switch (true) do {
      case (_currentHeadgear == "H_HelmetB_Camo_Woodland"): {_caller addHeadgear "H_HelmetSpecB_wdl";};
      case (_currentHeadgear == "H_HelmetB_Camo_Digital"): {_caller addHeadgear "H_HelmetSpecB_Digital";};
      case (_currentHeadgear == "H_HelmetB_Camo_Tropical"): {_caller addHeadgear "H_HelmetB_Enh_tna_F";};
    };
  };

  if ((animationState _caller) != "ainvpknlmstpslaywrfldnon_medic") exitWith {};
  [_caller, "", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;
};

_statementOnFailure = {
  params ["_caller"];
  if ((animationState _caller) == "ainvpknlmstpslaywrfldnon_medic") then {[_caller, "", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;};
};

[5, _caller, _statementOnFinish, _statementOnFailure, "Colocando red de camuflaje al casco...", _Condition] call ACE_Common_fnc_progressBar;
