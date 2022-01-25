
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Recarga la batería de las gafas de visión nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];



//Animación inicial.
[_player, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] call FCLA_Common_fnc_playAnimation;


_statementOnFinish = {
  (_this select 0) params ["_player"];
  _lastBattery = _player getVariable ["FCLA_NVG_Battery", FCLA_NVG_Initial_Battery];

  playSound "FCLA_Magazine_Equipped";
  [_player, "FCLA_NVG_Battery"] call ACE_Common_fnc_useItem;
  _player setVariable ["FCLA_NVG_Battery", 100, true];
  [_player, "FCLA_Night_Vision_Switch", "playActionNow"] call FCLA_Common_fnc_playAnimation;

  if (_lastBattery <= 0) then {
    if (isNull objectParent _player) then {
      [_unit, "FCLA_Vision_Mode_Changed", 2, 200, false] call FCLA_Common_fnc_globalSay3D;
    } else {
      playSound "FCLA_Vision_Mode_Changed";
    };
  };
};

_statementOnFailure = {
  (_this select 0) params ["_player"];
  [_player, "", 2] call ACE_Common_fnc_doAnimation;
};

_Condition = {
  (_this select 0) params ["_player"];
  [_player] call FCLA_Interactions_fnc_conditionRechargeNVB;
};

[5, _player, _statementOnFinish, _statementOnFailure, "Recargando batería...", _Condition] call ACE_Common_fnc_progressBar;
