
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una serie de sonidos cuando se cierra el inventario.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_container"];
if (!FCLA_Inventory_Sounds) exitWith {};


if (backpack _unit != "") exitWith {playsound "FCLA_Close_Bag";};
_randomSound = selectRandom ["FCLA_Inventory_Out_1", "FCLA_Inventory_Out_2", "FCLA_Inventory_Out_3", "FCLA_Inventory_Out_4"];
playsound _randomSound;
