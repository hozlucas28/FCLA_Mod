
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica el alcance de las radios de onda corta y larga, en las unidades
 * enviadas (argumento 0).
 *
 * Arguments:
 *            0: Unidades a las que se le modificaran el alcance. <ARRAY OF UNITS>
 *            1: Multiplicador de alcance. <NUMBER>
 *
 * Return Value:
  * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 *             //Modificar alcance de una unidad.
 *             [[player], 2] call FCLA_Common_fnc_changeRadioRange;
 *
 *             //Modificar alcance de multiples unidades.
 *             [[Unidad_1, Unidad_2, Unidad_3], 2] call FCLA_Common_fnc_changeRadioRange;
 *
 *
 * Note:
 * Se recomienda utilizar esta función a travez del evento
 * personalizado "FCLA_Change_Radio_Range".
 *
 * El multiplicador de alcance (argumento 1), que trae por defecto el
 * mod: TFAR, es 1.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [
        ["_units", [objNull], [[]], []],
        ["_rangeMultiplier", -1, [0], 0]
       ];



//Verificar argumentos.
_incompatibleValueInUnits = ((count _units) <= 1) && (objNull in _units);
if ((_incompatibleValueInUnits) || (_rangeMultiplier <= -1)) exitWith {false};



//Modificar alcance de las radios.
{_x setVariable ["tf_sendingDistanceMultiplicator", _this select 1];} forEach _units;
{_x setVariable ["tf_receivingDistanceMultiplicator", _this select 1];} forEach _units;
