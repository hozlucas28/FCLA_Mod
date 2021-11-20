
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede comprobar la exposición química.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_medic", "_patient"];


_areNotSwimming = !([_patient] call ACE_Common_fnc_isSwimming) && !([_medic] call ACE_Common_fnc_isSwimming);
_isTouchingGround = isTouchingGround _medic;
_haveCompatibleChemicalDetector = ({([_medic, _x] call BIS_fnc_hasItem) || ([_patient, _x] call BIS_fnc_hasItem)} count FCLA_Chemical_Detectors) >= 1;
(FCLA_CBRN) && (_areNotSwimming) && (_isTouchingGround) && (_haveCompatibleChemicalDetector)
