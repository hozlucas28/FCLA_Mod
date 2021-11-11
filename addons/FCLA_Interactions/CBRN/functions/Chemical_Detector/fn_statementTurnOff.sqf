
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Apaga el detector químico.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
_ctrls = _unit getVariable ["FCLA_CBRN_Chemical_Detector_Ctrls", [controlNull, controlNull, controlNull]];



_unit setVariable ["FCLA_Chemical_Detector_Activated", nil, true];
_unit setVariable ["FCLA_CBRN_Chemical_Detector_Ctrls", nil, true];
_unit setVariable ["FCLA_Chemical_Detector_Last_Sound_Time", nil, true];
{ctrlDelete _x} forEach _ctrls;
