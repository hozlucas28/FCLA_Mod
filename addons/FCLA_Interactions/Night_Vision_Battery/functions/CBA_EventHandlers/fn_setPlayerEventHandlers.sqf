
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna controladores de eventos del tipo 'addPlayerEventHandler' para que se
 * consuma la batería de la visión nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Al cambiar el modo de visión.
["visionMode", {
  params ["_player", "_newVisionMode", "_oldVisionMode"];
  if ([_player] call FCLA_Interactions_fnc_conditionStartConsumeNVB) exitWith {[_player] spawn FCLA_Interactions_fnc_statementStartConsumeNVB;};
  [_player] spawn FCLA_Interactions_fnc_statementStopConsumeNVB;
}, false] call CBA_fnc_addPlayerEventHandler;



//Al cambiar cámara (Zeus, arsenal, etc.).
["featureCamera", {
  params ["_player", "_newCamera"];
  if ((_newCamera == "") && ([_player] call FCLA_Interactions_fnc_conditionStartConsumeNVB)) exitWith {[_player] spawn FCLA_Interactions_fnc_statementStartConsumeNVB;};
  [_player] spawn FCLA_Interactions_fnc_statementStopConsumeNVB;
}, false] call CBA_fnc_addPlayerEventHandler;
