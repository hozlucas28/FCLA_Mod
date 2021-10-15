
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 * 
 * Description:
 * Oculta el detector químico.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller"];
_handlers = _caller getVariable ["FCLA_Chemical_Detector_perFrameHandlers_IDs", []];
if (_handlers isEqualTo []) exitWith {};


_caller setVariable ["FCLA_Chemical_Detector_Activated", nil, true];
_caller setVariable ["FCLA_Chemical_Detector_Last_Sound_Time", nil, true];
_caller setVariable ["FCLA_Chemical_Detector_perFrameHandlers_IDs", nil, true];
ctrlDelete (uiNamespace getVariable ["FCLA_CBRN_Chemical_Detector_Ctrl_Background", ctrlNull]);
ctrlDelete (uiNamespace getVariable ["FCLA_CBRN_Chemical_Detector_Ctrl_Color_Palette", ctrlNull]);
ctrlDelete (uiNamespace getVariable ["FCLA_CBRN_Chemical_Detector_Ctrl_Needle", ctrlNull]);
{[_x] call CBA_fnc_removePerFrameHandler;} forEach _handlers;
