
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
 *            3: Asignar características, opcional. <ARRAY OF BOOLS>
 *                - Doctor. <BOOL> (default: false)
 *                - Ingeniero avanzado. <BOOL> (default: false)
 *                - Especialista en explosivos. <BOOL> (default: false)
 *
 *            4: ¿Setear frecuencias de las radios?, opcional. <BOOL> (default: true)
 *
 *            5: Condiciones para mostrar la acción, opcional. <STRING> (default: "")
 *                # Variables reservadas:
 *                    - _target --> entidad asociada a la acción.
 *                    - _this --> unidad que ejecuta la acción.
 *
 * Return Value:
 * ID del <addAction> utilizado en la función. <NUMBER>
 *
 * Full Example:
 *            [player, "Equiparse traje ghillie", {
 *              _caller forceAddUniform "U_B_FullGhillie_ard";
 *            }, [true, true, false], true, "true"] call FCLA_Common_fnc_createLoadout;
 *
 * Note:
 * Si devuelve un -1, entonces la función no se ha ejecutado con éxito.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_entity", objNull, [objNull, teamMemberNull], 0],
        ["_title", "", [""], 0],
        ["_loadout", objNull, [{}], 0],
        ["_traits", [false, false, false], [[]], [0, 1, 2, 3]],
        ["_setFrequencies", true, [true], 0],
        ["_conditions", "", [""], 0]
       ];



//Verificar argumentos.
_setDoctor = _traits select 0;
_setAdvancedEnginner = _traits select 1;
_setEOD = _traits select 2;
_supportedValuesForTraits = [true, false];
if ((isNull _entity) || (_title == "") || (_loadout isEqualType objNull) || !(_setDoctor in _supportedValuesForTraits) || !(_setAdvancedEnginner in _supportedValuesForTraits) || !(_setEOD in _supportedValuesForTraits)) exitWith {-1};



//Convertir las variables reservadas, el equipamiento, las características y el seteo de frecuencias en strings.
_params = [{params ["_target", "_caller", "_actionId", "_arguments"];}] call ACE_Common_fnc_codeToString;
_loadout = [_loadout] call ACE_Common_fnc_codeToString;
_isDoctor = [{if (_arguments select 0) then {[_caller, "Doctor"] call FCLA_Common_fnc_setUnitTrait;};}] call ACE_Common_fnc_codeToString;
_isAdvancedEnginner = [{if (_arguments select 1) then {[_caller, "Advanced Enginner"] call FCLA_Common_fnc_setUnitTrait;};}] call ACE_Common_fnc_codeToString;
_isEOD = [{if (_arguments select 2) then {[_caller, "EOD"] call FCLA_Common_fnc_setUnitTrait;};}] call ACE_Common_fnc_codeToString;
_setRadioFrequencies = [{if (_arguments select 3) then {call FCLA_Common_fnc_setRadioFrequencies;};}] call ACE_Common_fnc_codeToString;


//Crear acción.
_entity addAction [_title, compile (_params + _loadout + _isDoctor + _isAdvancedEnginner + _isEOD + _setRadioFrequencies), [_setDoctor, _setAdvancedEnginner, _setEOD, _setFrequencies], 1.5, false, true, "", _conditions, 2.5, false, "", ""];
