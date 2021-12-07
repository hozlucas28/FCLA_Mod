
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Pega/Despega al Zeus. Esta función es utilizada por el menú contextual
 * correspondiente.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_hoveredEntity"];



//Pegar/Despegar.
if (isNull attachedTo player) then {
  [true] spawn FCLA_Modules_fnc_hideCurator;
  player attachTo [_hoveredEntity, [0, 0, 0]];
} else {
  detach player;
};
