
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
_compatibleChemicalDetectors = missionNamespace getVariable ["FCLA_CBRN_Compatible_Chemical_Detectors", ["ChemicalDetector_01_watch_F", "tf_microdagr"]];


_areNotSwimming = !([_patient] call ACE_Common_fnc_isSwimming) && !([_medic] call ACE_Common_fnc_isSwimming);
_isCBRNActivated = missionNamespace getVariable ["FCLA_CBRN", false];
_isTouchingGround = isTouchingGround _medic;
_haveCompatibleChemicalDetector = ({([_medic, _x] call BIS_fnc_hasItem) || ([_patient, _x] call BIS_fnc_hasItem)} count _compatibleChemicalDetectors) >= 1;
(_areNotSwimming) && (_isCBRNActivated) && (_isTouchingGround) && (_haveCompatibleChemicalDetector)
