
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una acción contextual para comprobar el oxígeno restante de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_conditionToEnable = {
  params ["_unit", "_container", "_item", "_slot", "_params"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionCheckOxygenCBRN;
};

_conditionToShow = {
  params ["_unit", "_container", "_item", "_slot", "_params"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionCheckOxygenCBRN;
};

_statement = {
  params ["_unit", "_container", "_item", "_slot", "_params"];
  [_unit, _item] spawn FCLA_Interactions_fnc_statementCheckOxygenCBRN;
};

["Backpack", "CLOTHES", "Comprobar oxígeno", [], "", [_conditionToEnable, _conditionToShow], _statement, false, []] call CBA_fnc_addItemContextMenuOption;
