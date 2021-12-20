
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna un controlador de evento del tipo 'addPlayerEventHandler' para aplicar
 * turbulencias en el avión/helicóptero cuando entre/salga de un vehículo.

 * Public: [No]
---------------------------------------------------------------------------- */

["vehicle", {
	params ["_unit", "_newVehicle"];
	if (!(_newVehicle isKindOf "Plane") && !(_newVehicle isKindOf "Helicopter")) exitWith {};
	[_newVehicle] spawn FCLA_Immersions_fnc_initTurbulences;
}, true] call CBA_fnc_addPlayerEventHandler;
