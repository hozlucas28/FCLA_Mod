
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 * 
 * Description:
 * Crea eventhandlers para el uso de las funciones CBRN.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Switch_Shower", {
  params ["_shower", "_state"];
  [_shower, _state] spawn FCLA_Interactions_fnc_switchShowerCBRN;
}] call CBA_fnc_addEventhandler;
