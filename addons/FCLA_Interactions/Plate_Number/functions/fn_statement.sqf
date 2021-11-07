
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra el número de matrícula del vehículo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_target"];


[["Número de matrícula:", 1.25], [getPlateNumber _target, 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;
