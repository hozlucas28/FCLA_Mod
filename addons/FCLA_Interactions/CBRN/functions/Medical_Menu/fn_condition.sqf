
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede comprobar la exposición química.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_patient", "_player"];


_areNotSwimming = !([_patient] call ACE_Common_fnc_isSwimming) && !([_player] call ACE_Common_fnc_isSwimming);
_isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
_isTouchingGround = isTouchingGround _player;
_haveCompatibleChemicalDetector = ({([_player, _x] call BIS_fnc_hasItem) || ([_patient, _x] call BIS_fnc_hasItem)} count FCLA_Chemical_Detectors) >= 1;
(_areNotSwimming) && (_isCBRNActivated) && (_isTouchingGround) && (_haveCompatibleChemicalDetector)
