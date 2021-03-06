
/********************************************************************************|
|                  ACCIONES DEL EQUIPAMIENTO - "SENAL DE HUMO"                   |
|********************************************************************************/

class FCLA_Activate_Smoke_Signal {
  icon = "\FCLA_Data\ACE_Actions\Activate_Smoke_Signal.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionActivateSS";
  statement = "playsound 'FCLA_Switch_Smoke'; _player setVariable ['FCLA_Smoke_Signal', true, true];";
  displayName = "Activar senal de humo";
};


class FCLA_Desactivate_Smoke_Signal {
  icon = "\FCLA_Data\ACE_Actions\Deactivate_Smoke_Signal.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionDesactivateSS";
  statement = "playsound 'FCLA_Switch_Smoke'; _player setVariable ['FCLA_Smoke_Signal', nil, true];";
  displayName = "Desactivar senal de humo";
};
