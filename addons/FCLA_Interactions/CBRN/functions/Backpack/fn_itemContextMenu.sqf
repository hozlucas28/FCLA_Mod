
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una acción contextual para comprobar el oxígeno restante de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_conditionToEnable = {
  params ["_unit", "_container", "_item"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionCheckOxygenCBRN;
};

_conditionToShow = {
  params ["_unit", "_container", "_item"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionCheckOxygenCBRN;
};

_Statement = {
  params ["_player", "_container", "_item"];
  [_player, _item] spawn FCLA_Interactions_fnc_statementCheckOxygenCBRN;
};

["##Backpack", "CLOTHES", "Comprobar oxígeno", [], "\FCLA_Interactions\CBRN\data\O2.paa", [_conditionToEnable, _conditionToShow], _Statement, false, []] call CBA_fnc_addItemContextMenuOption;
