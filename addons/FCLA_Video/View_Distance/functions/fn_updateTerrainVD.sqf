
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_updateTerrainVD

Public: [No]
---------------------------------------------------------------------------- */

switch (FCLA_VD_vehType) do {
	case 0: {setTerrainGrid FCLA_VD_footTerrain};
	case 1: {setTerrainGrid FCLA_VD_carTerrain};
	case 2: {setTerrainGrid FCLA_VD_airTerrain};
};
