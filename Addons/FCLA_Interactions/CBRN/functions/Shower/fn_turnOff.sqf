
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 * 
 * Description:
 * Apaga la ducha descontaminante.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target"];
_showerStartTime = _target getVariable ["FCLA_Shower_Start_Time", CBA_missionTime];
_difference = CBA_missionTime - _showerStartTime;
_waterRemaining = ((_target getVariable ["FCLA_Shower_Water", 100]) - _difference) max 0;


_target setVariable ["FCLA_Shower_Status", nil, true];
_target setVariable ["FCLA_Shower_Start_Time", nil, true];
_target setVariable ["FCLA_Shower_Water", _waterRemaining, true];
["FCLA_Switch_Shower", [_target, false]] call CBA_fnc_serverEvent;
