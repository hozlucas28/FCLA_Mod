
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_updateVehTypeVD

Public: [No]
---------------------------------------------------------------------------- */

FCLA_VD_inUAV = if ((call FCLA_Video_Settings_fnc_UAVstatusVD) isEqualTo 0) then {false} else {true};

if (FCLA_VD_inUAV) then {
	switch (true) do {
		case (getConnectedUAV player isKindOf "LandVehicle" || getConnectedUAV player isKindOf "Ship"): {FCLA_VD_vehType = 1;};
		case (getConnectedUAV player isKindOf "Man"): {FCLA_VD_vehType = 0;};
		default {FCLA_VD_vehType = 2;};
	};
} else {
	switch (true) do {
		case (vehicle player isKindOf "LandVehicle" || vehicle player isKindOf "Ship"): {FCLA_VD_vehType = 1;};
		case (vehicle player isKindOf "Air"): {FCLA_VD_vehType = 2;};
		default {FCLA_VD_vehType = 0;};
	};
};
