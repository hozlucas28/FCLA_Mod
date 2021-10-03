
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_addEventhandlers

Description:
    Crea eventhandlers para el uso de las funciones públicas del addon.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

["FCLA_disableVehicleDestruction_Effect", {_this spawn FCLA_Effects_fnc_shellShockES;}] call CBA_fnc_addEventHandler;
["FCLA_disableVehicleDestruction_Message", {[[_this, 1, [1, 0, 0, 1]], true] call CBA_fnc_Notify;}] call CBA_fnc_addEventHandler;
 
