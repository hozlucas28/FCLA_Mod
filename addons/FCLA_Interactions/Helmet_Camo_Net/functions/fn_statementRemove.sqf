
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Quita la red de camuflaje del casco.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];



//Animación inicial.
[_player, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] call FCLA_Common_fnc_playAnimation;


_statementOnFinish = {
  (_this select 0) params ["_player"];
  _currentHeadgear = headgear _player;

  switch (toUpper _currentHeadgear) do {
    case "H_HELMETB_CAMO": {
      removeHeadgear _player;
      _player addHeadgear "H_HelmetB";
      [_player, "FCLA_Camo_Net_Arid", "", -1] call ACE_Common_fnc_addToInventory;
    };

    case "H_HELMETB_CAMO_SNAKE": {
      removeHeadgear _player;
      _player addHeadgear "H_HelmetB_snakeskin";
      [_player, "FCLA_Camo_Net_Arid", "", -1] call ACE_Common_fnc_addToInventory;
    };

    case "RHSUSF_ACH_HELMET_CAMO_OCP": {
      removeHeadgear _player;
      _player addHeadgear "rhsusf_ach_helmet_ocp";
      [_player, "FCLA_Camo_Net_Arid", "", -1] call ACE_Common_fnc_addToInventory;
    };

    case "H_HELMETB_CAMO_TROPICAL": {
      removeHeadgear _player;
      _player addHeadgear "H_HelmetB_tna_F";
      [_player, "FCLA_Camo_Net_Tropical", "", -1] call ACE_Common_fnc_addToInventory;
    };

    case "H_HELMETB_CAMO_WOODLAND": {
      removeHeadgear _player;
      _player addHeadgear "H_HelmetB_plain_wdl";
      [_player, "FCLA_Camo_Net_Tropical", "", -1] call ACE_Common_fnc_addToInventory;
    };

    case "H_HELMETB_CAMO_DIGITAL": {
      removeHeadgear _player;
      _player addHeadgear "H_HelmetB_Digital";
      [_player, "FCLA_Camo_Net_Tropical", "", -1] call ACE_Common_fnc_addToInventory;
    };
  };
};

_statementOnFailure = {
  (_this select 0) params ["_player"];
  [_player, "", 2] call ACE_Common_fnc_doAnimation;
};

_Condition = {
  (_this select 0) params ["_player"];
  [_player] call FCLA_Interactions_fnc_conditionRemoveHCN;
};

[5, [_player], _statementOnFinish, _statementOnFailure, "Quitando red de camuflaje del casco...", _Condition, []] call ACE_Common_fnc_progressBar;
