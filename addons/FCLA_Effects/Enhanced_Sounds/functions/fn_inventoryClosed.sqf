
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una serie de sonidos cuando se cierra el inventario.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if ((!FCLA_Inventory_Sounds) || (!isNull findDisplay 312)) exitWith {};


_currentBackpack = backpack _unit;
if (_currentBackpack != "") exitWith {playsound "FCLA_Close_Bag";};
_randomSound = selectRandom ["FCLA_Close_Inventory_1", "FCLA_Close_Inventory_2", "FCLA_Close_Inventory_3", "FCLA_Close_Inventory_4"];
playsound _randomSound;
