
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede apagar el detector químico.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_item"];


_isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
_isActivated = _unit getVariable ["FCLA_Chemical_Detector_Activated", false];
_isCompatible = _item in FCLA_Chemical_Detectors;
_isNotSwimming = !([_unit] call ACE_Common_fnc_isSwimming);
(FCLA_CBRN) && (_isPlayer) && (_isActivated) && (_isCompatible) && (_isNotSwimming)
