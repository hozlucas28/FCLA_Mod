
/* ----------------------------------------------------------------------------
Direction: FCLA_Immersions_fnc_playerEventHandlerTurbulences

Description:
    Asigna un eventhandler del tipo 'addPlayerEventHandler' para aplicar
    turbulencias en el avión/helicóptero cuando entre/salga de un vehículo.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

["vehicle", {
	params ["_unit", "_newVehicle", "_oldVehicle"];
	if (!(_newVehicle isKindOf "Plane") && !(_newVehicle isKindOf "Helicopter")) exitWith {};
	[_newVehicle] spawn FCLA_Immersions_fnc_initTurbulences;
}, true] call CBA_fnc_addPlayerEventHandler;
