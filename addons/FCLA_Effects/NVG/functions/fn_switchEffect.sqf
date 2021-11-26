
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un efecto de postprocesado para cambiar el color de la visión nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_state"];
_ppEffect = _unit getVariable ["FCLA_NVG_Effect", -1];



//Generar postprocesado.
if (_state) then {
  if (_ppEffect != -1) exitWith {};
  _ppEffect = ppEffectCreate ["ColorCorrections", 1500]; //16735
  _ppEffect ppEffectCommit 0.01;
  _ppEffect ppEffectEnable true;
  _ppEffect ppEffectForceInNVG true;
  _ppEffect ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [0.090, 1.9, 1.9, 0], [0.3, 0.590, 0.110, 0]];
  _unit setVariable ["FCLA_NVG_Effect", _ppEffect, true];
} else {
  if (_ppEffect == -1) exitWith {};
  _ppEffect ppEffectEnable false;
  ppEffectDestroy _ppEffect;
  _unit setVariable ["FCLA_NVG_Effect", nil, true];
};
