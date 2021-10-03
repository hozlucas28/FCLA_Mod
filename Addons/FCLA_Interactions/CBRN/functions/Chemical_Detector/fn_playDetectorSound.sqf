
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_playDetectorSoundCBRN

Description:
    Reproduce un sonido de alerta indicando el nivel de amenaza biológica
    registrada por el detector químico.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
(_this select 0) params ["_lastIteration"];
_currentUnit = call CBA_fnc_currentUnit;
_isCBRNDesactivated = isNil "FCLA_CBRN_Activated";
_currentThreatLevel = _currentUnit getVariable ["FCLA_CBRN_Current_Threat_Level", 0];
if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};
if (_isCBRNDesactivated) exitWith {[_currentUnit] spawn FCLA_Interactions_fnc_turnOffDetectorCBRN;};



//Modificar variable "_lastIteration".
_time = CBA_missionTime;
_delta = _time - _lastIteration;
(_this select 0) set [0, _time];
if (_currentThreatLevel < 0.25) exitWith {};


//Reproducir sonido.
_soundDelay = linearConversion [0.75, 3, _currentThreatLevel, 2, 0.05, true];
_lastSoundTime = _currentUnit getVariable ["FCLA_Chemical_Detector_Last_Sound_Time", -1];
if ((_lastSoundTime + _soundDelay) <= _time) then {
  _currentDetectorVolume = _caller getVariable ["FCLA_Chemical_Detector_Current_Volume", 0];
  playSound format ["FCLA_Chemical_Detector_Alert_%1", _currentDetectorVolume];
  _currentUnit setVariable ["FCLA_Chemical_Detector_Last_Sound_Time", _time, true];
};
