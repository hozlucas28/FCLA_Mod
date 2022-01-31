
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una acción ACE 3D asociada a los Zeus.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Module_ACE_Zeus_Action", {
  (_this select 1) params ["_parentPath"];
  (_this select 0) params ["_logic", "_name", "_icon", "_statement", "_condition"];
  if (isServer) exitWith {};

  _actionCreated = [_name, _name, _icon, [_statement] call FCLA_Common_fnc_stringToCode, [_condition] call FCLA_Common_fnc_stringToCode, {}, [], {[0, 0, 0]}, 2, [false, false, false, false, false], {}] call ACE_Interact_Menu_fnc_createAction;
  [_parentPath, _actionCreated] call ACE_Interact_Menu_fnc_addActionToZeus;
}] call CBA_fnc_addEventHandler;
