
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_addonInitVD

Public: [No]
---------------------------------------------------------------------------- */

[] spawn {
	if (!hasInterface) exitWith {};
	waitUntil {time > 0};

	if (!(FCLA_View_Distance_Allowed)) exitWith {};
	waitUntil {FCLA_View_Distance_Client_Activated};

	FCLA_VD_allowNoGrass = if (isNil "FCLA_VD_allowNoGrass") then {true} else {FCLA_VD_allowNoGrass};
	FCLA_VD_maxView = if (isNil "FCLA_VD_maxView") then {12000} else {FCLA_VD_maxView};
	FCLA_VD_maxObj = if (isNil "FCLA_VD_maxObj") then {12000} else {FCLA_VD_maxObj};

	FCLA_VD_footSyncMode = profileNamespace getVariable ["FCLA_VD_footSyncMode",0];
	FCLA_VD_footSyncPercentage = profileNamespace getVariable ["FCLA_VD_footSyncPercentage",0.8];
	FCLA_VD_carSyncMode = profileNamespace getVariable ["FCLA_VD_carSyncMode",0];
	FCLA_VD_carSyncPercentage = profileNamespace getVariable ["FCLA_VD_carSyncPercentage",0.8];
	FCLA_VD_airSyncMode = profileNamespace getVariable ["FCLA_VD_airSyncMode",0];
	FCLA_VD_airSyncPercentage = profileNamespace getVariable ["FCLA_VD_airSyncPercentage",0.8];

	FCLA_VD_foot = (profileNamespace getVariable ["FCLA_VD_foot",viewDistance]) min FCLA_VD_maxView;
	FCLA_VD_car = (profileNamespace getVariable ["FCLA_VD_car",viewDistance]) min FCLA_VD_maxView;
	FCLA_VD_air = (profileNamespace getVariable ["FCLA_VD_air",viewDistance]) min FCLA_VD_maxView;

	FCLA_VD_footObj = (profileNamespace getVariable ["FCLA_VD_footObj",viewDistance]) min FCLA_VD_maxObj min FCLA_VD_maxView;
	FCLA_VD_footObj = if (FCLA_VD_footSyncMode isEqualTo 1) then {FCLA_VD_foot * FCLA_VD_footSyncPercentage} else {FCLA_VD_footObj};
	FCLA_VD_carObj = (profileNamespace getVariable ["FCLA_VD_carObj",viewDistance]) min FCLA_VD_maxObj min FCLA_VD_maxView;
	FCLA_VD_carObj = if (FCLA_VD_carSyncMode isEqualTo 1) then {FCLA_VD_car * FCLA_VD_carSyncPercentage} else {FCLA_VD_carObj};
	FCLA_VD_airObj = (profileNamespace getVariable ["FCLA_VD_airObj",viewDistance]) min FCLA_VD_maxObj min FCLA_VD_maxView;
	FCLA_VD_airObj = if (FCLA_VD_airSyncMode isEqualTo 1) then {FCLA_VD_air * FCLA_VD_airSyncPercentage} else {FCLA_VD_airObj};

	FCLA_VD_footTerrain = if (FCLA_VD_allowNoGrass) then {profileNamespace getVariable ["FCLA_VD_footTerrain",25]} else {(profileNamespace getVariable ["FCLA_VD_footTerrain",25]) min 48.99 max 3.125};
	FCLA_VD_carTerrain = if (FCLA_VD_allowNoGrass) then {profileNamespace getVariable ["FCLA_VD_carTerrain",25]} else {(profileNamespace getVariable ["FCLA_VD_carTerrain",25]) min 48.99 max 3.125};
	FCLA_VD_airTerrain = if (FCLA_VD_allowNoGrass) then {profileNamespace getVariable ["FCLA_VD_airTerrain",25]} else {(profileNamespace getVariable ["FCLA_VD_airTerrain",25]) min 48.99 max 3.125};
	FCLA_VD_vehType = 0;

	waitUntil {!isNull player};
	waitUntil {!isNull findDisplay 46};

	(findDisplay 46) displayAddEventHandler ["Unload", {call FCLA_Video_Settings_fnc_updateSettingsVD}];
	[] call FCLA_Video_Settings_fnc_updateVehTypeVD;
	[] call FCLA_Video_Settings_fnc_updateSettingsVD;

	[] spawn {
		for "_i" from 0 to 1 step 0 do {
			_currentVehicle = vehicle player;
			waitUntil {_currentVehicle != vehicle player};
			[] call FCLA_Video_Settings_fnc_updateVehTypeVD;
			if (
				(FCLA_VD_vehType isEqualTo 0 && FCLA_VD_footSyncMode isEqualTo 2) ||
				(FCLA_VD_vehType isEqualTo 1 && FCLA_VD_carSyncMode isEqualTo 2) ||
				(FCLA_VD_vehType isEqualTo 2 && FCLA_VD_airSyncMode isEqualTo 2)
			) then {
				[1] call FCLA_Video_Settings_fnc_updateSettingsVD;
				[] call FCLA_Video_Settings_fnc_updateTerrainVD;
				[4] call FCLA_Video_Settings_fnc_updateSettingsVD
			} else {
				[] call FCLA_Video_Settings_fnc_updateSettingsVD;
			};
		};
	};

	[] spawn {
		for "_i" from 0 to 1 step 0 do {
			_UAVstatus = call FCLA_Video_Settings_fnc_UAVstatusVD;
			waitUntil {_UAVstatus != call FCLA_Video_Settings_fnc_UAVstatusVD};
			[] call FCLA_Video_Settings_fnc_updateVehTypeVD;
			if (
				(FCLA_VD_vehType isEqualTo 0 && FCLA_VD_footSyncMode isEqualTo 2) ||
				(FCLA_VD_vehType isEqualTo 1 && FCLA_VD_carSyncMode isEqualTo 2) ||
				(FCLA_VD_vehType isEqualTo 2 && FCLA_VD_airSyncMode isEqualTo 2)
			) then {
				[1] call FCLA_Video_Settings_fnc_updateSettingsVD;
				[] call FCLA_Video_Settings_fnc_updateTerrainVD;
				[4] call FCLA_Video_Settings_fnc_updateSettingsVD
			} else {
				[] call FCLA_Video_Settings_fnc_updateSettingsVD;
			};
		};
	};

	[] spawn {
		for "_i" from 0 to 1 step 0 do {
			_currentZoom = call FCLA_Video_Settings_fnc_trueZoomVD;
			waitUntil {_currentZoom != call FCLA_Video_Settings_fnc_trueZoomVD};
			if (
				(FCLA_VD_vehType isEqualTo 0 && FCLA_VD_footSyncMode isEqualTo 2) ||
				(FCLA_VD_vehType isEqualTo 1 && FCLA_VD_carSyncMode isEqualTo 2) ||
				(FCLA_VD_vehType isEqualTo 2 && FCLA_VD_airSyncMode isEqualTo 2)
			) then {[4] call FCLA_Video_Settings_fnc_updateSettingsVD};
		};
	};
};
