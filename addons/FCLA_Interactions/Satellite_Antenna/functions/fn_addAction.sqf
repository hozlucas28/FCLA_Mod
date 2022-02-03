
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una accion ACE 3D (externa) para desarmar la antena satelital.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_Condition = {
  params ["_target", "_player"];
  [_target, _player] call FCLA_Interactions_fnc_conditionDisassembleSA;
};

_Statement = {
  params ["_target", "_player"];
  [_target, _player] spawn FCLA_Interactions_fnc_statementDisassembleSA;
};

_Action = ["FCLA_Disassemble_Satellite_Antenna", "Desarmar", "\FCLA_Data\ACE_Actions\Disassemble_Antenna.paa", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
["Satellite_Antenna_RF_3080", 0, ["ACE_MainActions"], _Action] call ACE_Interact_Menu_fnc_addActionToClass;
