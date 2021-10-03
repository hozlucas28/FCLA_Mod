
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_updateSettingsVD

Public: [No]
---------------------------------------------------------------------------- */

private ["_updateType"];
_updateType = [_this, 0, 0, [0]] call BIS_fnc_param;

switch (_updateType) do {
	case 1: {
		switch (FCLA_VD_vehType) do {
			case 0: {setViewDistance FCLA_VD_foot};
			case 1: {setViewDistance FCLA_VD_car};
			case 2: {setViewDistance FCLA_VD_air};
		};
	};
	case 2: {
		switch (FCLA_VD_vehType) do {
			case 0: {setObjectViewDistance FCLA_VD_footObj};
			case 1: {setObjectViewDistance FCLA_VD_carObj};
			case 2: {setObjectViewDistance FCLA_VD_airObj};
		};
	};
	case 4: {
		switch (FCLA_VD_vehType) do {
			case 0: {setObjectViewDistance ([FCLA_VD_footObj] call FCLA_Video_Settings_fnc_fovViewDistanceVD)};
			case 1: {setObjectViewDistance ([FCLA_VD_carObj] call FCLA_Video_Settings_fnc_fovViewDistanceVD)};
			case 2: {setObjectViewDistance ([FCLA_VD_airObj] call FCLA_Video_Settings_fnc_fovViewDistanceVD)};
		};
	};
	default {
		switch (FCLA_VD_vehType) do {
			case 0: {setViewDistance FCLA_VD_foot; setObjectViewDistance FCLA_VD_footObj};
			case 1: {setViewDistance FCLA_VD_car; setObjectViewDistance FCLA_VD_carObj};
			case 2: {setViewDistance FCLA_VD_air; setObjectViewDistance FCLA_VD_airObj};
		};
	};
};
if (_updateType isEqualTo 0) then {[] call FCLA_Video_Settings_fnc_updateTerrainVD;};
