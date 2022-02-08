
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una serie de sonidos cuando se abre el inventario.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if ((!FCLA_Inventory_Sounds) || (!isNull findDisplay 312)) exitWith {};


_currentBackpack = backpack _unit;
if (_currentBackpack != "") exitWith {playsound "FCLA_Open_Bag";};
_randomSound = selectRandom ["FCLA_Open_Inventory_1", "FCLA_Open_Inventory_2", "FCLA_Open_Inventory_3", "FCLA_Open_Inventory_4"];
playsound _randomSound;
