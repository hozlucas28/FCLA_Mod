
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Consume la bateria de las gafas de vision nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];



//Verificar si ya se estaba consumiendo.
_isConsuming = _player getVariable ["FCLA_NVG_Battery_Activated", false];
if (_isConsuming) exitWith {};


//Comenzar consumo.
_handle = [{
  _args params ["_player", "_lastTimeUpdated"];
  _isOnMap = visibleMap;
  _inStairs = _player getVariable ["FCLA_inStairs", false];
  _isUnconscious = _player getVariable ["ACE_isUnconscious", false];
  if ((!FCLA_NVG_Require_Battery) || (!alive _player)) exitWith {[_player] call FCLA_Interactions_fnc_statementStopConsumeNVB;};
  if ((((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) || (_isOnMap) || (_inStairs) || (_isUnconscious)) exitWith {setAperture 0; "FCLA_NVG_Battery_Overlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, false];};

  _battery = _player getVariable ["FCLA_NVG_Battery", FCLA_NVG_Initial_Battery];
  switch (true) do {
    case ((_battery <= 100) && (_battery >= 80)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_100", "PLAIN", -1, false];};
    case ((_battery <= 80) && (_battery >= 60)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_80", "PLAIN", -1, false];};
    case ((_battery <= 60) && (_battery >= 40)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_60", "PLAIN", -1, false];};
    case ((_battery <= 40) && (_battery >= 20)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_40", "PLAIN", -1, false];};
    case ((_battery <= 20) && (_battery > 0)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_20", "PLAIN", -1, false];};
    default {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_0", "PLAIN", -1, true]; setAperture 1000000;};
  };

  _delta = (CBA_missionTime - _lastTimeUpdated);
  _batteryLifeTime = FCLA_NVG_Battery_Life_Time * 60;
  _batteryConsumed = linearConversion [0, _batteryLifeTime, _delta, 0, 100, true];
  _player setVariable ["FCLA_NVG_Battery", (_battery - _batteryConsumed) max 0];

  _args set [1, CBA_missionTime];
}, 0.1, [_player, CBA_missionTime]] call CBA_fnc_addPerFrameHandler;


//Definir variables de tipo objeto.
_player setVariable ["FCLA_NVG_Battery_Activated", true, true];
_player setVariable ["FCLA_NVG_Battery_perFrameHandler_ID", _handle, true];
