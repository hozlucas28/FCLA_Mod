
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica el alcance de las radios de onda corta y larga, en las unidades y/o
 * vehículos enviados (argumento 0).
 *
 * Arguments:
 *            0: Unidades/Vehículos a los que se le modificaran el alcance. <ARRAY OF UNITS/VEHICLES>
 *            1: Multiplicador de alcance. <NUMBER>
 *
 * Example:
 *             //Modificar alcance de una unidad.
 *             ["FCLA_Change_Radio_Range", [[player], 2], player] call CBA_fnc_targetEvent;
 *
 *             //Modificar alcance de multiples unidades y vehículos.
 *             ["FCLA_Change_Radio_Range", [[Unidad_1, Unidad_2, Auto_1, Auto_2], 2], [Unidad_1, Unidad_2, Auto_1, Auto_2]] call CBA_fnc_targetEvent;
 *
 * Note:
 * El multiplicador de alcance (argumento 1), que trae por defecto el
 * mod: Task Force Radio, es 1.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

["FCLA_Change_Radio_Range", {
  params [
          ["_unitsAndVehicles", [], [[]], []],
          ["_multiplier", 1, [0], 0]
         ];
  if (_unitsAndVehicles isEqualTo []) exitWith {};
  
  missionNamespace setVariable ["FCLA_TFAR_Multiplicator", _multiplier, true];
  {
    if (_x in vehicles) then {_x setVariable ["tf_range", _multiplier, true];};
    if (_x in allUnits) then {
      _x setVariable ["tf_sendingDistanceMultiplicator", _multiplier, true];
      _x setVariable ["tf_receivingDistanceMultiplicator", _multiplier, true];
    };
  } forEach _unitsAndVehicles;
}] call CBA_fnc_addEventHandler;
