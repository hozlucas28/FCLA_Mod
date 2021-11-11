
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca la boina ó el casco con la insignia a la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_insignia"];
_getPlatoon = [_insignia, (_insignia find "_") + 1, 100] call CBA_fnc_substring;
_platoon = if ((_getPlatoon == "Unassigned") || (_getPlatoon == "Common")) then {"FCLA"} else {_getPlatoon};
_currentHeadgear = headgear _unit;



//Listado de las boinas y cascos con insignias.
_blackBerets = ["H_Beret_FCLA_Black", "H_Beret_Takana_Black", "H_Beret_Jaguar_Black", "H_Beret_Condor_Black", "H_Beret_Salamandra_Black", "H_Beret_Anaconda_Black", "H_Beret_Quetzal_Black"];
_blueBerets = ["H_Beret_FCLA_Blue", "H_Beret_Takana_Blue", "H_Beret_Jaguar_Blue", "H_Beret_Condor_Blue", "H_Beret_Salamandra_Blue", "H_Beret_Anaconda_Blue", "H_Beret_Quetzal_Blue"];
_redBerets = ["H_Beret_FCLA_Red", "H_Beret_Takana_Red", "H_Beret_Jaguar_Red", "H_Beret_Condor_Red", "H_Beret_Salamandra_Red", "H_Beret_Anaconda_Red", "H_Beret_Quetzal_Red"];
_greenBerets = ["H_Beret_FCLA_Green", "H_Beret_Takana_Green", "H_Beret_Jaguar_Green", "H_Beret_Condor_Green", "H_Beret_Salamandra_Green", "H_Beret_Anaconda_Green", "H_Beret_Quetzal_Green"];
_improvedCommonCombatHelmets = ["H_HelmetSpecB", "H_HelmetSpecB_FCLA", "H_HelmetSpecB_Takana", "H_HelmetSpecB_Jaguar", "H_HelmetSpecB_Condor", "H_HelmetSpecB_Salamandra", "H_HelmetSpecB_Anaconda", "H_HelmetSpecB_Quetzal", "H_HelmetSpecB_Medic"];
_improvedSnakeCombatHelmets = ["H_HelmetSpecB_snakeskin", "H_HelmetSpecB_FCLA_Snake", "H_HelmetSpecB_Takana_Snake", "H_HelmetSpecB_Jaguar_Snake", "H_HelmetSpecB_Condor_Snake", "H_HelmetSpecB_Salamandra_Snake", "H_HelmetSpecB_Anaconda_Snake", "H_HelmetSpecB_Quetzal_Snake", "H_HelmetSpecB_Medic_Snake"];
_improvedTropicalCombatHelmets = ["H_HelmetB_Enh_tna_F", "H_HelmetSpecB_FCLA_Tropical", "H_HelmetSpecB_Takana_Tropical", "H_HelmetSpecB_Jaguar_Tropical", "H_HelmetSpecB_Condor_Tropical", "H_HelmetSpecB_Salamandra_Tropical", "H_HelmetSpecB_Anaconda_Tropical", "H_HelmetSpecB_Quetzal_Tropical", "H_HelmetSpecB_Medic_Tropical"];
_improvedDigitalCombatHelmets = ["H_HelmetSpecB_Digital", "H_HelmetSpecB_FCLA_Digital", "H_HelmetSpecB_Takana_Digital", "H_HelmetSpecB_Jaguar_Digital", "H_HelmetSpecB_Condor_Digital", "H_HelmetSpecB_Salamandra_Digital", "H_HelmetSpecB_Anaconda_Digital", "H_HelmetSpecB_Quetzal_Digital", "H_HelmetSpecB_Medic_Digital"];
_improvedUrbanV2CombatHelmets = ["H_HelmetSpecB_Urban_v2", "H_HelmetSpecB_FCLA_Urban_v2", "H_HelmetSpecB_Takana_Urban_v2", "H_HelmetSpecB_Jaguar_Urban_v2", "H_HelmetSpecB_Condor_Urban_v2", "H_HelmetSpecB_Salamandra_Urban_v2", "H_HelmetSpecB_Anaconda_Urban_v2", "H_HelmetSpecB_Quetzal_Urban_v2", "H_HelmetSpecB_Medic_Urban_v2"];
_improvedWinterV2CombatHelmets = ["H_HelmetSpecB_Winter_v2", "H_HelmetSpecB_FCLA_Winter_v2", "H_HelmetSpecB_Takana_Winter_v2", "H_HelmetSpecB_Jaguar_Winter_v2", "H_HelmetSpecB_Condor_Winter_v2", "H_HelmetSpecB_Salamandra_Winter_v2", "H_HelmetSpecB_Anaconda_Winter_v2", "H_HelmetSpecB_Quetzal_Winter_v2", "H_HelmetSpecB_Medic_Winter_v2"];
_helicopterPilotHelmets = ["H_PilotHelmetHeli_B", "H_PilotHelmetHeli_B_Quetzal"];
_helicopterCrewHelmets = ["H_CrewHelmetHeli_B", "H_CrewHelmetHeli_B_Quetzal"];


//Obtener boina ó casco con la insignia.
_headgearWithInsignia = switch (true) do {
	case (_currentHeadgear in _blackBerets): {"H_Beret_" + _platoon + "_Black";};
	case (_currentHeadgear in _blueBerets): {"H_Beret_" + _platoon + "_Blue";};
	case (_currentHeadgear in _redBerets): {"H_Beret_" + _platoon + "_Green";};
	case (_currentHeadgear in _greenBerets): {"H_Beret_" + _platoon + "_Red";};
	case (_currentHeadgear in _improvedCommonCombatHelmets): {"H_HelmetSpecB_" + _platoon;};
	case (_currentHeadgear in _improvedSnakeCombatHelmets): {"H_HelmetSpecB_" + _platoon + "_Snake";};
	case (_currentHeadgear in _improvedTropicalCombatHelmets): {"H_HelmetSpecB_" + _platoon + "_Tropical";};
	case (_currentHeadgear in _improvedDigitalCombatHelmets): {"H_HelmetSpecB_" + _platoon + "_Digital";};
	case (_currentHeadgear in _improvedUrbanV2CombatHelmets): {"H_HelmetSpecB_" + _platoon + "_Urban_v2";};
	case (_currentHeadgear in _improvedWinterV2CombatHelmets): {"H_HelmetSpecB_" + _platoon + "_Winter_v2";};
	case (_currentHeadgear in _helicopterPilotHelmets): {"H_PilotHelmetHeli_B_" + _platoon;};
	case (_currentHeadgear in _helicopterCrewHelmets): {"H_CrewHelmetHeli_B_" + _platoon;};
	default {"";};
};


//Colocar casco.
if (!(isClass (configFile >> "CfgWeapons" >> _headgearWithInsignia))) exitWith {};
removeHeadgear _unit;
_unit addHeadgear _headgearWithInsignia;
