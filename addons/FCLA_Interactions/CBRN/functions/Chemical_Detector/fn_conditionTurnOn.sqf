
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede encender el detector quimico.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_item"];
_compatibleChemicalDetectors = if (isNil "FCLA_CBRN_Compatible_Chemical_Detectors") then {["ChemicalDetector_01_watch_F", "tf_microdagr"];} else {FCLA_CBRN_Compatible_Chemical_Detectors;};


_isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
_isCompatible = _item in _compatibleChemicalDetectors;
_isNotSwimming = !([_unit] call ACE_Common_fnc_isSwimming);
_isDesactivated = !(_unit getVariable ["FCLA_Chemical_Detector_Activated", false]);
(_isPlayer) && (_isCompatible) && (_isNotSwimming) && (_isDesactivated)
