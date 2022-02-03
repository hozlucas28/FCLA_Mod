
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Enciende el detector quimico.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player", "_item"];
_player setVariable ["FCLA_Chemical_Detector_Activated", true, true];



//Mostrar interfaz.
[{
  _args params ["_player", "_item", "_lastTimeUpdated"];
  _compatibleChemicalDetectors = if (isNil "FCLA_CBRN_Compatible_Chemical_Detectors") then {["ChemicalDetector_01_watch_F", "tf_microdagr"];} else {FCLA_CBRN_Compatible_Chemical_Detectors;};
  _isSwimming = [_player] call ACE_Common_fnc_isSwimming;
  _isNotAlive = !alive _player;
  _isDesactivated = !(_player getVariable ["FCLA_Chemical_Detector_Activated", false]);
  _isNotCompatible = !(_item in _compatibleChemicalDetectors);
  if ((_isSwimming) || (_isNotAlive) || (_isDesactivated) || (_isNotCompatible)) exitWith {
    [_player] spawn FCLA_Interactions_fnc_statementTurnOffChemicalDetectorCBRN;
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

  _angleOfNeedle = 87;
  _contaminatedAreas = _player getVariable ["FCLA_Contaminated_Areas", []];
  if (_contaminatedAreas isNotEqualTo []) then {
    _moduleOfContaminatedArea = _contaminatedAreas select ((count _contaminatedAreas) - 1);
    _contaminationRadius = _moduleOfContaminatedArea getVariable ["FCLA_Contamination_Radius", 0];
    _angleOfNeedle = linearConversion [_contaminationRadius, 0, _player distance _moduleOfContaminatedArea, 87, -87, true];
  };

  if (isNil {_player getVariable "FCLA_CBRN_Chemical_Detector_Ctrls"}) then {
    _ctrlColorPalette = (findDisplay 46) ctrlCreate ["RscPicture", 753];
    _ctrlColorPalette ctrlCommit 0;
    _ctrlColorPalette ctrlSetText "\FCLA_Interactions\CBRN\data\Detector\Color_Palette.paa";
    _ctrlColorPalette ctrlSetPosition [0.5 - ((256 * pixelW) / 2),safeZoneY,256 * pixelW, 256 * pixelH];
    _ctrlColorPalette ctrlSetTextColor [1, 1, 1, 1];
    _ctrlColorPalette ctrlSetBackgroundColor [1, 1, 1, 0.5];

    _ctrlNeedle = (findDisplay 46) ctrlCreate ["RscPicture", 755];
    _ctrlNeedle ctrlCommit 0;
    _ctrlNeedle ctrlSetText "\FCLA_Interactions\CBRN\data\Detector\Needle.paa";
    _ctrlNeedle ctrlSetPosition [0.5 - ((256 * pixelW) / 2), safeZoneY - ((256 * pixelH) / 2), 256 * pixelW, 256 * pixelH];
    _ctrlNeedle ctrlSetTextColor [1, 1, 1, 1];
    _ctrlNeedle ctrlSetBackgroundColor [1, 1, 1, 1];

    _ctrlBackground = (findDisplay 46) ctrlCreate ["RscPicture", 755];
    _ctrlBackground ctrlCommit 0;
    _ctrlBackground ctrlSetText "\FCLA_Interactions\CBRN\data\Detector\Background.paa";
    _ctrlBackground ctrlSetPosition [0.5 - ((256 * pixelW) / 2),safeZoneY,256 * pixelW, 256 * pixelH];
    _ctrlBackground ctrlSetTextColor [1, 1, 1, 1];
    _ctrlBackground ctrlSetBackgroundColor [1, 1, 1, 1];
    _player setVariable ["FCLA_CBRN_Chemical_Detector_Ctrls", [_ctrlColorPalette, _ctrlNeedle, _ctrlBackground]];
  };

  _ctrls = _player getVariable ["FCLA_CBRN_Chemical_Detector_Ctrls", [controlNull, controlNull, controlNull]];
  _ctrlColorPalette = _ctrls select 0;
  _ctrlNeedle = _ctrls select 1;
  _ctrlBackground = _ctrls select 2;

  _controlledUnit = call CBA_fnc_currentUnit;
  _inUAV = ([_player] call ACE_Common_fnc_getUavControlPosition) != "";
  _isOnMap = visibleMap;
  _inStairs = _player getVariable ["FCLA_inStairs", false];
  _inCameraMode = _player in (call ACE_Spectator_fnc_players);
  _isUnconscious = _player getVariable ["ACE_isUnconscious", false];
  _isNotControlledUnit = _player != _controlledUnit;
  if ((_inUAV) || (_isOnMap) || (_inStairs) || (_inCameraMode) || (_isUnconscious) || (_isNotControlledUnit)) exitWith {
    _ctrlColorPalette ctrlShow false;
    _ctrlNeedle ctrlShow false;
    _ctrlBackground ctrlShow false;
    _args set [2, CBA_missionTime];
  };

  _delta = CBA_missionTime - _lastTimeUpdated;
  _ambientBrightness = ([] call ACE_common_fnc_ambientBrightness) max 0.15;
  _ctrlColorPalette ctrlSetTextColor [_ambientBrightness, _ambientBrightness, _ambientBrightness, 1];
  _ctrlNeedle ctrlSetTextColor [_ambientBrightness, _ambientBrightness, _ambientBrightness, 1];
  _ctrlBackground ctrlSetTextColor [_ambientBrightness, _ambientBrightness, _ambientBrightness, 1];
  _ctrlColorPalette ctrlCommit _delta;
  _ctrlNeedle ctrlCommit _delta;
  _ctrlBackground ctrlCommit _delta;
  _ctrlColorPalette ctrlShow true;
  _ctrlNeedle ctrlShow true;
  _ctrlBackground ctrlShow true;
  _ctrlNeedle ctrlSetAngle [_angleOfNeedle, 0.5, 0.5, true];

  _args set [2, CBA_missionTime];
}, 0.1, [_player, _item, CBA_missionTime]] call CBA_fnc_addPerFrameHandler;



//Reproducir sonido.
[{
  _args params ["_player", "_item", "_lastTimeUpdated"];
  _compatibleChemicalDetectors = if (isNil "FCLA_CBRN_Compatible_Chemical_Detectors") then {["ChemicalDetector_01_watch_F", "tf_microdagr"];} else {FCLA_CBRN_Compatible_Chemical_Detectors;};
  _controlledUnit = call CBA_fnc_currentUnit;
  _inCurator = !isNull findDisplay 312;
  _isSwimming = [_player] call ACE_Common_fnc_isSwimming;
  _inCameraMode = _player in (call ACE_Spectator_fnc_players);
  _isDesactivated = !(_player getVariable ["FCLA_Chemical_Detector_Activated", false]);
  _isNotCompatible = !(_item in _compatibleChemicalDetectors);
  _isNotControlledUnit = _player != _controlledUnit;
  if ((_isSwimming) || (_isDesactivated) || (_isNotCompatible)) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
  if ((((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) || (_inCurator) || (_inCameraMode) || (_isNotControlledUnit)) exitWith {_args set [2, CBA_missionTime];};

  _angleOfNeedle = 87;
  _contaminatedAreas = _player getVariable ["FCLA_Contaminated_Areas", []];
  if (_contaminatedAreas isNotEqualTo []) then {
    _moduleOfContaminatedArea = _contaminatedAreas select ((count _contaminatedAreas) - 1);
    _contaminationRadius = _moduleOfContaminatedArea getVariable ["FCLA_Contamination_Radius", 0];
    _angleOfNeedle = linearConversion [_contaminationRadius, 0, _player distance _moduleOfContaminatedArea, 87, -87, true];
  };
  if (_angleOfNeedle >= 87) exitWith {};

  _time = CBA_missionTime;
  _soundDelay = linearConversion [87, -87, _angleOfNeedle, 2, 0.05, true];
  if ((_lastTimeUpdated + _soundDelay) <= _time) then {
    _currentVolume = _player getVariable ["FCLA_Chemical_Detector_Volume", 2];
    playSound format ["FCLA_Chemical_Detector_Alert_%1", _currentVolume];
    _args set [2, CBA_missionTime];
  };
}, 0.1, [_player, _item, CBA_missionTime]] call CBA_fnc_addPerFrameHandler;
