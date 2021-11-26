
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca la red de camuflaje tropical al casco.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_tropicalCommonHelmetsWithoutCamoNet = [
 "H_HelmetB_tna_F", "H_HelmetB_Enh_tna_F", "H_HelmetSpecB_FCLA_Tropical", "H_HelmetSpecB_Takana_Tropical",
 "H_HelmetSpecB_Jaguar_Tropical", "H_HelmetSpecB_Condor_Tropical", "H_HelmetSpecB_Salamandra_Tropical",
 "H_HelmetSpecB_Anaconda_Tropical", "H_HelmetSpecB_Quetzal_Tropical", "H_HelmetSpecB_Medic_Tropical"
];
_tropicalWoodlandHelmetsWithoutCamoNet = ["H_HelmetB_plain_wdl", "H_HelmetSpecB_wdl"];
_tropicalDigitalHelmetsWithoutCamoNet = [
 "H_HelmetSpecB_Digital", "H_HelmetSpecB_Digital", "H_HelmetSpecB_Takana_Digital", "H_HelmetSpecB_Jaguar_Digital",
 "H_HelmetSpecB_Condor_Digital", "H_HelmetSpecB_Salamand<ra_Digital", "H_HelmetSpecB_Anaconda_Digital",
 "H_HelmetSpecB_Quetzal_Digital", "H_HelmetSpecB_Medic_Digital"
];



//Animación inicial.
[_player, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] call FCLA_Common_fnc_playAnimation;


_statementOnFinish = {
  (_this select 0) params ["_player", "_tropicalCommonHelmetsWithoutCamoNet", "_tropicalWoodlandHelmetsWithoutCamoNet", "_tropicalDigitalHelmetsWithoutCamoNet"];
  _headgear = headgear _player;
  [_player, "FCLA_Camo_Net_Tropical"] call ACE_Common_fnc_useItem;

  playSound "FCLA_Helmet_Equipped";
  switch (true) do {
    case (_headgear in _tropicalCommonHelmetsWithoutCamoNet): {
      removeHeadgear _player;
      _player addHeadgear "H_HelmetB_Camo_Tropical";
    };

    case (_headgear in _tropicalWoodlandHelmetsWithoutCamoNet): {
      removeHeadgear _player;
      _player addHeadgear "H_HelmetB_Camo_Woodland";
    };

    case (_headgear in _tropicalDigitalHelmetsWithoutCamoNet): {
      removeHeadgear _player;
      _player addHeadgear "H_HelmetB_Camo_Digital";
    };
  };
};

_statementOnFailure = {
  (_this select 0) params ["_player"];
  [_player, "", 2] call ACE_Common_fnc_doAnimation;
};

_Condition = {
  (_this select 0) params ["_player"];
  [_player] call FCLA_Interactions_fnc_conditionPutTropicalHCN;
};

[5, [_player, _tropicalCommonHelmetsWithoutCamoNet, _tropicalWoodlandHelmetsWithoutCamoNet, _tropicalDigitalHelmetsWithoutCamoNet], _statementOnFinish, _statementOnFailure, "Colocando red de camuflaje al casco...", _Condition, []] call ACE_Common_fnc_progressBar;
