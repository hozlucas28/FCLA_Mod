
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_turnOnShowerCBRN

Description:
    Enciende la ducha descontaminante.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target"];
_remainingWater = _target getVariable ["FCLA_Shower_Water", 100];
if ((_remainingWater) <= 0) exitWith {[["La ducha se ha quedado sin agua.", 1, [1, 0, 0, 1]], true] call CBA_fnc_Notify;};


_target setVariable ["FCLA_Shower_Status", true, true];
_target setVariable ["FCLA_Shower_Start_Time", CBA_missionTime, true];
["FCLA_Switch_Shower", [_target, true]] call CBA_fnc_serverEvent;
[{
  !(_this getVariable ["FCLA_Shower_Status", false]);
}, {}, _target, _remainingWater, {
  _this setVariable ["FCLA_Shower_Water", 0, true];
  _this setVariable ["FCLA_Shower_Status", false, true];
  ["FCLA_Switch_Shower", [_this, false]] call CBA_fnc_serverEvent;
}] call CBA_fnc_waitUntilAndExecute;
