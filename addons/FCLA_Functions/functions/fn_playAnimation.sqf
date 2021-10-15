
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_playAnimation

Description:
    Fuerza a la unidad a realizar la animación enviada, según su
    tipo de reproducción.

Arguments:
    _unit - Unidad que realizara la animación.
    _animation - Classname de la animación que se busca reproducir.
    _typeOfReproduction - Tipo de reproducción para la animación.
                          Valores aceptados: "playAction", "playActionNow",
                                             "PlayMove", "PlayMoveNow" ó "SwitchMove".

Example:
    [player, "FCLA_Animation_Tactical_Position_Up", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;

Public: [Yes]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_unit", call CBA_fnc_currentUnit], ["_animation", ""], ["_typeOfReproduction", ""]];
_compatibleReproductions = ["playAction", "playActionNow", "PlayMove", "PlayMoveNow", "SwitchMove"];
if (!(_typeOfReproduction in _compatibleReproductions)) exitWith {false};


switch (_typeOfReproduction) do {
  case "playAction": {[_unit, _animation] call ACE_Common_fnc_doGesture;};
  case "playActionNow": {[_unit, _animation] call ACE_Common_fnc_doGesture;};
  case "PlayMove": {[_unit, _animation, 0] call ACE_Common_fnc_doAnimation;};
  case "PlayMoveNow": {[_unit, _animation, 1] call ACE_Common_fnc_doAnimation;};
  case "SwitchMove": {[_unit, _animation, 2] call ACE_Common_fnc_doAnimation;};
  default {false};
};
