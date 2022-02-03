
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca la red de camuflaje arida al casco.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_aridCommonHelmetsWithoutCamoNet = [
 "H_HelmetB", "H_HelmetSpecB", "H_HelmetSpecB_FCLA", "H_HelmetSpecB_Takana", "H_HelmetSpecB_Jaguar",
 "H_HelmetSpecB_Condor", "H_HelmetSpecB_Salamandra", "H_HelmetSpecB_Anaconda", "H_HelmetSpecB_Quetzal",
 "H_HelmetSpecB_Medic"
];
_aridSnakeskinHelmetsWithoutCamoNet = [
 "H_HelmetB_snakeskin", "H_HelmetSpecB_snakeskin", "H_HelmetSpecB_FCLA_Snake", "H_HelmetSpecB_Takana_Snake",
 "H_HelmetSpecB_Jaguar_Snake", "H_HelmetSpecB_Condor_Snake", "H_HelmetSpecB_Salamandra_Snake", "H_HelmetSpecB_Anaconda_Snake",
 "H_HelmetSpecB_Quetzal_Snake", "H_HelmetSpecB_Medic_Snake"
];



//Animacion inicial.
[_player, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] call FCLA_Common_fnc_playAnimation;


_statementOnFinish = {
  (_this select 0) params ["_player", "_aridCommonHelmetsWithoutCamoNet", "_aridSnakeskinHelmetsWithoutCamoNet"];
  _headgear = headgear _player;
  [_player, "FCLA_Camo_Net_Arid"] call ACE_Common_fnc_useItem;

  playSound "FCLA_Helmet_Equipped";
  switch (true) do {
    case (_headgear == "rhsusf_ach_helmet_ocp"): {
      removeHeadgear _player;
      _player addHeadgear "rhsusf_ach_helmet_camo_ocp";
    };

    case (_headgear in _aridCommonHelmetsWithoutCamoNet): {
      removeHeadgear _player;
      _player addHeadgear "H_HelmetB_camo";
    };

    case (_headgear in _aridSnakeskinHelmetsWithoutCamoNet): {
      removeHeadgear _player;
      _player addHeadgear "H_HelmetB_Camo_Snake";
    };
  };
};

_statementOnFailure = {
  (_this select 0) params ["_player"];
  [_player, "", 2] call ACE_Common_fnc_doAnimation;
};

_Condition = {
  (_this select 0) params ["_player"];
  [_player] call FCLA_Interactions_fnc_conditionPutAridHCN;
};

[5, [_player, _aridCommonHelmetsWithoutCamoNet, _aridSnakeskinHelmetsWithoutCamoNet], _statementOnFinish, _statementOnFailure, "Colocando red de camuflaje al casco...", _Condition, []] call ACE_Common_fnc_progressBar;
