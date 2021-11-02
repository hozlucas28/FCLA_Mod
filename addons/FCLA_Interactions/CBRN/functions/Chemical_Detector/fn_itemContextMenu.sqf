
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
  params ["_unit", "_container", "_item"];
  [_unit, _item] spawn FCLA_Interactions_fnc_statementTurnOnChemicalDetectorCBRN;
};

["Watch", "ASSIGNED_ITEM", "Activar sonido", [], "", [_conditionToEnable, _conditionToShow], _Statement, false, []] call CBA_fnc_addItemContextMenuOption;


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
  params ["_unit", "_container"];
  [_unit] spawn FCLA_Interactions_fnc_statementTurnOffChemicalDetectorCBRN;
};

["Watch", "ASSIGNED_ITEM", "Desactivar sonido", [], "", [_conditionToEnable, _conditionToShow], _Statement, false, []] call CBA_fnc_addItemContextMenuOption;


/* ----------------------------- SUBIR VOLUMEN ----------------------------- */

_conditionToEnable = {
  params ["_unit", "_container", "_item"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionTurnUpVolumeChemicalDetectorCBRN;
};

_conditionToShow = {
  params ["_unit", "_container", "_item"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionTurnUpVolumeChemicalDetectorCBRN;
};

_Statement = {
  params ["_unit", "_container", "_item"];
  _currentVolume = _unit getVariable ["FCLA_Chemical_Detector_Volume", 0];
  _unit setVariable ["FCLA_Chemical_Detector_Volume", (_currentVolume + 1), true];
};

["Watch", "ASSIGNED_ITEM", "Volumen (+)", [], "", [_conditionToEnable, _conditionToShow], _Statement, false, []] call CBA_fnc_addItemContextMenuOption;


/* ----------------------------- BAJAR VOLUMEN ----------------------------- */

_conditionToEnable = {
  params ["_unit", "_container", "_item"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionTurnDownVolumeChemicalDetectorCBRN;
};

_conditionToShow = {
  params ["_unit", "_container", "_item"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionTurnDownVolumeChemicalDetectorCBRN;
};

_Statement = {
  params ["_unit", "_container", "_item"];
  _currentVolume = _unit getVariable ["FCLA_Chemical_Detector_Volume", 0];
  _unit setVariable ["FCLA_Chemical_Detector_Volume", (_currentVolume - 1), true];
};

["Watch", "ASSIGNED_ITEM", "Volumen (-)", [], "", [_conditionToEnable, _conditionToShow], _Statement, false, []] call CBA_fnc_addItemContextMenuOption;



/* -------------------------------- EQUIPAR -------------------------------- */

if (["Contact"] call FCLA_Common_fnc_isDLCOwned) exitWith {};

_conditionToEnable = {
  params ["_unit", "_container", "_item"];
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _itemInWatchSlot = ((getUnitLoadout _unit) select 9) select 4;
  (_isCBRNActivated) && (_itemInWatchSlot != _item);
};

_conditionToShow = {
  params ["_unit", "_container", "_item"];
  _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
  _itemInWatchSlot = ((getUnitLoadout _unit) select 9) select 4;
  (_isCBRNActivated) && (_itemInWatchSlot != _item);
};

_Statement = {
  params ["_unit", "_container", "_item"];
  _unit linkItem _item;
  [_unit, ((getUnitLoadout _unit) select 9) select 4, true] call CBA_fnc_addItem;
  playSound (selectRandom ["FCLA_Generic_Use_1", "FCLA_Generic_Use_2", "FCLA_Generic_Use_3", "FCLA_Generic_Use_4"]);
};

["ChemicalDetector_01_watch_F", "CONTAINER", "Equipar", [], "", [_conditionToEnable, _conditionToShow], _Statement, true, []] call CBA_fnc_addItemContextMenuOption;
