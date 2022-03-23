
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una accion ACE 3D (externa) para recargar el oxigeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_Condition = {
  params ["_target", "_player"];
  [_target, _player] call FCLA_Interactions_fnc_conditionRechargeOxygenCBRN;
};

_Statement = {
  params ["_target", "_player"];
  [_target, _player] call FCLA_Interactions_fnc_statementRechargeOxygenCBRN;
};

_Action = ["FCLA_Recharge_Oxygen", "Recargar oxigeno", "\FCLA_Data\ACE_Actions\Oxygen_Tank.paa", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
["Land_OxygenTank_02_F", 0, [], _Action] call ACE_Interact_Menu_fnc_addActionToClass;
