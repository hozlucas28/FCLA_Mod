
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una acción ACE 3D (externa) para subirse a la camilla.
 *
 * Public: [No]
---------------------------------------------------------------------------- */



/* --------------------------------- SUBIR --------------------------------- */

_Condition = {
  params ["_target", "_player"];
  [_target, _player] call FCLA_Interactions_fnc_conditionGetInStretcher;
};

_Statement = {
  params ["_target", "_player"];
  [_target, _player] spawn FCLA_Interactions_fnc_statementGetInStretcher;
};

_getIn = ["FCLA_Get_In_Stretcher", "Subir", "\A3\Ui_f\data\IGUI\Cfg\Actions\getincargo_ca.paa", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
{[_x, 0, [], _getIn] call ACE_Interact_Menu_fnc_addActionToClass;} forEach ["SpinalBoard_01_white_F", "SpinalBoard_01_black_F", "SpinalBoard_01_orange_F"];
