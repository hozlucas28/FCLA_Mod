
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna un eventhandler del tipo 'addPlayerEventHandler' para desactivar el
 * ruido y la interfaz del detector químico, cuando no se encuentre en su
 * inventario. Se revisara cada vez que se modifique el inventario.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["loadout", {
  params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
  _isChemicalDetectorDesactivated = !(_unit getVariable ["FCLA_Chemical_Detector_Activated", false]);
  _haveCompatibleChemicalDetector = ({[_unit, _x] call BIS_fnc_hasItem} count FCLA_CBRN_Compatible_Chemical_Detectors) >= 1;
  if ((!FCLA_CBRN) || (_isChemicalDetectorDesactivated) || (_haveCompatibleChemicalDetector)) exitWith {};
  [_unit] spawn FCLA_Interactions_fnc_statementTurnOffChemicalDetectorCBRN;
}, false] call CBA_fnc_addPlayerEventHandler;
