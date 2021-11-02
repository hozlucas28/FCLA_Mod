
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
_ctrls = uiNamespace getVariable ["FCLA_CBRN_Chemical_Detector_Ctrls", [ctrlNull, ctrlNull, ctrlNull]];



_unit setVariable ["FCLA_Chemical_Detector_Activated", nil, true];
_unit setVariable ["FCLA_Chemical_Detector_Last_Sound_Time", nil, true];
{ctrlDelete _x} forEach _ctrls;
