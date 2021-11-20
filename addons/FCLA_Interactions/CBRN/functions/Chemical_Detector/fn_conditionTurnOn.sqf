
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


_isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
_isCompatible = _item in FCLA_Chemical_Detectors;
_isNotSwimming = !([_unit] call ACE_Common_fnc_isSwimming);
_isDesactivated = !(_unit getVariable ["FCLA_Chemical_Detector_Activated", false]);
(FCLA_CBRN) && (_isPlayer) && (_isCompatible) && (_isNotSwimming) && (_isDesactivated)
