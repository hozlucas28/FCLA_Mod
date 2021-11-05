
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna eventhandlers del tipo 'addPlayerEventHandler' para que se consuma
 * la batería de la visión nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Al cambiar el modo de visión.
["visionMode", {
  params ["_unit", "_newVisionMode", "_oldVisionMode"];
  if ([_unit] call FCLA_Interactions_fnc_conditionStartConsumeNVB) exitWith {[player] spawn FCLA_Interactions_fnc_statementStartConsumeNVB;};
  [player] spawn FCLA_Interactions_fnc_statementStopConsumeNVB;
}, false] call CBA_fnc_addPlayerEventHandler;



//Al cambiar cámara (Zeus, arsenal, etc.).
["featureCamera", {
  params ["_unit", "_newCamera"];
  if ((_newCamera == "") && ([_unit] call FCLA_Interactions_fnc_conditionStartConsumeNVB)) exitWith {[player] spawn FCLA_Interactions_fnc_statementStartConsumeNVB;};
  [player] spawn FCLA_Interactions_fnc_statementStopConsumeNVB;
}, true] call CBA_fnc_addPlayerEventHandler;
