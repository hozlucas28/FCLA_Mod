
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una serie de sonidos cuando se abre el inventario.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_container"];
if (!FCLA_Inventory_Sounds) exitWith {};


if (backpack _unit != "") exitWith {playsound "FCLA_Open_Bag";};
_randomSound = selectRandom ["FCLA_Inventory_In_1", "FCLA_Inventory_In_2", "FCLA_Inventory_In_3", "FCLA_Inventory_In_4"];
playsound _randomSound;