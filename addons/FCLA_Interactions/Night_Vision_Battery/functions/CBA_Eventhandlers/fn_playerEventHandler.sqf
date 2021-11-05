
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_playerEventHandlerNVB

Description:
    Asigna un eventhandler del tipo 'addPlayerEventHandler' para que se consuma
    la batería de la visión nocturna.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

["visionMode", {
  params ["_unit", "_newVisionMode", "_oldVisionMode"];
  if ([_unit] call FCLA_Interactions_fnc_conditionStopConsumeNVB) exitWith {};
  [_unit] spawn FCLA_Interactions_fnc_statementStartConsumeNVB;
}, false] call CBA_fnc_addPlayerEventHandler;
