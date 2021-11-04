
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_initNVBatteries

Description:
    Ocasiona que las visiones nocturnas requieran de bateria para funcionar
		correctamente. Ademas genera una acción ACE 3D para poder cargarlas.
		Solo funciona en jugadores.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

if !(hasInterface) exitWith {};
if !(FCLA_NVG_Require_Batteries) exitwith {};
FCLA_var_Battery_Time = FCLA_NVG_Battery_Time*60;
FCLA_var_Battery_State = FCLA_var_Battery_Time;



//Mostrar display de bateria.
addMissionEventHandler ["EachFrame", {
	_battery = FCLA_NVG_Initial_Battery;
	_connectedUAV = getConnectedUAV player;

	if (((currentVisionMode player == 1) || (currentVisionMode player == 2)) && (cameraView != "GUNNER") && (isNull findDisplay 312) && ((call CBA_fnc_currentUnit) == player) && ((isNull _connectedUAV) || !(cameraOn == _connectedUAV))) then {
		if (_battery > 75) exitWith {"NVG_Battery" cutRsc ["NVG_Battery_100", "PLAIN"];};
		if (_battery > 50) exitWith {"NVG_Battery" cutRsc ["NVG_Battery_75", "PLAIN"];};
		if (_battery > 25) exitWith {"NVG_Battery" cutRsc ["NVG_Battery_50", "PLAIN"];};
		if (_battery > 10) exitWith {"NVG_Battery" cutRsc ["NVG_Battery_25", "PLAIN"];};
		if (_battery > 0) exitWith {"NVG_Battery" cutRsc ["NVG_Battery_10", "PLAIN"];};
		"NVG_Battery" cutRsc ["NVG_Battery_0", "PLAIN"];
		if (currentVisionMode player == 1) then {
			setAperture 1000000000000;
		} else {
			0 cutFadeOut 9999999;
			cutText ["", "BLACK FADED"];
			[] spawn {
				waitUntil {currentVisionMode player != 2};
				0 cutFadeOut 1;
			};
		};
	} else {
		"NVG_Battery" cutRsc ["RscTitleDisplayEmpty", "PLAIN"];
		setAperture -1;
	};
}];



/* -------------------------------- CARGAR BATERIA -------------------------------- */





//Consumir bateria.
_NVGList = ["rhs_1PN138","rhsusf_ANPVS_14","rhsusf_ANPVS_15","H_HelmetO_ViperSP_hex_F","H_HelmetO_ViperSP_ghex_F"];
_headgearsWithNVG = ["H_HelmetO_ViperSP_hex_F","H_HelmetO_ViperSP_ghex_F"];
while {true} do {
	_visionMode = currentVisionMode player;
	_hmdPlayer = hmd player;
	_connectedUAV = getConnectedUAV player;
	if (((_hmdPlayer != "") || (headgear player in _headgearsWithNVG)) && (cameraView != "GUNNER") && (isNull findDisplay 312) && ((call CBA_fnc_currentUnit) == player) && ((isNull _connectedUAV) || !(cameraOn == _connectedUAV))) then {
		if ((FCLA_NVG_Initial_Battery > 0) && (_visionMode > 0) && ((headgear player in _headgearsWithNVG) || (_hmdPlayer in _NVGList) || ("nvg" in toLower _hmdPlayer))) then {
			if ((_visionMode == 1) || (_visionMode == 2)) then {
				FCLA_var_Battery_State = FCLA_var_Battery_State - (1*timeMultiplier);
			} else {
				FCLA_var_Battery_State = FCLA_var_Battery_State - (2*timeMultiplier);
			};
			FCLA_NVG_Initial_Battery = linearConversion [0, FCLA_var_Battery_Time, FCLA_var_Battery_State, 0, 100, true];
		};
	};
	sleep 1;
};
