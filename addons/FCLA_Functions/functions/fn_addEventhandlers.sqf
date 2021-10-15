
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea eventhandlers para el uso de las funciones públicas del
 * addon "FCLA Functions".
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Disable_Vehicle_Destruction_Shellshock_Effect", {_this spawn FCLA_Effects_fnc_ShellshockES;}] call CBA_fnc_addEventHandler;
["FCLA_Disable_Vehicle_Destruction_Message", {[[_this, 1, [1, 0, 0, 1]], true] call CBA_fnc_Notify;}] call CBA_fnc_addEventHandler;
