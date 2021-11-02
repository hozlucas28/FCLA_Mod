
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede encender el detector químico.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_item"];


_notInStairs = !(_unit getVariable ["FCLA_inStairs", false]);
_isCompatible = _item in FCLA_Chemical_Detectors;
_isNotSwimming = !([_unit] call ACE_Common_fnc_isSwimming);
_isDesactivated = !(_unit getVariable ["FCLA_Chemical_Detector_Activated", false]);
_isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
(_notInStairs) && (_isCompatible) && (_isNotSwimming) && (_isDesactivated) && (_isCBRNActivated)
