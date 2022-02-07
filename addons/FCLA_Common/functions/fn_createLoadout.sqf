
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera una accion para aplicar el equipamiento a la unidad que la ejecute.
 *
 * Arguments:
 *            0: Entidad a la que se le asociara la accion. <UNIT|OBJECT|VEHICLE>
 *            1: Titulo de la accion. <STRING>
 *
 *            2: Equipamiento. <CODE>
 *                # Variables reservadas:
 *                    - _target --> entidad asociada a la accion.
 *                    - _caller --> unidad que ejecuta la accion.
 *                    - _actionId --> ID de la accion.
 *
 *            3: Asignar caracteristicas, opcional. <ARRAY OF BOOLS>
 *                - Doctor. <BOOL> (default: false)
 *                - Ingeniero avanzado. <BOOL> (default: false)
 *                - Especialista en explosivos. <BOOL> (default: false)
 *
 *            4: ¿Setear frecuencias de las radios?, opcional. <BOOL> (default: true)
 *
 *            5: Condiciones para mostrar la accion, opcional. <STRING> (default: "")
 *                # Variables reservadas:
 *                    - _target --> entidad asociada a la accion.
 *                    - _this --> unidad que ejecuta la accion.
 *
 * Return Value:
 * ID del <addAction> utilizado en la funcion. <NUMBER>
 *
 * Full Example:
 *            [player, "Equiparse traje ghillie", {
 *              _caller forceAddUniform "U_B_FullGhillie_ard";
 *            }, [true, true, false], true, "true"] call FCLA_Common_fnc_createLoadout;
 *
 * Note:
 * Si devuelve un -1, entonces la funcion no se ha ejecutado con exito.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_entity", objNull, [objNull, teamMemberNull], 0],
        ["_title", "", [""], 0],
        ["_loadout", objNull, [{}], 0],
        ["_traits", [false, false, false], [[]], 3],
        ["_setFrequencies", true, [true], 0],
        ["_conditions", "", [""], 0]
       ];



//Verificar argumentos.
_setEOD = _traits select 2;
_setDoctor = _traits select 0;
_setAdvancedEnginner = _traits select 1;
if ((isNull _entity) || (_title == "") || (_loadout isEqualType objNull) || !(_traits isEqualTypeArray [false, false, false])) exitWith {-1};



//Convertir las variables reservadas, el equipamiento, las caracteristicas y el seteo de frecuencias en strings.
_isEOD = [{if (_arguments select 2) then {[_caller, "EOD"] call FCLA_Common_fnc_setUnitTrait;};}] call ACE_Common_fnc_codeToString;
_params = [{params ["_target", "_caller", "_actionId", "_arguments"];}] call ACE_Common_fnc_codeToString;
_loadout = [_loadout] call ACE_Common_fnc_codeToString;
_isDoctor = [{if (_arguments select 0) then {[_caller, "FCLA_Medic"] spawn FCLA_Interactions_fnc_statementInsignias; [_caller, "Doctor"] call FCLA_Common_fnc_setUnitTrait;};}] call ACE_Common_fnc_codeToString;
_isAdvancedEnginner = [{if (_arguments select 1) then {[_caller, "Advanced Enginner"] call FCLA_Common_fnc_setUnitTrait;};}] call ACE_Common_fnc_codeToString;
_setRadioFrequencies = [{if (_arguments select 3) then {["FCLA_Radio_Frequencies", []] call CBA_fnc_localEvent;};}] call ACE_Common_fnc_codeToString;
_interactionAnimation = [{[_caller, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;}] call ACE_Common_fnc_codeToString;


//Crear accion.
_entity addAction [_title, compile (_params + _interactionAnimation + _loadout + _isDoctor + _isAdvancedEnginner + _isEOD + _setRadioFrequencies), [_setDoctor, _setAdvancedEnginner, _setEOD, _setFrequencies], 1.5, true, true, "", _conditions, 2.5, false, "", ""];
