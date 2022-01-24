
/********************************************************************************|
|    CONTROLADORES DE EVENTOS (JUGADORES) - "BATERÍA PARA LA VISIÓN NOCTURNA"    |
|********************************************************************************/

//Inicia/Detiene el consumo de batería en la visión nocturna.
["visionMode", {
  params ["_player", "_newVisionMode", "_oldVisionMode"];
  if ([_player] call FCLA_Interactions_fnc_conditionStartConsumeNVB) exitWith {[_player] spawn FCLA_Interactions_fnc_statementStartConsumeNVB;};
  [_player] spawn FCLA_Interactions_fnc_statementStopConsumeNVB;
}, false] call CBA_fnc_addPlayerEventHandler;


//Inicia/Detiene el consumo de batería en la visión nocturna.
["featureCamera", {
  params ["_player", "_newCamera"];
  if ((_newCamera == "") && ([_player] call FCLA_Interactions_fnc_conditionStartConsumeNVB)) exitWith {[_player] spawn FCLA_Interactions_fnc_statementStartConsumeNVB;};
  [_player] spawn FCLA_Interactions_fnc_statementStopConsumeNVB;
}, false] call CBA_fnc_addPlayerEventHandler;
