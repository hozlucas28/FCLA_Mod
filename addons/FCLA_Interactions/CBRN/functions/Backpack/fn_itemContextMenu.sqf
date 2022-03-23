
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una accion contextual para comprobar el oxigeno restante de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_conditionToEnable = {
  params ["_player", "_container", "_item"];
  [_player, _item] call FCLA_Interactions_fnc_conditionCheckOxygenCBRN;
};

_conditionToShow = {
  params ["_player", "_container", "_item"];
  [_player, _item] call FCLA_Interactions_fnc_conditionCheckOxygenCBRN;
};

_Statement = {
  params ["_player", "_container", "_item"];
  [_player, _item] call FCLA_Interactions_fnc_statementCheckOxygenCBRN;
};

["##Backpack", "CLOTHES", "Comprobar oxigeno", [], "\FCLA_Interactions\CBRN\data\O2.paa", [_conditionToEnable, _conditionToShow], _Statement, false, []] call CBA_fnc_addItemContextMenuOption;
