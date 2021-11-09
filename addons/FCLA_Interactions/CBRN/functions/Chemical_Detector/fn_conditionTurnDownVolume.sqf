
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede bajar el volumen del detector químico.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_item"];
_currentVolume = _unit getVariable ["FCLA_Chemical_Detector_Volume", 2];


_isActivated = _unit getVariable ["FCLA_Chemical_Detector_Activated", false];
_isCompatible = _item in FCLA_Chemical_Detectors;
_isNotSwimming = !([_unit] call ACE_Common_fnc_isSwimming);
_isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
(_currentVolume > 0) && (_isActivated) && (_isCompatible) && (_isNotSwimming) && (_isCBRNActivated)
