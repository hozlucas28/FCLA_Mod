
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica en que contenedor (uniforme, chaleco ó mochila) se encuentra el
 * item enviado como segundo argumento.
 *
 * Arguments:
 *            0: Unidad a verificar. <UNIT>
 *            1: Classname del item. <STRING>
 *            2: Contenedores excluidos, opcional. <ARRAY OF STRINGS> (default: [])
 *
 * Return Value:
 * Contenedor/es en el que se encuentra el item. <STRING|ARRAY>
 *
 * Examples:
 * [player, "ACE_CableTie"] call FCLA_Common_fnc_getItemContainer; //Sin contenedores excluidos.
 * [player, "ACE_tourniquet", ["Vest", "Backpack"]] call FCLA_Common_fnc_getItemContainer; //Contenedores chaleco y mochila excluidos.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_unit", objNull, [objNull, teamMemberNull], 0],
        ["_item", "", [""], 0],
        ["_excludedContainers", [], [[]], [0, 1, 2, 3]]
       ];
if ((isNull _unit) || (_item == "")) exitWith {""};



//Obtener items de cada contenedor.
_itemsInVest = vestItems _unit;
_itemsInUniform = uniformItems _unit;
_itemsInBackpack = backpackItems _unit;


//Verificar existencia del item.
_array = [];
if ((_item in _itemsInVest) && !("Vest" in _excludedContainers)) then {_array pushBack "Vest";};
if ((_item in _itemsInUniform) && !("Uniform" in _excludedContainers)) then {_array pushBack "Uniform";};
if ((_item in _itemsInBackpack) && !("Backpack" in _excludedContainers)) then {_array pushBack "Backpack";};


//Retornar contenedor/es.
switch (count _array) do {
	case 0: {""};
  case 1: {_array select 0};
	default {_array};
};
