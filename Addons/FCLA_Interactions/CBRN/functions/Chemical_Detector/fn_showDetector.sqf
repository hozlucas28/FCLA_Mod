
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_showDetectorCBRN

Description:
    Muestra el detector químico.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
(_this select 0) params ["_lastIteration"];
_max = 0;
_currentUnit = call CBA_fnc_currentUnit;
_contaminatedAreas = missionNamespace getVariable ["FCLA_CBRN_Contaminated_Areas", []];
_isCBRNDesactivated = isNil "FCLA_CBRN_Activated";
if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};
if (_isCBRNDesactivated) exitWith {[_currentUnit] spawn FCLA_Interactions_fnc_turnOffDetectorCBRN;};



if ((alive _currentUnit) && !(_contaminatedAreas isEqualTo [])) then {
  _dist = 0;
  _size = 0;
  _threatLevel = 0;
  _falloffArea = 0;

  {
    _threatLevel = _x getVariable ["FCLA_CBRN_Threat_Level", 0];
    if (_max < _threatLevel) then {
      _size = _x getVariable ["FCLA_CBRN_Threat_Size", 0];
      _dist = _currentUnit distance2D _x;

      _threatLevel = if (_dist > _size) then {linearConversion [_size + _falloffArea, _size, _dist, 0, _threatLevel];} else {_threatLevel};
      _max = _max max _threatLevel;
    };
  } forEach _contaminatedAreas;
};


//Modificar variable "_lastIteration".
_time = CBA_missionTime;
_delta = _time - _lastIteration;
(_this select 0) set [0, _time];
_currentUnit setVariable ["FCLA_CBRN_Current_Threat_Level", _max];


//Mostrar detector químico.
if (isNull (uiNamespace getVariable ["FCLA_CBRN_Chemical_Detector_Ctrl_Background", objNull])) then {
  _onMissionDisplay = isNull (findDisplay 46);
  if (_onMissionDisplay) exitWith {};

  _ctrl = _display ctrlCreate ["RscPicture", 755];
  _ctrl ctrlSetPosition _pos;
  _ctrl ctrlSetBackgroundColor [1, 1, 1, 1];
  _ctrl ctrlSetText "\FCLA_Interactions\CBRN\data\Detector_Background.paa";
  _ctrl ctrlSetTextColor [1, 1, 1, 1];
  _ctrl ctrlCommit 0;
  uiNamespace setVariable ["FCLA_CBRN_Chemical_Detector_Ctrl_Background", _ctrl];

  _display = findDisplay 46;
  _pos = [0.5 - ((256 * pixelW) / 2), safeZoneY, 256 * pixelW, 256 * pixelH];
  _ctrl = _display ctrlCreate ["RscPicture", 753];
  _ctrl ctrlSetPosition _pos;
  _ctrl ctrlSetBackgroundColor [1, 1, 1, 0.5];
  _ctrl ctrlSetText "\FCLA_Interactions\CBRN\data\Detector_Color_Palette.paa";
  _ctrl ctrlSetTextColor [1, 1, 1, 1];
  _ctrl ctrlCommit 0;
  uiNamespace setVariable ["FCLA_CBRN_Chemical_Detector_Ctrl_Color_Palette", _ctrl];

  _ctrl = _display ctrlCreate ["RscPicture", 755];
  _ctrl ctrlSetPosition [0.5 - ((256 * pixelW) / 2), safeZoneY - ((256 * pixelH) / 2), 256 * pixelW, 256 * pixelH];
  _ctrl ctrlSetBackgroundColor [1, 1, 1, 1];
  _ctrl ctrlSetText "\FCLA_Interactions\CBRN\data\Detector_Needle.paa";
  _ctrl ctrlSetTextColor [1, 1, 1, 1];
  _ctrl ctrlCommit 0;
  uiNamespace setVariable ["FCLA_CBRN_Chemical_Detector_Ctrl_Needle", _ctrl];
};

_ambientBrightness = ([] call ACE_common_fnc_ambientBrightness) max 0.25;
_background = uiNamespace getVariable ["FCLA_CBRN_Chemical_Detector_Ctrl_Background", ctrlNull];
_colorPalette = uiNamespace getVariable ["FCLA_CBRN_Chemical_Detector_Ctrl_Color_Palette", ctrlNull];
_needle = uiNamespace getVariable ["FCLA_CBRN_Chemical_Detector_Ctrl_Needle", ctrlNull];

_background ctrlSetTextColor [_ambientBrightness, _ambientBrightness, _ambientBrightness, 1];
_colorPalette ctrlSetTextColor [_ambientBrightness, _ambientBrightness, _ambientBrightness, 1];
_needle ctrlSetTextColor [_ambientBrightness, _ambientBrightness, _ambientBrightness, 1];
_background ctrlCommit _delta;
_colorPalette ctrlCommit _delta;
_needle ctrlCommit _delta;

_dir = (linearConversion [0, 4, _max - 0.05 + (random 0.1), 90, -90, true]) mod 360;
_needle ctrlSetAngle [_dir, 0.5, 0.5];
