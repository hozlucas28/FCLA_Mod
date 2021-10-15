
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_getItemContainer

Description:
    Revisa en que contenedores (uniforme, chaleco ó mochila) se encuentra el
    item enviado como parámetro a la función.

Arguments:
    _unit - Unidad a verificar.
    _item - Classname del item.

Return Value:
    "Uniform", "Vest", "Backpack" ó "", si el item no fue encontrado en
    ningúno de los contenedores.

Example:
    [player, "ACE_CableTie"] call FCLA_Development_fnc_getItemContainer;

Public: [Yes]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_unit", call CBA_fnc_currentUnit], ["_item", ""]];
_itemsInVest = vestItems _unit;
_itemsInUniform = uniformItems _unit;
_itemsInBackpack = backpackItems _unit;


switch (true) do {
  case (_item in _itemsInVest): {"Vest";};
  case (_item in _itemsInUniform): {"Uniform";};
  case (_item in _itemsInBackpack): {"Backpack";};
  default {""};
};
