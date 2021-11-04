
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_switchBatteryNVB

Description:
    Enciende/Apaga el consumo de la batería de las gafas de visión nocturna.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_turnOn"];



if (_turnOn) then {
  _perFrameHandler = _unit getVariable ["FCLA_NVG_Battery_PerFrameHandler_ID", -1000];
  if (_perFrameHandler != -1000) exitWith {}

  _handler = [{
    (_this select 0) params ["_unit"];
    _currentBattery = _unit getVariable ["FCLA_Current_Battery_NVG", FCLA_NVG_Initial_Battery];;
    if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

    switch (true) do {
    	case ((_battery <= 100) && (_battery >= 80)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_100", "PLAIN", -1, false];};
    	case ((_battery <= 80) && (_battery >= 60)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_80", "PLAIN", -1, false];};
      case ((_battery <= 60) && (_battery >= 40)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_60", "PLAIN", -1, false];};
      case ((_battery <= 40) && (_battery >= 20)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_40", "PLAIN", -1, false];};
      case ((_battery <= 20) && (_battery > 0)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_20", "PLAIN", -1, false];};
    	default {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_0", "PLAIN", -1, true]; setAperture 1000000000000;};
    };
  }, 0.1, _unit] call CBA_fnc_addPerFrameHandler;
  _unit setVariable ["FCLA_NVG_Battery_PerFrameHandler_ID", _handler, true];
} else {
  _perFrameHandler = _unit getVariable ["FCLA_NVG_Battery_PerFrameHandler_ID", -1000];
  if (_perFrameHandler == -1000) exitWith {}

  setAperture -1;
  if ("FCLA_NVG_Battery_Overlay" in allCutLayers) then {"FCLA_NVG_Battery_Overlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, true];};
  [_perFrameHandler] call CBA_fnc_removePerFrameHandler;
  _unit setVariable ["FCLA_NVG_Battery_PerFrameHandler_ID", nil, true];
};
