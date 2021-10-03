
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_addItemContextMenuToChemicalDetectorCBRN

Description:
    Crea cinco acciones del tipo "addItemContextMenuOption" para poder equiparse
    el detector químico sin tener el DLC Contact y encender/apagar ó subir/bajar
    el volúmen del detector.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */


/* -------------------------------- EQUIPAR -------------------------------- */

_notOwnedDLC = !(["Contact"] call FCLA_Development_fnc_isDLCOwned);
if (_notOwnedDLC) then {
  _conditionToEnable = {
    params ["_caller", "_container", "_item", "_slot", "_params"];
    !(isNil "FCLA_CBRN_Activated");
  };

  _conditionToShow = {
    params ["_caller", "_container", "_item", "_slot", "_params"];
    !(isNil "FCLA_CBRN_Activated");
  };

  _statement = {
    params ["_caller", "_container", "_item", "_slot", "_params"];
    _itemInWatchSlot = ((getUnitLoadout _caller) select 9) select 4;
    _randomSound = selectRandom ["FCLA_Generic_Take_1", "FCLA_Generic_Take_2", "FCLA_Generic_Take_3", "FCLA_Generic_Take_4"];
    playSound _randomSound;
    [_caller, _itemInWatchSlot, true] call CBA_fnc_addItem;
    _caller linkItem _item;
  };
  ["ChemicalDetector_01_watch_F", "CONTAINER", "Equipar", [], "", [_conditionToEnable, _conditionToShow], _statement, true] call CBA_fnc_addItemContextMenuOption;
};


/* ------------------------------- ENCENDER -------------------------------- */

_conditionToEnable = {
  params ["_caller", "_container", "_item", "_slot"];

  _isCompatible = _item in FCLA_Chemical_Detectors;
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isChemicalDetectorDesactivated = !(_caller getVariable ["FCLA_Chemical_Detector_Activated", false]);
  (_isCompatible) && (_isNotSwimming) && (_isCBRNActivated) && !(_isChemicalDetectorDesactivated);
};

_conditionToShow = {
  params ["_caller", "_container", "_item", "_slot"];

  _isCompatible = _item in FCLA_Chemical_Detectors;
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isChemicalDetectorDesactivated = !(_caller getVariable ["FCLA_Chemical_Detector_Activated", false]);
  (_isCompatible) && (_isNotSwimming) && (_isCBRNActivated) && !(_isChemicalDetectorDesactivated);
};

_statement = {
  params ["_caller", "_container", "_item", "_slot"];
  _handlerOne = [FCLA_Interactions_fnc_showDetectorCBRN, 0.5, [CBA_missionTime]] call CBA_fnc_addPerFrameHandler;
  _handlerTwo = [FCLA_Interactions_fnc_playDetectorSoundCBRN, 0.5, [CBA_missionTime]] call CBA_fnc_addPerFrameHandler;
  _caller setVariable ["FCLA_Chemical_Detector_Activated", true, true];
  _caller setVariable ["FCLA_Chemical_Detector_perFrameHandlers_IDs", [_handlerOne, _handlerTwo], true];
};

["#All", ["CONTAINER", "ASSIGNED_ITEM"], "Activar sonido", [], "", [_conditionToEnable, _conditionToShow], _statement, false] call CBA_fnc_addItemContextMenuOption;


/* -------------------------------- APAGAR --------------------------------- */

_conditionToEnable = {
  params ["_caller", "_container", "_item", "_slot"];

  _isCompatible = _item in FCLA_Chemical_Detectors;
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isChemicalDetectorActivated = _caller getVariable ["FCLA_Chemical_Detector_Activated", false];
  (_isCompatible) && (_isNotSwimming) && (_isCBRNActivated) && (_isChemicalDetectorActivated);
};

_conditionToShow = {
  params ["_caller", "_container", "_item", "_slot"];

  _isCompatible = _item in FCLA_Chemical_Detectors;
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _isChemicalDetectorActivated = _caller getVariable ["FCLA_Chemical_Detector_Activated", false];
  (_isCompatible) && (_isNotSwimming) && (_isCBRNActivated) && (_isChemicalDetectorActivated);
};

_statement = {
  params ["_caller", "_container", "_item", "_slot"];
  [_caller] spawn FCLA_Interactions_fnc_turnOffDetectorCBRN;
};

["#All", ["CONTAINER", "ASSIGNED_ITEM"], "Desactivar sonido", [], "", [_conditionToEnable, _conditionToShow], _statement, false] call CBA_fnc_addItemContextMenuOption;


/* ----------------------------- SUBIR VOLUMEN ----------------------------- */

_conditionToEnable = {
  params ["_caller", "_container", "_item", "_slot"];

  _isCompatible = _item in FCLA_Chemical_Detectors;
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _currentDetectorVolume = _caller getVariable ["FCLA_Chemical_Detector_Current_Volume", 2];
  _isDetectorSoundActivated = _caller getVariable ["FCLA_Chemical_Detector_Activated", false];
  (_isCompatible) && (_isNotSwimming) && (_isCBRNActivated) && (_currentDetectorVolume < 5) && (_isDetectorSoundActivated);
};

_conditionToShow = {
  params ["_caller", "_container", "_item", "_slot"];

  _isCompatible = _item in FCLA_Chemical_Detectors;
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _currentDetectorVolume = _caller getVariable ["FCLA_Chemical_Detector_Current_Volume", 2];
  _isDetectorSoundActivated = _caller getVariable ["FCLA_Chemical_Detector_Activated", false];
  (_isCompatible) && (_isNotSwimming) && (_isCBRNActivated) && (_currentDetectorVolume < 5) && (_isDetectorSoundActivated);
};

_statement = {
  params ["_caller", "_container", "_item", "_slot"];
  _currentDetectorVolume = _caller getVariable ["FCLA_Chemical_Detector_Current_Volume", 0];
  _caller setVariable ["FCLA_Chemical_Detector_Current_Volume", (_currentDetectorVolume + 1), true];
};

["#All", ["CONTAINER", "ASSIGNED_ITEM"], "Volumen (+)", [], "", [_conditionToEnable, _conditionToShow], _statement, false] call CBA_fnc_addItemContextMenuOption;


/* ----------------------------- BAJAR VOLUMEN ----------------------------- */

_conditionToEnable = {
  params ["_caller", "_container", "_item", "_slot"];

  _isCompatible = _item in FCLA_Chemical_Detectors;
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _currentDetectorVolume = _caller getVariable ["FCLA_Chemical_Detector_Current_Volume", 2];
  _isDetectorSoundActivated = _caller getVariable ["FCLA_Chemical_Detector_Activated", false];
  (_isCompatible) && (_isNotSwimming) && (_isCBRNActivated) && (_currentDetectorVolume > 0) && (_isDetectorSoundActivated);
};

_conditionToShow = {
  params ["_caller", "_container", "_item", "_slot"];

  _isCompatible = _item in FCLA_Chemical_Detectors;
  _isNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming);
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _currentDetectorVolume = _caller getVariable ["FCLA_Chemical_Detector_Current_Volume", 2];
  _isDetectorSoundActivated = _caller getVariable ["FCLA_Chemical_Detector_Activated", false];
  (_isCompatible) && (_isNotSwimming) && (_isCBRNActivated) && (_currentDetectorVolume > 0) && (_isDetectorSoundActivated);
};

_statement = {
  params ["_caller", "_container", "_item", "_slot"];
  _currentDetectorVolume = _caller getVariable ["FCLA_Chemical_Detector_Current_Volume", 0];
  _caller setVariable ["FCLA_Chemical_Detector_Current_Volume", (_currentDetectorVolume - 1), true];
};

["#All", ["CONTAINER", "ASSIGNED_ITEM"], "Volumen (-)", [], "", [_conditionToEnable, _conditionToShow], _statement, false] call CBA_fnc_addItemContextMenuOption;
