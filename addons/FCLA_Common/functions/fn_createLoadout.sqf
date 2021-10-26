
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera una acción para aplicar el equipamiento a la unidad que la ejecute.
 *
 * Arguments:
 *            0: Entidad a la que se le asociara la acción. <UNIT|OBJECT|VEHICLE>
 *            1: Título de la acción. <STRING>
 *
 *            2: Equipamiento. <CODE>
 *                # Variables reservadas:
 *                    - _target --> entidad asociada a la acción.
 *                    - _caller --> unidad que ejecuta la acción.
 *                    - _actionId --> ID de la acción.
 *
 *            3: ¿Setear frecuencias de las radios?, opcional. <BOOL> (default: true)
 *
 *            4: Condiciones para mostrar la acción, opcional. <STRING> (default: "")
 *                # Variables reservadas:
 *                    - _target --> entidad asociada a la acción.
 *                    - _this --> unidad que ejecuta la acción.
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 * [player, "Equiparse traje ghillie", {_caller forceAddUniform "U_B_FullGhillie_ard";}] call FCLA_Common_fnc_createLoadout;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_entity", objNull, [objNull, teamMemberNull], 0],
        ["_title", "", [""], 0],
        ["_loadout", objNull, [{}], 0],
        ["_setRadioFrequencies", true, [true], 0],
        ["_conditions", "", [""], 0]
       ];
if ((isNull _entity) || (_title == "") || (_loadout isEqualType objNull)) exitWith {false};



//Convertir las variables reservadas, el equipamiento y el seteo de frecuencias en strings.
_params = [{params ["_target", "_caller", "_actionId", "_setRadioFrequencies"];}] call ACE_Common_fnc_codeToString;
_loadout = [_loadout] call ACE_Common_fnc_codeToString;
_setFrequencies = [{if (_setRadioFrequencies) then {call FCLA_Common_fnc_setRadioFrequencies;};}] call ACE_Common_fnc_codeToString;


//Crear acción.
_entity addAction [_title, compile (_params + _loadout + _setFrequencies), _setRadioFrequencies, 1.5, false, true, "", _conditions, 2.5, false, "", "" ];
true
