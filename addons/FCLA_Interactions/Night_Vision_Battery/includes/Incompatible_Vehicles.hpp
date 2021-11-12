
/* ----------------------------------------------------------------------------

Content:
    Listado de los vehículos incompatibles para que se consuma la batería de
    las gafas de visión nocturna, cuando se utiliza la optica de la torreta
    del artillero.

Mods classnames:
    - Vanilla.
    - RHS.
    - CUP.
---------------------------------------------------------------------------- */

_vanillaVehicles = [
 "B_G_Mortar_01_F", "B_MRAP_01_gmg_F", "B_MRAP_01_hmg_F",
 "B_LSV_01_AT_F", "B_LSV_01_armed_F", "B_SDV_01_F",
 "B_static_AA_F", "B_static_AT_F", "B_Mortar_01_F",
 "B_GMG_01_F", "B_GMG_01_high_F", "B_HMG_01_F",
 "B_HMG_01_high_F", "B_T_MRAP_01_gmg_F", "B_T_MRAP_01_hmg_F",
 "B_T_LSV_01_AT_F", "B_T_LSV_01_armed_F", "B_T_Static_AA_F",
 "B_T_Static_AT_F", "B_T_GMG_01_F", "B_T_HMG_01_F",
 "O_MRAP_02_gmg_F", "O_MRAP_02_hmg_F", "O_LSV_02_AT_F",
 "O_SDV_01_F", "O_static_AA_F", "O_static_AT_F",
 "O_Mortar_01_F", "O_GMG_01_F", "O_GMG_01_high_F",
 "O_HMG_01_F", "O_HMG_01_high_F", "O_T_MRAP_02_gmg_ghex_F",
 "O_T_MRAP_02_hmg_ghex_F", "O_T_LSV_02_AT_F", "O_G_Mortar_01_F",
 "I_MRAP_03_gmg_F", "I_MRAP_03_hmg_F", "I_SDV_01_F",
 "I_static_AA_F", "I_static_AT_F", "I_Mortar_01_F",
 "I_GMG_01_F", "I_HMG_01_F", "I_HMG_01_high_F",
 "I_GMG_01_high_F", "I_G_Mortar_01_F", "I_E_Static_AA_F",
 "I_E_Static_AT_F", "I_E_Mortar_01_F", "I_E_GMG_01_F",
 "I_E_GMG_01_high_F", "I_E_HMG_01_high_F", "I_E_HMG_01_F",
 "B_T_Mortar_01_F", "B_Boat_Armed_01_minigun_F", "B_T_Boat_Armed_01_minigun_F",
 "O_Boat_Armed_01_hmg_F", "O_T_Boat_Armed_01_hmg_F", "I_Boat_Armed_01_minigun_F"
];

_RHSVehicles = [
 "rhsusf_m1151_m2crows_usmc_d", "rhsusf_m1151_mk19crows_usmc_d", "rhsusf_m1045_d_s",
 "rhsusf_m1240a1_m2crows_usmc_d", "rhsusf_m1240a1_mk19crows_usmc_d", "RHS_Stinger_AA_pod_USMC_D",
 "RHS_TOW_TriPod_USMC_D", "rhsusf_m1151_m2crows_usarmy_wd", "rhsusf_m1151_mk19crows_usarmy_wd",
 "rhsusf_m966_w", "rhsusf_M1220_M153_M2_usarmy_wd", "rhsusf_M1220_M153_MK19_usarmy_wd",
 "rhsusf_m1240a1_m2crows_usarmy_wd", "rhsusf_m1240a1_mk19crows_usarmy_wd", "RHS_TOW_TriPod_WD",
 "RHS_Stinger_AA_pod_WD", "rhsusf_stryker_m1126_m2_wd", "rhsusf_stryker_m1126_mk19_wd",
 "rhsusf_stryker_m1127_m2_wd", "rhsusf_stryker_m1132_m2_np_wd", "rhsusf_stryker_m1132_m2_wd",
 "rhsusf_m1045_d", "rhsusf_m1151_m2crows_usarmy_d", "rhsusf_m1151_mk19crows_usarmy_d",
 "rhsusf_m966_d", "rhsusf_M1220_M153_M2_usarmy_d", "rhsusf_M1220_M153_MK19_usarmy_d",
 "rhsusf_m1240a1_m2crows_usarmy_d", "rhsusf_m1240a1_mk19crows_usarmy_d", "RHS_Stinger_AA_pod_D",
 "RHS_TOW_TriPod_D", "rhsusf_stryker_m1126_m2_d", "rhsusf_stryker_m1126_mk19_d",
 "rhsusf_stryker_m1127_m2_d", "rhsusf_stryker_m1132_m2_np_d", "rhsusf_stryker_m1132_m2_d",
 "rhsusf_M1238A1_M2_socom_d", "rhsusf_M1238A1_Mk19_socom_d", "rhsusf_M1239_M2_socom_d",
 "rhsusf_M1239_MK19_socom_d", "rhsusf_M1239_M2_Deploy_socom_d", "rhsusf_M1239_MK19_Deploy_socom_d",
 "rhsusf_m1245_m2crows_socom_d", "rhsusf_m1245_mk19crows_socom_d", "rhsusf_m1245_m2crows_socom_deploy",
 "rhsusf_m1245_mk19crows_socom_deploy", "rhsusf_m1045_w_s", "rhsusf_m1151_m2crows_usmc_wd",
 "rhsusf_m1151_mk19crows_usmc_wd", "rhsusf_m1240a1_m2crows_usmc_wd", "rhsusf_m1240a1_mk19crows_usmc_wd",
 "RHS_Stinger_AA_pod_USMC_WD", "RHS_TOW_TriPod_USMC_WD", "rhsusf_mkvsoc"
];

_CUPsVehicles = [];
_incompatibleVehicles = _vanillaVehicles + _RHSVehicles + _CUPsVehicles;


//LA OPCION DEL NO NVG EN MIRA BUGUEA LA NVG. CORREGIDO ERA LA ANIMACIÓN VER QUE PASA CUANDO SE USA EN LA OTRAS ACCIONES CON LA NVG PUESTA.
//Cuando tiene un lanzador avanzado ó mira nocturna? SE ACTIVA EL CONSUMO COLOCAR CONDICIONAL
//COMPLETAR _CUPsVehicles
//REVISAR SI PUEDO RECARGAR LA NVG
