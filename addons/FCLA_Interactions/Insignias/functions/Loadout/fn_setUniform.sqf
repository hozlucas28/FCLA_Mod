
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca el uniforme con la insignia a la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_insignia"];
_getPlatoon = [_insignia, (_insignia find "_") + 1, 100] call CBA_fnc_substring;
_platoon = if ((_getPlatoon == "Unassigned") || (_getPlatoon == "Common")) then {"FCLA";} else {_getPlatoon;};
_currentUniform = uniform _unit;
_itemsInUniform = uniformItems _unit;



//Listado de los uniformes con insignias.
_MTPUniforms = ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_worn", "U_B_CombatUniform_FCLA_mcam", "U_B_CombatUniform_Takana_mcam", "U_B_CombatUniform_Jaguar_mcam", "U_B_CombatUniform_Condor_mcam", "U_B_CombatUniform_Salamandra_mcam", "U_B_CombatUniform_Anaconda_mcam", "U_B_CombatUniform_Quetzal_mcam"];
_reconMTPUniforms = ["U_B_CombatUniform_mcam_vest", "U_B_CombatUniform_FCLA_mcam_Vest", "U_B_CombatUniform_Takana_mcam_Vest", "U_B_CombatUniform_Jaguar_mcam_Vest", "U_B_CombatUniform_Condor_mcam_Vest", "U_B_CombatUniform_Salamandra_mcam_Vest", "U_B_CombatUniform_Anaconda_mcam_Vest", "U_B_CombatUniform_Quetzal_mcam_Vest"];
_tropicalUniforms = ["U_B_T_Soldier_F", "U_B_CombatUniform_FCLA_Tropical", "U_B_CombatUniform_Takana_Tropical", "U_B_CombatUniform_Jaguar_Tropical", "U_B_CombatUniform_Condor_Tropical", "U_B_CombatUniform_Salamandra_Tropical", "U_B_CombatUniform_Anaconda_Tropical", "U_B_CombatUniform_Quetzal_Tropical"];
_reconTropicalUniforms = ["U_B_T_Soldier_SL_F", "U_B_CombatUniform_FCLA_Tropical_Vest", "U_B_CombatUniform_Takana_Tropical_Vest", "U_B_CombatUniform_Jaguar_Tropical_Vest", "U_B_CombatUniform_Condor_Tropical_Vest", "U_B_CombatUniform_Salamandra_Tropical_Vest", "U_B_CombatUniform_Anaconda_Tropical_Vest", "U_B_CombatUniform_Quetzal_Tropical_Vest"];
_digitalUniforms = ["U_B_CombatUniform_Digital", "U_B_CombatUniform_FCLA_Digital", "U_B_CombatUniform_Takana_Digital", "U_B_CombatUniform_Jaguar_Digital", "U_B_CombatUniform_Condor_Digital", "U_B_CombatUniform_Salamandra_Digital", "U_B_CombatUniform_Anaconda_Digital", "U_B_CombatUniform_Quetzal_Digital"];
_reconDigitalUniforms = ["U_B_CombatUniform_Digital_Vest", "U_B_CombatUniform_FCLA_Digital_Vest", "U_B_CombatUniform_Takana_Digital_Vest", "U_B_CombatUniform_Jaguar_Digital_Vest", "U_B_CombatUniform_Condor_Digital_Vest", "U_B_CombatUniform_Salamandra_Digital_Vest", "U_B_CombatUniform_Anaconda_Digital_Vest", "U_B_CombatUniform_Quetzal_Digital_Vest"];
_urbanV1Uniforms = ["U_B_CombatUniform_Urban_v1", "U_B_CombatUniform_FCLA_Urban_v1", "U_B_CombatUniform_Takana_Urban_v1", "U_B_CombatUniform_Jaguar_Urban_v1", "U_B_CombatUniform_Condor_Urban_v1", "U_B_CombatUniform_Salamandra_Urban_v1", "U_B_CombatUniform_Anaconda_Urban_v1", "U_B_CombatUniform_Quetzal_Urban_v1"];
_reconUrbanV1Uniforms = ["U_B_CombatUniform_Urban_Vest_v1", "U_B_CombatUniform_FCLA_Urban_Vest_v1", "U_B_CombatUniform_Takana_Urban_Vest_v1", "U_B_CombatUniform_Jaguar_Urban_Vest_v1", "U_B_CombatUniform_Condor_Urban_Vest_v1", "U_B_CombatUniform_Salamandra_Urban_Vest_v1", "U_B_CombatUniform_Anaconda_Urban_Vest_v1", "U_B_CombatUniform_Quetzal_Urban_Vest_v1"];
_urbanV2Uniforms = ["U_B_CombatUniform_Urban_v2", "U_B_CombatUniform_FCLA_Urban_v2", "U_B_CombatUniform_Takana_Urban_v2", "U_B_CombatUniform_Jaguar_Urban_v2", "U_B_CombatUniform_Condor_Urban_v2", "U_B_CombatUniform_Salamandra_Urban_v2", "U_B_CombatUniform_Anaconda_Urban_v2", "U_B_CombatUniform_Quetzal_Urban_v2"];
_reconUrbanV2Uniforms = ["U_B_CombatUniform_Urban_Vest_v2", "U_B_CombatUniform_FCLA_Urban_Vest_v2", "U_B_CombatUniform_Takana_Urban_Vest_v2", "U_B_CombatUniform_Jaguar_Urban_Vest_v2", "U_B_CombatUniform_Condor_Urban_Vest_v2", "U_B_CombatUniform_Salamandra_Urban_Vest_v2", "U_B_CombatUniform_Anaconda_Urban_Vest_v2", "U_B_CombatUniform_Quetzal_Urban_Vest_v2"];
_winterV1Uniforms = ["U_B_CombatUniform_Winter_v1", "U_B_CombatUniform_FCLA_Winter_v1", "U_B_CombatUniform_Takana_Winter_v1", "U_B_CombatUniform_Jaguar_Winter_v1", "U_B_CombatUniform_Condor_Winter_v1", "U_B_CombatUniform_Salamandra_Winter_v1", "U_B_CombatUniform_Anaconda_Winter_v1", "U_B_CombatUniform_Quetzal_Winter_v1"];
_reconWinterV1Uniforms = ["U_B_CombatUniform_Winter_Vest_v1", "U_B_CombatUniform_FCLA_Winter_Vest_v1", "U_B_CombatUniform_Takana_Winter_Vest_v1", "U_B_CombatUniform_Jaguar_Winter_Vest_v1", "U_B_CombatUniform_Condor_Winter_Vest_v1", "U_B_CombatUniform_Salamandra_Winter_Vest_v1", "U_B_CombatUniform_Anaconda_Winter_Vest_v1", "U_B_CombatUniform_Quetzal_Winter_Vest_v1"];
_winterV2Uniforms = ["U_B_CombatUniform_Winter_v2", "U_B_CombatUniform_FCLA_Winter_v2", "U_B_CombatUniform_Takana_Winter_v2", "U_B_CombatUniform_Jaguar_Winter_v2", "U_B_CombatUniform_Condor_Winter_v2", "U_B_CombatUniform_Salamandra_Winter_v2", "U_B_CombatUniform_Anaconda_Winter_v2", "U_B_CombatUniform_Quetzal_Winter_v2"];
_reconWinterV2Uniforms = ["U_B_CombatUniform_Winter_Vest_v2", "U_B_CombatUniform_FCLA_Winter_Vest_v2", "U_B_CombatUniform_Takana_Winter_Vest_v2", "U_B_CombatUniform_Jaguar_Winter_Vest_v2", "U_B_CombatUniform_Condor_Winter_Vest_v2", "U_B_CombatUniform_Salamandra_Winter_Vest_v2", "U_B_CombatUniform_Anaconda_Winter_Vest_v2", "U_B_CombatUniform_Quetzal_Winter_Vest_v2"];
_winterV3Uniforms = ["U_B_CombatUniform_Winter_v3", "U_B_CombatUniform_FCLA_Winter_v3", "U_B_CombatUniform_Takana_Winter_v3", "U_B_CombatUniform_Jaguar_Winter_v3", "U_B_CombatUniform_Condor_Winter_v3", "U_B_CombatUniform_Salamandra_Winter_v3", "U_B_CombatUniform_Anaconda_Winter_v3", "U_B_CombatUniform_Quetzal_Winter_v3"];
_reconWinterV3Uniforms = ["U_B_CombatUniform_Winter_Vest_v3", "U_B_CombatUniform_FCLA_Winter_Vest_v3", "U_B_CombatUniform_Takana_Winter_Vest_v3", "U_B_CombatUniform_Jaguar_Winter_Vest_v3", "U_B_CombatUniform_Condor_Winter_Vest_v3", "U_B_CombatUniform_Salamandra_Winter_Vest_v3", "U_B_CombatUniform_Anaconda_Winter_Vest_v3", "U_B_CombatUniform_Quetzal_Winter_Vest_v3"];
_marineUniforms = ["U_B_CombatUniform_Marine_v1", "U_B_CombatUniform_FCLA_Marine_v1", "U_B_CombatUniform_Takana_Marine_v1", "U_B_CombatUniform_Jaguar_Marine_v1", "U_B_CombatUniform_Condor_Marine_v1", "U_B_CombatUniform_Salamandra_Marine_v1", "U_B_CombatUniform_Anaconda_Marine_v1", "U_B_CombatUniform_Quetzal_Marine_v1"];
_reconMarineUniforms = ["U_B_CombatUniform_Marine_Vest_v1", "U_B_CombatUniform_FCLA_Marine_Vest_v1", "U_B_CombatUniform_Takana_Marine_Vest_v1", "U_B_CombatUniform_Jaguar_Marine_Vest_v1", "U_B_CombatUniform_Condor_Marine_Vest_v1", "U_B_CombatUniform_Salamandra_Marine_Vest_v1", "U_B_CombatUniform_Anaconda_Marine_Vest_v1", "U_B_CombatUniform_Quetzal_Marine_Vest_v1"];
_helicopterPilotsUniforms = ["U_B_HeliPilotCoveralls", "U_B_HeliPilotCoveralls_FCLA", "U_B_HeliPilotCoveralls_Quetzal"];


//Obtener uniforme con insignia.
_uniformWithInsignia = switch (true) do {
	case (_currentUniform in _helicopterPilotsUniforms): {"U_B_HeliPilotCoveralls_" + _platoon;};
	case (_currentUniform in _MTPUniforms): {"U_B_CombatUniform_" + _platoon + "_mcam";};
	case (_currentUniform in _reconMTPUniforms): {"U_B_CombatUniform_" + _platoon + "_mcam_Vest";};
	case (_currentUniform in _tropicalUniforms): {"U_B_CombatUniform_" + _platoon + "_Tropical";};
	case (_currentUniform in _reconTropicalUniforms): {"U_B_CombatUniform_" + _platoon + "_Tropical_Vest";};
	case (_currentUniform in _digitalUniforms): {"U_B_CombatUniform_" + _platoon + "_Digital";};
	case (_currentUniform in _reconDigitalUniforms): {"U_B_CombatUniform_" + _platoon + "_Digital_Vest";};
	case (_currentUniform in _urbanV1Uniforms): {"U_B_CombatUniform_" + _platoon + "_Urban_v1";};
	case (_currentUniform in _reconUrbanV1Uniforms): {"U_B_CombatUniform_" + _platoon + "_Urban_Vest_v1";};
	case (_currentUniform in _urbanV2Uniforms): {"U_B_CombatUniform_" + _platoon + "_Urban_v2";};
	case (_currentUniform in _reconUrbanV2Uniforms): {"U_B_CombatUniform_" + _platoon + "_Urban_Vest_v2";};
	case (_currentUniform in _winterV1Uniforms): {"U_B_CombatUniform_" + _platoon + "_Winter_v1";};
  case (_currentUniform in _reconWinterV1Uniforms): {"U_B_CombatUniform_" + _platoon + "_Winter_Vest_v1";};
  case (_currentUniform in _winterV2Uniforms): {"U_B_CombatUniform_" + _platoon + "_Winter_v2";};
  case (_currentUniform in _reconWinterV2Uniforms): {"U_B_CombatUniform_" + _platoon + "_Winter_Vest_v2";};
  case (_currentUniform in _winterV3Uniforms): {"U_B_CombatUniform_" + _platoon + "_Winter_v3";};
  case (_currentUniform in _reconWinterV3Uniforms): {"U_B_CombatUniform_" + _platoon + "_Winter_Vest_v3";};
  case (_currentUniform in _marineUniforms): {"U_B_CombatUniform_" + _platoon + "_Marine_v1";};
  case (_currentUniform in _reconMarineUniforms): {"U_B_CombatUniform_" + _platoon + "_Marine_Vest_v1";};
	default {"";};
};


//Colocar uniforme.
if ((_currentUniform == _uniformWithInsignia) || !(isClass (configFile >> "CfgWeapons" >> _uniformWithInsignia))) exitWith {};
removeUniform _unit;
_unit forceAddUniform _uniformWithInsignia;
{_unit addItemToUniform _x} forEach _itemsInUniform;
