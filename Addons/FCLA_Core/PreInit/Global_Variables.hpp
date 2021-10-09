
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Core\PreInit\Global_Variables.hpp"

Description:
    Define variables globales utilizadas por los addons del mod.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */



/* -------------------------------- GENERAL -------------------------------- */

if (isNil {FCLA_Editors}) then {
  FCLA_Editors = [
                  "76561198153898683", //Lorflord.
                  "76561198137876583", //hozlucas28.
                  "76561198059595506", //Naretick.
                  "76561198173170422", //Sagara.
                  "76561198304995327", //Ghostkiller.
                  "76561198260536786" //Mario.
                 ];
};



/* -------------------------- ZOMBIES AND DEMONS --------------------------- */

ACE_Medical_Selections = ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];



/* -------------------------- FCLA INTERACCIONES --------------------------- */

if (isNil {FCLA_Goggles_Bandages}) then {FCLA_Goggles_Bandages = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];};
if (isNil {FCLA_Oxygen_Masks}) then {FCLA_Oxygen_Masks = ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_RegulatorMask_F"];};
if (isNil {FCLA_Chemical_Detectors}) then {FCLA_Chemical_Detectors = ["ChemicalDetector_01_watch_F"];};
if (isNil {FCLA_Backpacks_With_Oxygen}) then {FCLA_Backpacks_With_Oxygen = ["B_CombinationUnitRespirator_01_F", "B_SCBA_01_F"];};
if (isNil {FCLA_Arid_Helmets_With_Camo_Net}) then {FCLA_Arid_Helmets_With_Camo_Net = ["H_HelmetB_camo", "H_HelmetB_Camo_Snake"];};

if (isNil {FCLA_Arid_Helmets_Without_Camo_Net}) then {
  FCLA_Arid_Helmets_Without_Camo_Net = [
                                        "H_HelmetB", "H_HelmetSpecB", "H_HelmetSpecB_FCLA", "H_HelmetSpecB_Takana", "H_HelmetSpecB_Jaguar",
                                        "H_HelmetSpecB_Condor", "H_HelmetSpecB_Salamandra", "H_HelmetSpecB_Anaconda", "H_HelmetSpecB_Quetzal",
                                        "H_HelmetSpecB_Med", "H_HelmetB_snakeskin", "H_HelmetSpecB_snakeskin", "H_HelmetSpecB_FCLA_Snake",
                                        "H_HelmetSpecB_Takana_Snake", "H_HelmetSpecB_Jaguar_Snake", "H_HelmetSpecB_Condor_Snake",
                                        "H_HelmetSpecB_Salamandra_Snake", "H_HelmetSpecB_Anaconda_Snake", "H_HelmetSpecB_Quetzal_Snake",
                                        "H_HelmetSpecB_Med_Snake"
                                       ];
};

if (isNil {FCLA_Tropical_Helmets_With_Camo_Net}) then {FCLA_Tropical_Helmets_With_Camo_Net = ["H_HelmetB_Camo_Woodland", "H_HelmetB_Camo_Digital", "H_HelmetB_Camo_Tropical"];};
if (isNil {FCLA_Tropical_Helmets_Without_Camo_Net}) then {
  FCLA_Tropical_Helmets_Without_Camo_Net = [
                                            "H_HelmetB_plain_wdl", "H_HelmetSpecB_wdl", "H_HelmetSpecB_Digital",
                                            "H_HelmetSpecB_FCLA_Digital", "H_HelmetSpecB_Takana_Digital", "H_HelmetSpecB_Jaguar_Digital",
                                            "H_HelmetSpecB_Condor_Digital", "H_HelmetSpecB_Salamandra_Digital",
                                            "H_HelmetSpecB_Anaconda_Digital", "H_HelmetSpecB_Quetzal_Digital", "H_HelmetSpecB_Med_Digital",
                                            "H_HelmetB_tna_F", "H_HelmetB_Enh_tna_F", "H_HelmetSpecB_FCLA_Tropical",
                                            "H_HelmetSpecB_Takana_Tropical", "H_HelmetSpecB_Jaguar_Tropical",
                                            "H_HelmetSpecB_Condor_Tropical", "H_HelmetSpecB_Salamandra_Tropical",
                                            "H_HelmetSpecB_Anaconda_Tropical", "H_HelmetSpecB_Quetzal_Tropical",
                                            "H_HelmetSpecB_Med_Tropical"
                                           ];
};
