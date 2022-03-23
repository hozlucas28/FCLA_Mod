
/********************************************************************************|
|    CONTROLADORES DE EVENTOS (JUGADORES) - "BATERIA PARA LA VISION NOCTURNA"    |
|********************************************************************************/

if (hasInterface) then {
  //Inicia/Detiene el consumo de bateria en la vision nocturna.
  ["visionMode", {
    params ["_player", "_newVisionMode", "_oldVisionMode"];
    if ([_player] call FCLA_Interactions_fnc_conditionStartConsumeNVB) exitWith {[_player] call FCLA_Interactions_fnc_statementStartConsumeNVB;};
    [_player] call FCLA_Interactions_fnc_statementStopConsumeNVB;
  }, false] call CBA_fnc_addPlayerEventHandler;


  //Inicia/Detiene el consumo de bateria en la vision nocturna.
  ["featureCamera", {
    params ["_player", "_newCamera"];
    if ((_newCamera == "") && ([_player] call FCLA_Interactions_fnc_conditionStartConsumeNVB)) exitWith {[_player] call FCLA_Interactions_fnc_statementStartConsumeNVB;};
    [_player] call FCLA_Interactions_fnc_statementStopConsumeNVB;
  }, false] call CBA_fnc_addPlayerEventHandler;
};
