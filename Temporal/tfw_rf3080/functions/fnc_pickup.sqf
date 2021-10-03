/*
 * Author: Rocko, Ruthberg
 * Pick up tripod
 *
 * Arguments:
 * 0: unit <OBJECT>
 * 1: tripod <OBJECT>
 *
 * Return value:
 * None
 *
 * Example:
 * [ACE_player, tripod] call ace_rf3080_fnc_pickup
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_unit", "_rf3080"];

deleteVehicle rf3080trigger;
player setVariable ['tf_sendingDistanceMultiplicator', 1.0];

if ((_unit call CBA_fnc_getUnitAnim) select 0 == "stand") then {
    _unit playMove "AmovPercMstpSrasWrflDnon_diary";
};

[{
    params ["_unit", "_rf3080"];

    if (isNull _rf3080) exitWith {};

    deleteVehicle _rf3080;

    [_unit, "tfw_rf3080Item"] call ace_common_fnc_addToInventory;
}, [_unit, _rf3080], 1] call cba_fnc_waitAndExecute;