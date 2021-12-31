
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera numerosas acciones, en la entidad enviada como argumento 0, para
 * equiparse el loadout/equipamiento seleccionado.
 *
 * Arguments:
 *            0: Entidad a la que se le asociaran las acciones. <UNIT|OBJECT|VEHICLE>
 *            1: Camuflaje del equipamiento. <STRING>
 *                # Camuflajes disponibles: "Arid", "Woodland" y "Pacific".
 *
 *            2: Equipamientos que se aplicaran. Opcional. <ARRAY>
 *                - ¿Takana y Jaguar? <BOOL> (default: true)
 *                - ¿Condor? <BOOL> (default: true)
 *                - ¿Samandra? <BOOL> (default: true)
 *                - ¿Anaconda? <BOOL> (default: true)
 *                - ¿Quetzal? <BOOL> (default: true)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Examples:
 *             //Se aplicaran todos los equipamientos.
 *             [Loadouts_1, "Arid"] call FCLA_Loadouts_fnc_setOTAN;
 *
 *             //Solo se aplicaran los equipamientos de Takana y Jaguar.
 *             [Loadouts_1, "Arid", [true, false, false, false, false]] call FCLA_Loadouts_fnc_setOTAN;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_entity", objNull, [objNull, teamMemberNull], 0],
        ["_camouflage", "", [""], 0],
        ["_loadoutsToApply", [true, true, true, true, true], [[]], 5]
       ];



//Verificar argumentos.
_applyINTI = _loadoutsToApply select 0;
_applyCondor = _loadoutsToApply select 1;
_applyQuetzal = _loadoutsToApply select 2;
_applyAnaconda = _loadoutsToApply select 3;
_applySalamandra = _loadoutsToApply select 4;
if ((isNull _entity) || !(_loadoutsToApply isEqualTypeArray [true, true, true, true, true])) exitWith {false};
