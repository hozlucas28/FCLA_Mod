
/********************************************************************************|
|                  ACCIONES DEL EQUIPAMIENTO - "SEÑAL DE HUMO"                   |
|********************************************************************************/

class FCLA_Activate_Smoke_Signal {
  icon = "\FCLA_Data\ACE_Actions\Activate_Smoke_Signal.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionActivateSS";
  statement = "playsound 'FCLA_Switch_Smoke'; _player setVariable ['FCLA_Smoke_Signal', true, true];";
  displayName = "Activar señal de humo";
};

class FCLA_Desactivate_Smoke_Signal {
  icon = "\FCLA_Data\ACE_Actions\Desactivate_Smoke_Signal.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionDesactivateSS";
  statement = "playsound 'FCLA_Switch_Smoke'; _player setVariable ['FCLA_Smoke_Signal', nil, true];";
  displayName = "Desactivar señal de humo";
};
