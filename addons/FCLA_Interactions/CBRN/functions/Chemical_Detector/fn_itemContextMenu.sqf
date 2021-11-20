
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea acciones contextuales para encender/apagar, subir/bajar el volumen y
 * equiparse el detector químico sin tener el DLC Contact.
 *
 * Public: [No]
---------------------------------------------------------------------------- */



/* ------------------------------- ENCENDER -------------------------------- */

_conditionToEnable = {
  params ["_unit", "_container", "_item"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionTurnOnChemicalDetectorCBRN;
};

_conditionToShow = {
  params ["_unit", "_container", "_item"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionTurnOnChemicalDetectorCBRN;
};

_Statement = {
  params ["_player", "_container", "_item"];
  [_player, _item] spawn FCLA_Interactions_fnc_statementTurnOnChemicalDetectorCBRN;
};

["##Watch", "ASSIGNED_ITEM", "Encender", [], "\FCLA_Interactions\CBRN\data\Switch.paa", [_conditionToEnable, _conditionToShow], _Statement, false, []] call CBA_fnc_addItemContextMenuOption;


/* -------------------------------- APAGAR --------------------------------- */

_conditionToEnable = {
  params ["_unit", "_container", "_item"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionTurnOffChemicalDetectorCBRN;
};

_conditionToShow = {
  params ["_unit", "_container", "_item"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionTurnOffChemicalDetectorCBRN;
};

_Statement = {
  params ["_player", "_container"];
  [_player] spawn FCLA_Interactions_fnc_statementTurnOffChemicalDetectorCBRN;
};

["##Watch", "ASSIGNED_ITEM", "Apagar", [], "\FCLA_Interactions\CBRN\data\Switch.paa", [_conditionToEnable, _conditionToShow], _Statement, false, []] call CBA_fnc_addItemContextMenuOption;


/* ----------------------------- SUBIR VOLUMEN ----------------------------- */

_conditionToEnable = {
  params ["_unit", "_container", "_item"];
  _isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
  _currentVolume = _unit getVariable ["FCLA_Chemical_Detector_Volume", 2];
  _isActivated = _unit getVariable ["FCLA_Chemical_Detector_Activated", false];
  _isCompatible = _item in FCLA_CBRN_Compatible_Chemical_Detectors;
  _isNotSwimming = !([_unit] call ACE_Common_fnc_isSwimming);
  (FCLA_CBRN) && (_isPlayer) && (_currentVolume < 5) && (_isActivated) && (_isCompatible) && (_isNotSwimming);
};

_conditionToShow = {
  params ["_unit", "_container", "_item"];
  _isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
  _currentVolume = _unit getVariable ["FCLA_Chemical_Detector_Volume", 2];
  _isActivated = _unit getVariable ["FCLA_Chemical_Detector_Activated", false];
  _isCompatible = _item in FCLA_CBRN_Compatible_Chemical_Detectors;
  _isNotSwimming = !([_unit] call ACE_Common_fnc_isSwimming);
  (FCLA_CBRN) && (_isPlayer) && (_currentVolume <= 5) && (_isActivated) && (_isCompatible) && (_isNotSwimming);
};

_Statement = {
  params ["_player", "_container", "_item"];
  _currentVolume = _player getVariable ["FCLA_Chemical_Detector_Volume", 0];
  _player setVariable ["FCLA_Chemical_Detector_Volume", (_currentVolume + 1), true];
};

["##Watch", "ASSIGNED_ITEM", "Volumen ( + )", [], "\FCLA_Interactions\CBRN\data\Turn_Up_Volume.paa", [_conditionToEnable, _conditionToShow], _Statement, false, []] call CBA_fnc_addItemContextMenuOption;


/* ----------------------------- BAJAR VOLUMEN ----------------------------- */

_conditionToEnable = {
  params ["_unit", "_container", "_item"];
  _isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
  _currentVolume = _unit getVariable ["FCLA_Chemical_Detector_Volume", 2];
  _isActivated = _unit getVariable ["FCLA_Chemical_Detector_Activated", false];
  _isCompatible = _item in FCLA_CBRN_Compatible_Chemical_Detectors;
  _isNotSwimming = !([_unit] call ACE_Common_fnc_isSwimming);
  (FCLA_CBRN) && (_isPlayer) && (_currentVolume > 0) && (_isActivated) && (_isCompatible) && (_isNotSwimming);
};

_conditionToShow = {
  params ["_unit", "_container", "_item"];
  _isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
  _currentVolume = _unit getVariable ["FCLA_Chemical_Detector_Volume", 2];
  _isActivated = _unit getVariable ["FCLA_Chemical_Detector_Activated", false];
  _isCompatible = _item in FCLA_CBRN_Compatible_Chemical_Detectors;
  _isNotSwimming = !([_unit] call ACE_Common_fnc_isSwimming);
  (FCLA_CBRN) && (_isPlayer) && (_currentVolume >= 0) && (_isActivated) && (_isCompatible) && (_isNotSwimming);
};

_Statement = {
  params ["_player", "_container", "_item"];
  _currentVolume = _player getVariable ["FCLA_Chemical_Detector_Volume", 0];
  _player setVariable ["FCLA_Chemical_Detector_Volume", (_currentVolume - 1), true];
};

["##Watch", "ASSIGNED_ITEM", "Volumen ( - )", [], "\FCLA_Interactions\CBRN\data\Turn_Down_Volume.paa", [_conditionToEnable, _conditionToShow], _Statement, false, []] call CBA_fnc_addItemContextMenuOption;



/* -------------------------------- EQUIPAR -------------------------------- */

if (["Contact"] call FCLA_Common_fnc_isDLCOwned) exitWith {};

_conditionToEnable = {
  params ["_unit", "_container", "_item"];
  _isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
  _itemInWatchSlot = ((getUnitLoadout _unit) select 9) select 4;
  (FCLA_CBRN) && (_isPlayer) && (_itemInWatchSlot != _item);
};

_conditionToShow = {
  params ["_unit", "_container", "_item"];
  _isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
  _itemInWatchSlot = ((getUnitLoadout _unit) select 9) select 4;
  (FCLA_CBRN) && (_isPlayer) && (_itemInWatchSlot != _item);
};

_Statement = {
  params ["_player", "_container", "_item"];
  _player linkItem _item;
  [_player, ((getUnitLoadout _player) select 9) select 4, true] call CBA_fnc_addItem;
  playSound (selectRandom ["FCLA_Generic_Use_1", "FCLA_Generic_Use_2", "FCLA_Generic_Use_3", "FCLA_Generic_Use_4"]);
};

["ChemicalDetector_01_watch_F", "CONTAINER", "Equipar", [], "\FCLA_Interactions\CBRN\data\Take.paa", [_conditionToEnable, _conditionToShow], _Statement, true, []] call CBA_fnc_addItemContextMenuOption;
