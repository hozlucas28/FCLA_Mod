
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_rechargeBatteryNVB

Description:
    Recarga la batería de las gafas de visión nocturna.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller"];



//Reproducir animación.
[_caller, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] call FCLA_Common_fnc_playAnimation;


_Condition = {
  params ["_caller"];
  _isNotOnMap = !visibleMap;
  _notInStairs = !(_caller getVariable ["FCLA_inStairs", false]);
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isNotDragging = !(_caller getVariable ["ACE_Dragging_isDragging", false]);
  _isNotCarrying = !(_caller getVariable ["ACE_Dragging_isCarrying", false]);
  _notInCameraMode = !(_caller in (call ACE_Spectator_fnc_players));
  _hasBatteryForNVG = [_caller, "FCLA_NVG_Battery"] call BIS_fnc_hasItem;
  _isNotHandcuffed = !(_caller getVariable ["ACE_Captives_isHandcuffed", false]);
  _isNotUnconscious = !(_caller getVariable ["ACE_isUnconscious", false]);
  _isNotSurrendering = !(_caller getVariable ["ACE_Captives_isSurrendering", false]);
  (FCLA_NVG_Require_Battery) && (_isNotOnMap) && (_notInStairs) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_notInCameraMode) && (_hasBatteryForNVG) && (_isNotHandcuffed) && (_isNotUnconscious) && (_isNotSurrendering);
};

_statementOnFinish = {
  params ["_caller"];
  playSound "FCLA_Magazine_On";
  [_caller, "FCLA_NVG_Battery"] call ACE_Common_fnc_useItem;
  _caller setVariable ["FCLA_Current_Battery_NVG", 100, true];
  [_caller, "FCLA_Animation_Night_Vision_Switch", "playActionNow"] call FCLA_Common_fnc_playAnimation;

  if ((animationState _caller) != "ainvpknlmstpslaywrfldnon_medic") exitWith {};
  [_caller, "", "SwitchMove"] call FCLA_Common_fnc_playAnimation;
};

_statementOnFailure = {
  params ["_caller"];
  if ((animationState _caller) == "ainvpknlmstpslaywrfldnon_medic") then {[_caller, "", "SwitchMove"] call FCLA_Common_fnc_playAnimation;};
};

[5, _caller, _statementOnFinish, _statementOnFailure, "Recargando batería...", _Condition] call ACE_Common_fnc_progressBar;
