
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea eventhandlers públicos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Set_PTSD", {_this call FCLA_Common_fnc_setPTSD;}] call CBA_fnc_addEventHandler;
["FCLA_Shellshock", {_this call FCLA_Common_fnc_Shellshock;}] call CBA_fnc_addEventHandler;
["FCLA_Hide_Subtitles", {_this call FCLA_Common_fnc_hideSubtitles;}] call CBA_fnc_addEventHandler;
["FCLA_Show_Subtitles", {_this call FCLA_Common_fnc_showSubtitles;}] call CBA_fnc_addEventHandler;
