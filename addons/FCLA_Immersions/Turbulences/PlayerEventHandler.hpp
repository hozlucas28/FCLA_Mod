
/********************************************************************************|
|             CONTROLADORES DE EVENTOS (JUGADORES) - "TURBULENCIAS"              |
|********************************************************************************/

//Aplica el efecto de turbulencias en las aeronaves.
if (hasInterface) then {
	["vehicle", {
		params ["_unit", "_newVehicle"];
		if (!(_newVehicle isKindOf "Plane") && !(_newVehicle isKindOf "Helicopter")) exitWith {};
		[_newVehicle] spawn FCLA_Immersions_fnc_initTurbulences;
	}, true] call CBA_fnc_addPlayerEventHandler;
};
