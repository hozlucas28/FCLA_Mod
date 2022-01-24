
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Establece automáticamente las frecuencias de las radios de onda corta y larga,
 * que se utilizan en la comunidad de FCLA.
 *
 * Example:
 * ["FCLA_Radio_Frequencies", [], player] call CBA_fnc_targetEvent;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_Radio_Frequencies", {call FCLA_Common_fnc_setRadioFrequencies;}] call CBA_fnc_addEventHandler;
