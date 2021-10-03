
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_applyHeadgearPatche

Description:
    Le cambia el parche del casco a la unidad, si es que existe una
    variante del mismo con el parche que se envio.

Parameters:
    _unit - unidad a la que se le colocara la nueva mochila con parche.
    _headgear - classname del casco de la unidad enviada.
    _patche - classname del parche.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit","_patche","_headgear"];
if (_headgear == "") exitWith {false};



//Vectores locales.
_blueBerets = ["H_Beret_gen_F","Beret_FCLA_Blue","Beret_Takana_Blue","Beret_Jaguar_Blue","Beret_Condor_Blue","Beret_Salamandra_Blue","Beret_Anaconda_Blue","Beret_Quetzal_Blue"];
_blackBerets = ["H_Beret_02","Beret_FCLA_Black","Beret_Takana_Black","Beret_Jaguar_Black","Beret_Condor_Black","Beret_Salamandra_Black","Beret_Anaconda_Black","Beret_Quetzal_Black"];
_redBerets = ["H_Beret_CSAT_01_F","Beret_FCLA_Red","Beret_Takana_Red","Beret_Jaguar_Red","Beret_Condor_Red","Beret_Salamandra_Red","Beret_Anaconda_Red","Beret_Quetzal_Red"];
_greenBerets = ["Beret_FCLA_Green","Beret_Takana_Green","Beret_Jaguar_Green","Beret_Condor_Green","Beret_Salamandra_Green","Beret_Anaconda_Green","Beret_Quetzal_Green"];
_heliPilotOTANHeadgears = ["H_PilotHelmetHeli_B","H_Quetzal_Heli_Pilot"];
_heliCrewOtanHeadgears = ["H_CrewHelmetHeli_B","H_Quetzal_Heli_Crew"];
_commonHeadgears = ["H_HelmetSpecB","H_FCLA_Enhanced","H_Takana_Enhanced","H_Jaguar_Enhanced","H_Condor_Enhanced","H_Salamandra_Enhanced","H_Anaconda_Enhanced","H_Quetzal_Enhanced","H_Med_Enhanced"];
_snakeHeadgears = ["H_HelmetSpecB_snakeskin","H_FCLA_Enhanced_Snake","H_Takana_Enhanced_Snake","H_Jaguar_Enhanced_Snake","H_Condor_Enhanced_Snake","H_Salamandra_Enhanced_Snake","H_Anaconda_Enhanced_Snake","H_Quetzal_Enhanced_Snake","H_Med_Enhanced_Snake"];
_tropicalHeadgears = ["H_HelmetB_Enh_tna_F","H_FCLA_Enhanced_Tropical","H_Takana_Enhanced_Tropical","H_Jaguar_Enhanced_Tropical","H_Condor_Enhanced_Tropical","H_Salamandra_Enhanced_Tropical","H_Anaconda_Enhanced_Tropical","H_Quetzal_Enhanced_Tropical","H_Med_Enhanced_Tropical"];
_digitalHeadgears = ["H_Enhanced_Digital","H_Enhanced_Digital","H_FCLA_Enhanced_Digital","H_Takana_Enhanced_Digital","H_Jaguar_Enhanced_Digital","H_Condor_Enhanced_Digital","H_Salamandra_Enhanced_Digital","H_Anaconda_Enhanced_Digital","H_Quetzal_Enhanced_Digital","H_Med_Enhanced_Digital"];
_urbanTwoHeadgears = ["H_Enhanced_Urban_2","H_Enhanced_Urban_2","H_FCLA_Enhanced_Urban_2","H_Takana_Enhanced_Urban_2","H_Jaguar_Enhanced_Urban_2","H_Condor_Enhanced_Urban_2","H_Salamandra_Enhanced_Urban_2","H_Anaconda_Enhanced_Urban_2","H_Quetzal_Enhanced_Urban_2","H_Med_Enhanced_Urban_2"];
_winterTwoHeadgears = ["H_Enhanced_Winter_2","H_Enhanced_Winter_2","H_FCLA_Enhanced_Winter_2","H_Takana_Enhanced_Winter_2","H_Jaguar_Enhanced_Winter_2","H_Condor_Enhanced_Winter_2","H_Salamandra_Enhanced_Winter_2","H_Anaconda_Enhanced_Winter_2","H_Quetzal_Enhanced_Winter_2","H_Med_Enhanced_Winter_2"];
_compatibleHeadgears = _blueBerets + _blackBerets + _redBerets + _greenBerets + _commonHeadgears + _snakeHeadgears + _tropicalHeadgears + _digitalHeadgears + _urbanTwoHeadgears + _winterTwoHeadgears;



if (_patche == "Patch_Takana") exitWith {
  if (_headgear in _blueBerets) exitWith {if (_headgear == "Beret_Takana_Blue") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Takana_Blue"; true};
  if (_headgear in _blackBerets) exitWith {if (_headgear == "Beret_Takana_Black") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Takana_Black"; true};
  if (_headgear in _redBerets) exitWith {if (_headgear == "Beret_Takana_Red") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Takana_Red"; true};
  if (_headgear in _greenBerets) exitWith {if (_headgear == "Beret_Takana_Green") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Takana_Green"; true};
  if (_headgear in _commonHeadgears) exitWith {if (_headgear == "H_Takana_Enhanced") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Takana_Enhanced"; true};
  if (_headgear in _snakeHeadgears) exitWith {if (_headgear == "H_Takana_Enhanced_Snake") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Takana_Enhanced_Snake"; true};
  if (_headgear in _tropicalHeadgears) exitWith {if (_headgear == "H_Takana_Enhanced_Tropical") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Takana_Enhanced_Tropical"; true};
  if (_headgear in _digitalHeadgears) exitWith {if (_headgear == "H_Takana_Enhanced_Digital") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Takana_Enhanced_Digital"; true};
  if (_headgear in _urbanTwoHeadgears) exitWith {if (_headgear == "H_Takana_Enhanced_Urban_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Takana_Enhanced_Urban_2"; true};
  if (_headgear in _winterTwoHeadgears) exitWith {if (_headgear == "H_Takana_Enhanced_Winter_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Takana_Enhanced_Winter_2"; true};
};


if (_patche == "Patch_Jaguar") exitWith {
  if (_headgear in _blueBerets) exitWith {if (_headgear == "Beret_Jaguar_Blue") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Jaguar_Blue"; true};
  if (_headgear in _blackBerets) exitWith {if (_headgear == "Beret_Jaguar_Black") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Jaguar_Black"; true};
  if (_headgear in _redBerets) exitWith {if (_headgear == "Beret_Jaguar_Red") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Jaguar_Red"; true};
  if (_headgear in _greenBerets) exitWith {if (_headgear == "Beret_Jaguar_Green") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Jaguar_Green"; true};
  if (_headgear in _commonHeadgears) exitWith {if (_headgear == "H_Jaguar_Enhanced") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Jaguar_Enhanced"; true};
  if (_headgear in _snakeHeadgears) exitWith {if (_headgear == "H_Jaguar_Enhanced_Snake") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Jaguar_Enhanced_Snake"; true};
  if (_headgear in _tropicalHeadgears) exitWith {if (_headgear == "H_Jaguar_Enhanced_Tropical") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Jaguar_Enhanced_Tropical"; true};
  if (_headgear in _digitalHeadgears) exitWith {if (_headgear == "H_Jaguar_Enhanced_Digital") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Jaguar_Enhanced_Digital"; true};
  if (_headgear in _urbanTwoHeadgears) exitWith {if (_headgear == "H_Jaguar_Enhanced_Urban_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Jaguar_Enhanced_Urban_2"; true};
  if (_headgear in _winterTwoHeadgears) exitWith {if (_headgear == "H_Jaguar_Enhanced_Winter_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Jaguar_Enhanced_Winter_2"; true};
};


if (_patche == "Patch_Condor") exitWith {
  if (_headgear in _blueBerets) exitWith {if (_headgear == "Beret_Condor_Blue") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Condor_Blue"; true};
  if (_headgear in _blackBerets) exitWith {if (_headgear == "Beret_Condor_Black") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Condor_Black"; true};
  if (_headgear in _redBerets) exitWith {if (_headgear == "Beret_Condor_Red") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Condor_Red"; true};
  if (_headgear in _greenBerets) exitWith {if (_headgear == "Beret_Condor_Green") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Condor_Green"; true};
  if (_headgear in _commonHeadgears) exitWith {if (_headgear == "H_Condor_Enhanced") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Condor_Enhanced"; true};
  if (_headgear in _snakeHeadgears) exitWith {if (_headgear == "H_Condor_Enhanced_Snake") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Condor_Enhanced_Snake"; true};
  if (_headgear in _tropicalHeadgears) exitWith {if (_headgear == "H_Condor_Enhanced_Tropical") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Condor_Enhanced_Tropical"; true};
  if (_headgear in _digitalHeadgears) exitWith {if (_headgear == "H_Condor_Enhanced_Digital") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Condor_Enhanced_Digital"; true};
  if (_headgear in _urbanTwoHeadgears) exitWith {if (_headgear == "H_Condor_Enhanced_Urban_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Condor_Enhanced_Urban_2"; true};
  if (_headgear in _winterTwoHeadgears) exitWith {if (_headgear == "H_Condor_Enhanced_Winter_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Condor_Enhanced_Winter_2"; true};
};


if (_patche == "Patch_Salamandra") exitWith {
  if (_headgear in _blueBerets) exitWith {if (_headgear == "Beret_Salamandra_Blue") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Salamandra_Blue"; true};
  if (_headgear in _blackBerets) exitWith {if (_headgear == "Beret_Salamandra_Black") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Salamandra_Black"; true};
  if (_headgear in _redBerets) exitWith {if (_headgear == "Beret_Salamandra_Red") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Salamandra_Red"; true};
  if (_headgear in _greenBerets) exitWith {if (_headgear == "Beret_Salamandra_Green") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Salamandra_Green"; true};
  if (_headgear in _commonHeadgears) exitWith {if (_headgear == "H_Salamandra_Enhanced") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Salamandra_Enhanced"; true};
  if (_headgear in _snakeHeadgears) exitWith {if (_headgear == "H_Salamandra_Enhanced_Snake") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Salamandra_Enhanced_Snake"; true};
  if (_headgear in _tropicalHeadgears) exitWith {if (_headgear == "H_Salamandra_Enhanced_Tropical") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Salamandra_Enhanced_Tropical"; true};
  if (_headgear in _digitalHeadgears) exitWith {if (_headgear == "H_Salamandra_Enhanced_Digital") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Salamandra_Enhanced_Digital"; true};
  if (_headgear in _urbanTwoHeadgears) exitWith {if (_headgear == "H_Salamandra_Enhanced_Urban_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Salamandra_Enhanced_Urban_2"; true};
  if (_headgear in _winterTwoHeadgears) exitWith {if (_headgear == "H_Salamandra_Enhanced_Winter_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Salamandra_Enhanced_Winter_2"; true};
};


if (_patche == "Patch_Anaconda") exitWith {
  if (_headgear in _blueBerets) exitWith {if (_headgear == "Beret_Anaconda_Blue") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Anaconda_Blue"; true};
  if (_headgear in _blackBerets) exitWith {if (_headgear == "Beret_Anaconda_Black") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Anaconda_Black"; true};
  if (_headgear in _redBerets) exitWith {if (_headgear == "Beret_Anaconda_Red") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Anaconda_Red"; true};
  if (_headgear in _greenBerets) exitWith {if (_headgear == "Beret_Anaconda_Green") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Anaconda_Green"; true};
  if (_headgear in _commonHeadgears) exitWith {if (_headgear == "H_Anaconda_Enhanced") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Anaconda_Enhanced"; true};
  if (_headgear in _snakeHeadgears) exitWith {if (_headgear == "H_Anaconda_Enhanced_Snake") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Anaconda_Enhanced_Snake"; true};
  if (_headgear in _tropicalHeadgears) exitWith {if (_headgear == "H_Anaconda_Enhanced_Tropical") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Anaconda_Enhanced_Tropical"; true};
  if (_headgear in _digitalHeadgears) exitWith {if (_headgear == "H_Anaconda_Enhanced_Digital") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Anaconda_Enhanced_Digital"; true};
  if (_headgear in _urbanTwoHeadgears) exitWith {if (_headgear == "H_Anaconda_Enhanced_Urban_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Anaconda_Enhanced_Urban_2"; true};
  if (_headgear in _winterTwoHeadgears) exitWith {if (_headgear == "H_Anaconda_Enhanced_Winter_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Anaconda_Enhanced_Winter_2"; true};
};


if (_patche == "Patch_Quetzal") exitWith {
  if (_headgear in _blueBerets) exitWith {if (_headgear == "Beret_Quetzal_Blue") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Quetzal_Blue"; true};
  if (_headgear in _blackBerets) exitWith {if (_headgear == "Beret_Quetzal_Black") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Quetzal_Black"; true};
  if (_headgear in _redBerets) exitWith {if (_headgear == "Beret_Quetzal_Red") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Quetzal_Red"; true};
  if (_headgear in _heliPilotOTANHeadgears) exitWith {if (_headgear == "H_Quetzal_Heli_Pilot") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Quetzal_Heli_Pilot"; true};
  if (_headgear in _heliCrewOtanHeadgears) exitWith {if (_headgear == "H_Quetzal_Heli_Crew") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Quetzal_Heli_Crew"; true};
  if (_headgear in _greenBerets) exitWith {if (_headgear == "Beret_Quetzal_Green") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_Quetzal_Green"; true};
  if (_headgear in _commonHeadgears) exitWith {if (_headgear == "H_Quetzal_Enhanced") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Quetzal_Enhanced"; true};
  if (_headgear in _snakeHeadgears) exitWith {if (_headgear == "H_Quetzal_Enhanced_Snake") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Quetzal_Enhanced_Snake"; true};
  if (_headgear in _tropicalHeadgears) exitWith {if (_headgear == "H_Quetzal_Enhanced_Tropical") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Quetzal_Enhanced_Tropical"; true};
  if (_headgear in _digitalHeadgears) exitWith {if (_headgear == "H_Quetzal_Enhanced_Digital") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Quetzal_Enhanced_Digital"; true};
  if (_headgear in _urbanTwoHeadgears) exitWith {if (_headgear == "H_Quetzal_Enhanced_Urban_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Quetzal_Enhanced_Urban_2"; true};
  if (_headgear in _winterTwoHeadgears) exitWith {if (_headgear == "H_Quetzal_Enhanced_Winter_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Quetzal_Enhanced_Winter_2"; true};
};


if (_patche == "Patch_Medico") exitWith {
  if (_headgear in _commonHeadgears) exitWith {if (_headgear == "H_Med_Enhanced") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Med_Enhanced"; true};
  if (_headgear in _snakeHeadgears) exitWith {if (_headgear == "H_Med_Enhanced_Snake") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Med_Enhanced_Snake"; true};
  if (_headgear in _tropicalHeadgears) exitWith {if (_headgear == "H_Med_Enhanced_Tropical") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Med_Enhanced_Tropical"; true};
  if (_headgear in _digitalHeadgears) exitWith {if (_headgear == "H_Med_Enhanced_Digital") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Med_Enhanced_Digital"; true};
  if (_headgear in _urbanTwoHeadgears) exitWith {if (_headgear == "H_Med_Enhanced_Urban_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Med_Enhanced_Urban_2"; true};
  if (_headgear in _winterTwoHeadgears) exitWith {if (_headgear == "H_Med_Enhanced_Winter_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_Med_Enhanced_Winter_2"; true};
};


if (_headgear in _compatibleHeadgears) exitWith {
  if (_headgear in _blueBerets) exitWith {if (_headgear == "Beret_FCLA_Blue") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_FCLA_Blue"; true};
  if (_headgear in _blackBerets) exitWith {if (_headgear == "Beret_FCLA_Black") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_FCLA_Black"; true};
  if (_headgear in _redBerets) exitWith {if (_headgear == "Beret_FCLA_Red") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_FCLA_Red"; true};
  if (_headgear in _greenBerets) exitWith {if (_headgear == "Beret_FCLA_Green") exitWith {}; removeHeadgear _unit; _unit addHeadgear "Beret_FCLA_Green"; true};
  if (_headgear in _commonHeadgears) exitWith {if (_headgear == "H_FCLA_Enhanced") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_FCLA_Enhanced"; true};
  if (_headgear in _snakeHeadgears) exitWith {if (_headgear == "H_FCLA_Enhanced_Snake") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_FCLA_Enhanced_Snake"; true};
  if (_headgear in _tropicalHeadgears) exitWith {if (_headgear == "H_FCLA_Enhanced_Tropical") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_FCLA_Enhanced_Tropical"; true};
  if (_headgear in _digitalHeadgears) exitWith {if (_headgear == "H_FCLA_Enhanced_Digital") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_FCLA_Enhanced_Digital"; true};
  if (_headgear in _urbanTwoHeadgears) exitWith {if (_headgear == "H_FCLA_Enhanced_Urban_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_FCLA_Enhanced_Urban_2"; true};
  if (_headgear in _winterTwoHeadgears) exitWith {if (_headgear == "H_FCLA_Enhanced_Winter_2") exitWith {}; removeHeadgear _unit; _unit addHeadgear "H_FCLA_Enhanced_Winter_2"; true};
};
false
