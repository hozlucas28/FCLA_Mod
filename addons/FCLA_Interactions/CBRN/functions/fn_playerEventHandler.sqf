
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 * 
 * Description:
 * Asigna un eventhandler del tipo 'addPlayerEventHandler' para desactivar el
 * detector químico cuando este no se encuentra en el slot del reloj. Se
 * activara cada vez que se modifique el inventario.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

["loadout", {
  params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
  _isChemicalDetectorDesactivated = !(_unit getVariable ["FCLA_Chemical_Detector_Activated", false]);
  _haveCompatibleChemicalDetector = ({[_unit, _x] call BIS_fnc_hasItem} count FCLA_Chemical_Detectors) >= 1;
  if ((_isChemicalDetectorDesactivated) || (_haveCompatibleChemicalDetector)) exitWith {};

  [_unit] spawn FCLA_Interactions_fnc_turnOffDetectorCBRN;
}, false] call CBA_fnc_addPlayerEventHandler;
