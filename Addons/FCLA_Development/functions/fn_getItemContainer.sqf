
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_getItemContainer

Description:
    Revisa en que contenedores (uniforme, chaleco ó mochila) se encuentra el
    item enviado como parámetro a la función.

Parameters:
    _unit - Unidad a verificar.
    _item - Classname del item.

Returns:
    "Uniform", "Vest", "Backpack" ó "", si el item no fue encontrado en
    ningúno de los contenedores.

Examples:
    [player, "ACE_CableTie"] call FCLA_Development_fnc_getItemContainer;

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_unit", call CBA_fnc_currentUnit], ["_item", ""]];
_arrayOfItemsInVest = vestItems _unit;
_arrayOfItemsInUniform = uniformItems _unit;
_arrayOfItemsInBackpack = backpackItems _unit;


switch (true) do {
  case (_item in _arrayOfItemsInVest): {"Vest";};
  case (_item in _arrayOfItemsInUniform): {"Uniform";};
  case (_item in _arrayOfItemsInBackpack): {"Backpack";};
  default {""};
};
