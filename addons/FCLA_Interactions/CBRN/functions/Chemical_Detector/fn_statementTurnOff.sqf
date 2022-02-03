
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Apaga el detector quimico.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];
_ctrls = _player getVariable ["FCLA_CBRN_Chemical_Detector_Ctrls", [controlNull, controlNull, controlNull]];



_player setVariable ["FCLA_Chemical_Detector_Activated", nil, true];
_player setVariable ["FCLA_CBRN_Chemical_Detector_Ctrls", nil, true];
{ctrlDelete _x} forEach _ctrls;
