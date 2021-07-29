
/********************************************************************************|
|                                "EVENTHANDLERS"                                 |
|********************************************************************************/



/* ----------------------- FCLA EFECTOS - AERONAVES ------------------------ */

["Air", "Engine", FCLA_Effects_fnc_engineEHAircraft] call CBA_fnc_addClassEventHandler;
["Plane", "LandedTouchDown", FCLA_Effects_fnc_landingEHAircraft] call CBA_fnc_addClassEventHandler;
["FCLA_Effects_Aircraft_Init", FCLA_Effects_fnc_initAircraft] call CBA_fnc_addEventHandler;



/* ------------------------ FCLA INMERSIONES - NAB ------------------------- */

["Air", "Killed", FCLA_Immersions_fnc_killedNAB] call CBA_fnc_addClassEventHandler;
["NAB_triggered", FCLA_Immersions_fnc_particlesNAB] call CBA_fnc_addEventHandler;



/* --------------------- ABRIR PUERTA PROGRESIVAMENTE ---------------------- */

missionNamespace setVariable ["FCLA_POD_Scroll_eventHandler", (
	(findDisplay 46) displayAddEventHandler ["MouseZChanged", {[_this select 1] call FCLA_Immersions_fnc_initPOD;}]
)];



/* ----------------------------- TURBULENCIAS ------------------------------ */

if (!hasInterface) exitWith {};
["vehicle", {
	params ["_unit", "_newVehicle", "_oldVehicle"];
	if (_newVehicle isKindOf "Helicopter") then {[_newVehicle] spawn FCLA_Immersions_fnc_heliTurbulence;};
	if (_newVehicle isKindOf "Plane") then {[_newVehicle] spawn FCLA_Immersions_fnc_planeTurbulence;};
}] call CBA_fnc_addPlayerEventHandler;


private _currentUnit = call CBA_fnc_currentUnit;
private _controlledVehicle = vehicle _currentUnit;
if (_controlledVehicle isKindof "Helicopter") then {[_controlledVehicle] spawn FCLA_Immersions_fnc_heliTurbulence;};
if (_controlledVehicle isKindof "Plane") then {[_controlledVehicle] spawn FCLA_Immersions_fnc_planeTurbulence;};
