
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * XXX.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_ACE_Classname_Action", {
  (_this select 0) params ["_name", "_icon", "_statement", "_condition"];
  (_this select 1) params ["_associatedClassname", "_typeOfAction", "_parentPath"];
  _actionCreated = [_name, _name, _icon, [_statement] call FCLA_Common_fnc_stringToCode, [_condition] call FCLA_Common_fnc_stringToCode, {}, [], {[0, 0, 0]}, 2, [false, false, false, false, false], {}] call ACE_Interact_Menu_fnc_createAction;
  [_associatedClassname, _typeOfAction, _parentPath, _actionCreated, false] call ACE_Interact_Menu_fnc_addActionToClass;
}] call CBA_fnc_addEventHandler;
