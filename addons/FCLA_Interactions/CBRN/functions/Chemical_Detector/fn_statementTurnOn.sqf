
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Enciende el detector químico.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player", "_item"];
_player setVariable ["FCLA_Chemical_Detector_Activated", true, true];



//Mostrar interfaz.
_perFrameHandlerOne = [{
  _args params ["_player", "_item", "_lastTimeUpdated"];
  _compatibleChemicalDetectors = missionNamespace getVariable ["FCLA_CBRN_Compatible_Chemical_Detectors", ["ChemicalDetector_01_watch_F", "tf_microdagr"]];
  _isSwimming = [_player] call ACE_Common_fnc_isSwimming;
  _isNotAlive = !alive _player;
  _isDesactivated = !(_player getVariable ["FCLA_Chemical_Detector_Activated", false]);
  _isNotCompatible = !(_item in _compatibleChemicalDetectors);
  if ((_isSwimming) || (_isNotAlive) || (_isDesactivated) || (_isNotCompatible)) exitWith {
    [_player] spawn FCLA_Interactions_fnc_statementTurnOffChemicalDetectorCBRN;
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};


  _max = 0;
  _contaminatedAreas = missionNamespace getVariable ["FCLA_CBRN_Contaminated_Areas", []];
  if ((alive _player) && (_contaminatedAreas isNotEqualTo [])) then {
    _dist = 0;
    _size = 0;
    _threatLevel = 0;
    _falloffArea = 0;

    {
      _threatLevel = _x getVariable ["FCLA_CBRN_Threat_Level", 0];
      if (_max < _threatLevel) then {
        _size = _x getVariable ["FCLA_CBRN_Threat_Size", 0];
        _dist = _player distance2D _x;
        _threatLevel = if (_dist > _size) then {linearConversion [_size + _falloffArea, _size, _dist, 0, _threatLevel];} else {_threatLevel};
        _max = _max max _threatLevel;
      };
    } forEach _contaminatedAreas;
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
  _inUAV = ([_controlledUnit] call ACE_Common_fnc_getUavControlPosition) != "";
  _isOnMap = visibleMap;
  _inStairs = _controlledUnit getVariable ["FCLA_inStairs", false];
  _inCameraMode = _controlledUnit in (call ACE_Spectator_fnc_players);
  _isUnconscious = _controlledUnit getVariable ["ACE_isUnconscious", false];
  _isNotControlledUnit = _player != _controlledUnit;
  if ((_inUAV) || (_isOnMap) || (_inStairs) || (_inCameraMode) || (_isUnconscious) || (_isNotControlledUnit)) exitWith {
    _ctrlColorPalette ctrlShow false;
    _ctrlNeedle ctrlShow false;
    _ctrlBackground ctrlShow false;
    _args set [2, CBA_missionTime];
  };

  _delta = CBA_missionTime - _lastTimeUpdated;
  _player setVariable ["FCLA_CBRN_Threat_Level", _max];

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
  _ctrlNeedle ctrlSetAngle [(linearConversion [0, 4, _max - 0.05 + (random 0.1), 90, -90, true]) mod 360, 0.5, 0.5];

  _args set [2, CBA_missionTime];
}, 0.1, [_player, _item, CBA_missionTime]] call CBA_fnc_addPerFrameHandler;



//Reproducir sonido.
_perFrameHandlerTwo = [{
  _args params ["_player", "_item", "_lastTimeUpdated"];
  _compatibleChemicalDetectors = missionNamespace getVariable ["FCLA_CBRN_Compatible_Chemical_Detectors", ["ChemicalDetector_01_watch_F", "tf_microdagr"]];
  _controlledUnit = call CBA_fnc_currentUnit;
  _inCurator = !isNull findDisplay 312;
  _isSwimming = [_player] call ACE_Common_fnc_isSwimming;
  _inCameraMode = _controlledUnit in (call ACE_Spectator_fnc_players);
  _isDesactivated = !(_player getVariable ["FCLA_Chemical_Detector_Activated", false]);
  _isNotCompatible = !(_item in _compatibleChemicalDetectors);
  _isNotControlledUnit = _player != _controlledUnit;
  if ((_isSwimming) || (_isDesactivated) || (_isNotCompatible)) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
  if ((((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) || (_inCurator) || (_inCameraMode) || (_isNotControlledUnit)) exitWith {_args set [2, CBA_missionTime];};

  _currentThreatLevel = _player getVariable ["FCLA_CBRN_Threat_Level", 0];
  if (_currentThreatLevel < 0.25) exitWith {};

  _time = CBA_missionTime;
  _soundDelay = linearConversion [0.75, 3, _currentThreatLevel, 2, 0.05, true];
  if ((_lastTimeUpdated + _soundDelay) <= _time) then {
    _currentVolume = _caller getVariable ["FCLA_Chemical_Detector_Volume", 0];
    playSound format ["FCLA_Chemical_Detector_Alert_%1", _currentVolume];
    _args set [2, CBA_missionTime];
  };
}, 0.1, [_player, _item, CBA_missionTime]] call CBA_fnc_addPerFrameHandler;
