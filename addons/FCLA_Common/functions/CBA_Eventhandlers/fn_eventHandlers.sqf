
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea eventhandlers públicos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Shellshock", {_this call FCLA_Common_fnc_Shellshock;}] call CBA_fnc_addEventHandler;
["FCLA_Subtitles", {_this call FCLA_Common_fnc_showSubtitles;}] call CBA_fnc_addEventHandler;
["FCLA_Hide_Subtitles", {_this call FCLA_Common_fnc_hideSubtitles;}] call CBA_fnc_addEventHandler;
