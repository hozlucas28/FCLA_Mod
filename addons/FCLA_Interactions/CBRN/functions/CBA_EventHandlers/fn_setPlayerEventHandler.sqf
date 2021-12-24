
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna un controlador de evento del tipo 'addPlayerEventHandler' para
 * desactivar el ruido y la interfaz del detector químico, cuando no se
 * encuentre en su inventario. Se revisara cada vez que se modifique el
 * inventario.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["loadout", {
  params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
  _isCBRNDesactivated = !(missionNamespace getVariable ["FCLA_CBRN", false]);
  _compatibleChemicalDetectors = missionNamespace getVariable ["FCLA_CBRN_Compatible_Chemical_Detectors", ["ChemicalDetector_01_watch_F", "tf_microdagr"]];
  _isChemicalDetectorDesactivated = !(_unit getVariable ["FCLA_Chemical_Detector_Activated", false]);
  _haveCompatibleChemicalDetector = ({[_unit, _x] call BIS_fnc_hasItem} count _compatibleChemicalDetectors) >= 1;
  if ((_isCBRNDesactivated) || (_isChemicalDetectorDesactivated) || (_haveCompatibleChemicalDetector)) exitWith {};
  [_unit] spawn FCLA_Interactions_fnc_statementTurnOffChemicalDetectorCBRN;
}, false] call CBA_fnc_addPlayerEventHandler;
