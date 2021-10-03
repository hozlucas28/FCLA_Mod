
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_canCheckChemicalExposureCBRN

Description:
    Verifica si se puede comprobar la exposición química del paciente.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller", "_patient"];


_notInStairs = !(_caller getVariable ["FCLA_inStairs", false]) && !(_patient getVariable ["FCLA_inStairs", false]);
_areNotSwimming = !([_caller] call ACE_Common_fnc_isSwimming) && !([_patient] call ACE_Common_fnc_isSwimming);
_isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
_haveCompatibleChemicalDetector = ({([_caller, _x] call BIS_fnc_hasItem) || ([_patient, _x] call BIS_fnc_hasItem)} count FCLA_Chemical_Detectors) >= 1;
(_notInStairs) && (_areNotSwimming) && (_isCBRNActivated) && (_haveCompatibleChemicalDetector)
