
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una acción ACE 3D (externa) para recargar el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_object"];



/* --------------------------- RECARGAR OXÍGENO ---------------------------- */

_Condition = {
  params ["_target", "_player"];
  [_target, _player] call FCLA_Interactions_fnc_conditionRechargeOxygenCBRN;
};

_Statement = {
  params ["_target", "_player"];
  [_target, _player] spawn FCLA_Interactions_fnc_statementRechargeOxygenCBRN;
};

_Action = ["FCLA_Recargar_Oxigeno", "Recargar oxígeno", "\FCLA_Data\ACE_Actions\Oxygen_Tank.paa", _Statement, _Condition] call Ace_Interact_Menu_fnc_createAction;
[_object, 0, [], _Action] call Ace_Interact_Menu_fnc_addActionToObject;
