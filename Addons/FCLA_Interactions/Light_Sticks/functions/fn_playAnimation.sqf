
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_playAnimationLS

Description:
    Fuerza a la unidad a realizar la animación enviada de los palillos de luz.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller", "_animation"];


_caller setVariable ["FCLA_Playing_Animation", true, true];
[_caller, _animation, "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;

[{
  params ["_caller", "_animation"];
  _isNotAlive = (!alive _caller);
  _animationStoped = ((animationState _caller) != _animation);
  (_isNotAlive) || (_animationStoped);
}, {
  params ["_caller", "_animation"];
  _caller setVariable ["FCLA_Playing_Animation", nil, true];
}, [_caller, _animation]] call CBA_fnc_waitUntilAndExecute;
