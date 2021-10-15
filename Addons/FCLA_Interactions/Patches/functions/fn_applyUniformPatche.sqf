
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_applyUniformPatche

Description:
    Le cambia el parche del uniforme a la unidad, si es que existe una
    variante del mismo con el parche que se envio.

Arguments:
    _unit - unidad a la que se le colocara el nuevo uniforme con parche.
    _uniform - classname del uniforme de la unidad enviada.
    _patche - classname del parche.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit","_patche","_uniform"];
if (_uniform == "") exitWith {false};



//Items del uniforme.
_itemsInUniform = uniformItems _unit;



//Vectores locales.
_heliOTANUniforms = ["U_B_HeliPilotCoveralls","Uniform_FCLA_Heli_Pilot_OTAN","Uniform_Quetzal_Heli_Pilot_OTAN"];
_MTPNoRolledUpUniforms = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_worn","Uniform_FCLA_OTAN_noRolledUp","Uniform_Takana_OTAN_noRolledUp","Uniform_Jaguar_OTAN_noRolledUp","Uniform_Condor_OTAN_noRolledUp","Uniform_Quetzal_OTAN_noRolledUp","Uniform_Anaconda_OTAN_noRolledUp","Uniform_Salamandra_OTAN_noRolledUp"];
_MTPRolledUpUniforms = ["U_B_CombatUniform_mcam_vest","Uniform_FCLA_OTAN_rolledUp","Uniform_Takana_OTAN_rolledUp","Uniform_Jaguar_OTAN_rolledUp","Uniform_Condor_OTAN_rolledUp","Uniform_Quetzal_OTAN_rolledUp","Uniform_Anaconda_OTAN_rolledUp","Uniform_Salamandra_OTAN_rolledUp"];
_tropicalNoRolledUpUniforms = ["U_B_T_Soldier_F","Uniform_FCLA_OTAN_noRolledUp_Tropical","Uniform_Takana_OTAN_noRolledUp_Tropical","Uniform_Jaguar_OTAN_noRolledUp_Tropical","Uniform_Condor_OTAN_noRolledUp_Tropical","Uniform_Quetzal_OTAN_noRolledUp_Tropical","Uniform_Anaconda_OTAN_noRolledUp_Tropical","Uniform_Salamandra_OTAN_noRolledUp_Tropical"];
_tropicalRolledUpUniforms = ["U_B_T_Soldier_SL_F","Uniform_FCLA_OTAN_rolledUp_Tropical","Uniform_Takana_OTAN_rolledUp_Tropical","Uniform_Jaguar_OTAN_rolledUp_Tropical","Uniform_Condor_OTAN_rolledUp_Tropical","Uniform_Quetzal_OTAN_rolledUp_Tropical","Uniform_Anaconda_OTAN_rolledUp_Tropical","Uniform_Salamandra_OTAN_rolledUp_Tropical"];
_digitalNoRolledUpUniforms = ["Uniform_noRolledUp_Digital","Uniform_FCLA_noRolledUp_Digital","Uniform_Takana_noRolledUp_Digital","Uniform_Jaguar_noRolledUp_Digital","Uniform_Condor_noRolledUp_Digital","Uniform_Quetzal_noRolledUp_Digital","Uniform_Anaconda_noRolledUp_Digital","Uniform_Salamandra_noRolledUp_Digital"];
_digitalRolledUpUniforms = ["Uniform_rolledUp_Digital","Uniform_FCLA_rolledUp_Digital","Uniform_Takana_rolledUp_Digital","Uniform_Jaguar_rolledUp_Digital","Uniform_Condor_rolledUp_Digital","Uniform_Quetzal_rolledUp_Digital","Uniform_Anaconda_rolledUp_Digital","Uniform_Salamandra_rolledUp_Digital"];
_urbanTwoNoRolledUpUniforms = ["Uniform_noRolledUp_Urban_2","Uniform_FCLA_noRolledUp_Urban_2","Uniform_Takana_noRolledUp_Urban_2","Uniform_Jaguar_noRolledUp_Urban_2","Uniform_Condor_noRolledUp_Urban_2","Uniform_Quetzal_noRolledUp_Urban_2","Uniform_Anaconda_noRolledUp_Urban_2","Uniform_Salamandra_noRolledUp_Urban_2"];
_urbanTwoRolledUpUniforms = ["Uniform_rolledUp_Urban_2","Uniform_FCLA_rolledUp_Urban_2","Uniform_Takana_rolledUp_Urban_2","Uniform_Jaguar_rolledUp_Urban_2","Uniform_Condor_rolledUp_Urban_2","Uniform_Quetzal_rolledUp_Urban_2","Uniform_Anaconda_rolledUp_Urban_2","Uniform_Salamandra_rolledUp_Urban_2"];
_winterOneNoRolledUpUniforms = ["Uniform_noRolledUp_Winter_1","Uniform_FCLA_noRolledUp_Winter_1","Uniform_Takana_noRolledUp_Winter_1","Uniform_Jaguar_noRolledUp_Winter_1","Uniform_Condor_noRolledUp_Winter_1","Uniform_Quetzal_noRolledUp_Winter_1","Uniform_Anaconda_noRolledUp_Winter_1","Uniform_Salamandra_noRolledUp_Winter_1"];
_winterTwoNoRolledUpUniforms = ["Uniform_noRolledUp_Winter_2","Uniform_FCLA_noRolledUp_Winter_2","Uniform_Takana_noRolledUp_Winter_2","Uniform_Jaguar_noRolledUp_Winter_2","Uniform_Condor_noRolledUp_Winter_2","Uniform_Quetzal_noRolledUp_Winter_2","Uniform_Anaconda_noRolledUp_Winter_2","Uniform_Salamandra_noRolledUp_Winter_2"];
_winterTwoRolledUpUniforms = ["Uniform_rolledUp_Winter_2","Uniform_FCLA_rolledUp_Winter_2","Uniform_Takana_rolledUp_Winter_2","Uniform_Jaguar_rolledUp_Winter_2","Uniform_Condor_rolledUp_Winter_2","Uniform_Quetzal_rolledUp_Winter_2","Uniform_Anaconda_rolledUp_Winter_2","Uniform_Salamandra_rolledUp_Winter_2"];
_winterThreeNoRolledUpUniforms = ["Uniform_noRolledUp_Winter_3","Uniform_FCLA_noRolledUp_Winter_3","Uniform_Takana_noRolledUp_Winter_3","Uniform_Jaguar_noRolledUp_Winter_3","Uniform_Condor_noRolledUp_Winter_3","Uniform_Quetzal_noRolledUp_Winter_3","Uniform_Anaconda_noRolledUp_Winter_3","Uniform_Salamandra_noRolledUp_Winter_3"];
_winterThreeRolledUpUniforms = ["Uniform_rolledUp_Winter_3","Uniform_FCLA_rolledUp_Winter_3","Uniform_Takana_rolledUp_Winter_3","Uniform_Jaguar_rolledUp_Winter_3","Uniform_Condor_rolledUp_Winter_3","Uniform_Quetzal_rolledUp_Winter_3","Uniform_Anaconda_rolledUp_Winter_3","Uniform_Salamandra_rolledUp_Winter_3"];
_seaOneNoRolledUpUniforms = ["Uniform_noRolledUp_Sea_1","Uniform_FCLA_noRolledUp_Sea_1","Uniform_Takana_noRolledUp_Sea_1","Uniform_Jaguar_noRolledUp_Sea_1","Uniform_Condor_noRolledUp_Sea_1","Uniform_Quetzal_noRolledUp_Sea_1","Uniform_Anaconda_noRolledUp_Sea_1","Uniform_Salamandra_noRolledUp_Sea_1"];
_seaOneRolledUpUniforms = ["Uniform_rolledUp_Sea_1","Uniform_FCLA_rolledUp_Sea_1","Uniform_Takana_rolledUp_Sea_1","Uniform_Jaguar_rolledUp_Sea_1","Uniform_Condor_rolledUp_Sea_1","Uniform_Quetzal_rolledUp_Sea_1","Uniform_Anaconda_rolledUp_Sea_1","Uniform_Salamandra_rolledUp_Sea_1"];
_compatibleUniforms = _heliOTANUniforms + _MTPNoRolledUpUniforms + _MTPRolledUpUniforms + _tropicalNoRolledUpUniforms + _tropicalRolledUpUniforms + _digitalNoRolledUpUniforms + _digitalRolledUpUniforms + _urbanTwoNoRolledUpUniforms + _urbanTwoRolledUpUniforms + _winterOneNoRolledUpUniforms + _winterTwoNoRolledUpUniforms + _winterTwoRolledUpUniforms + _winterThreeNoRolledUpUniforms + _winterThreeRolledUpUniforms + _seaOneNoRolledUpUniforms + _seaOneRolledUpUniforms;



if (_patche == "Patch_Takana") exitWith {
  if (_uniform in _MTPNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_OTAN_noRolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_OTAN_noRolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _MTPRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_OTAN_rolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_OTAN_rolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_OTAN_noRolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_OTAN_noRolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_OTAN_rolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_OTAN_rolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_noRolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_noRolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_rolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_rolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_noRolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_noRolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_rolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_rolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_noRolledUp_Winter_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_noRolledUp_Winter_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_noRolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_noRolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_rolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_rolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_noRolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_noRolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_rolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_rolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_noRolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_noRolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneRolledUpUniforms) exitWith {if (_uniform == "Uniform_Takana_rolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Takana_rolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
};


if (_patche == "Patch_Jaguar") exitWith {
  if (_uniform in _MTPNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_OTAN_noRolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_OTAN_noRolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _MTPRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_OTAN_rolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_OTAN_rolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_OTAN_noRolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_OTAN_noRolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_OTAN_rolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_OTAN_rolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_noRolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_noRolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_rolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_rolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_noRolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_noRolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_rolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_rolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_noRolledUp_Winter_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_noRolledUp_Winter_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_noRolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_noRolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_rolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_rolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_noRolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_noRolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_rolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_rolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_noRolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_noRolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneRolledUpUniforms) exitWith {if (_uniform == "Uniform_Jaguar_rolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Jaguar_rolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
};


if (_patche == "Patch_Condor") exitWith {
  if (_uniform in _MTPNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_OTAN_noRolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_OTAN_noRolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _MTPRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_OTAN_rolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_OTAN_rolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_OTAN_noRolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_OTAN_noRolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_OTAN_rolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_OTAN_rolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_noRolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_noRolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_rolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_rolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_noRolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_noRolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_rolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_rolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_noRolledUp_Winter_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_noRolledUp_Winter_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_noRolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_noRolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_rolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_rolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_noRolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_noRolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_rolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_rolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_noRolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_noRolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneRolledUpUniforms) exitWith {if (_uniform == "Uniform_Condor_rolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Condor_rolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
};


if (_patche == "Patch_Salamandra") exitWith {
  if (_uniform in _MTPNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_OTAN_noRolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_OTAN_noRolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _MTPRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_OTAN_rolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_OTAN_rolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_OTAN_noRolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_OTAN_noRolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_OTAN_rolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_OTAN_rolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_noRolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_noRolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_rolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_rolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_noRolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_noRolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_rolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_rolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_noRolledUp_Winter_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_noRolledUp_Winter_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_noRolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_noRolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_rolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_rolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_noRolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_noRolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_rolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_rolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_noRolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_noRolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneRolledUpUniforms) exitWith {if (_uniform == "Uniform_Salamandra_rolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Salamandra_rolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
};


if (_patche == "Patch_Anaconda") exitWith {
  if (_uniform in _MTPNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_OTAN_noRolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_OTAN_noRolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _MTPRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_OTAN_rolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_OTAN_rolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_OTAN_noRolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_OTAN_noRolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_OTAN_rolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_OTAN_rolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_noRolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_noRolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_rolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_rolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_noRolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_noRolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_rolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_rolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_noRolledUp_Winter_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_noRolledUp_Winter_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_noRolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_noRolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_rolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_rolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_noRolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_noRolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_rolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_rolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_noRolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_noRolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneRolledUpUniforms) exitWith {if (_uniform == "Uniform_Anaconda_rolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Anaconda_rolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
};


if (_patche == "Patch_Quetzal") exitWith {
  if (_uniform in _heliOTANUniforms) exitWith {if (_uniform == "Uniform_Quetzal_Heli_Pilot_OTAN") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_Heli_Pilot_OTAN"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _MTPNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_OTAN_noRolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_OTAN_noRolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _MTPRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_OTAN_rolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_OTAN_rolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_OTAN_noRolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_OTAN_noRolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_OTAN_rolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_OTAN_rolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_noRolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_noRolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_rolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_rolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_noRolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_noRolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_rolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_rolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_noRolledUp_Winter_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_noRolledUp_Winter_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_noRolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_noRolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_rolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_rolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_noRolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_noRolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_rolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_rolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_noRolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_noRolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneRolledUpUniforms) exitWith {if (_uniform == "Uniform_Quetzal_rolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_Quetzal_rolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
};


if ((_uniform in _compatibleUniforms) && (_patche != "Patch_Medico")) exitWith {
  if (_uniform in _heliOTANUniforms) exitWith {if (_uniform == "Uniform_FCLA_Heli_Pilot_OTAN") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_Heli_Pilot_OTAN"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _MTPNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_OTAN_noRolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_OTAN_noRolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _MTPRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_OTAN_rolledUp") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_OTAN_rolledUp"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_OTAN_noRolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_OTAN_noRolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _tropicalRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_OTAN_rolledUp_Tropical") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_OTAN_rolledUp_Tropical"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_noRolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_noRolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _digitalRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_rolledUp_Digital") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_rolledUp_Digital"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_noRolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_noRolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _urbanTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_rolledUp_Urban_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_rolledUp_Urban_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_noRolledUp_Winter_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_noRolledUp_Winter_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_noRolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_noRolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterTwoRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_rolledUp_Winter_2") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_rolledUp_Winter_2"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_noRolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_noRolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _winterThreeRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_rolledUp_Winter_3") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_rolledUp_Winter_3"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneNoRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_noRolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_noRolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
  if (_uniform in _seaOneRolledUpUniforms) exitWith {if (_uniform == "Uniform_FCLA_rolledUp_Sea_1") exitWith {}; removeUniform _unit; _unit forceAddUniform "Uniform_FCLA_rolledUp_Sea_1"; {_unit addItemToUniform _x} forEach _itemsInUniform; true};
};
false
