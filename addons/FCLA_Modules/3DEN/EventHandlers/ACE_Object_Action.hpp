
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una acción ACE 3D asociada a una entidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_ACE_Object_Action", {
  (_this select 0) params ["_name", "_icon", "_statement", "_condition"];
  (_this select 1) params ["_associatedObject", "_typeOfAction", "_parentPath"];
  _actionCreated = [_name, _name, _icon, [_statement] call FCLA_Common_fnc_stringToCode, [_condition] call FCLA_Common_fnc_stringToCode, {}, [], {[0, 0, 0]}, 2, [false, false, false, false, false], {}] call ACE_Interact_Menu_fnc_createAction;
  [_associatedObject, _typeOfAction, _parentPath, _actionCreated] call ACE_Interact_menu_fnc_addActionToObject;

  if (!DEBUG) exitWith {};
  ["[FCLA] (modules): Módulo 'ACE Object Action' ejecutado con éxito."] call ACE_Common_fnc_serverLog;
}] call CBA_fnc_addEventHandler;
