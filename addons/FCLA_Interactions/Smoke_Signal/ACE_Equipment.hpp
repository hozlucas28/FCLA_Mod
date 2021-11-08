
/********************************************************************************|
|                  ACCIONES DEL EQUIPAMIENTO - "SEÑAL DE HUMO"                   |
|********************************************************************************/

class FCLA_Activate_Smoke_Signal {
  icon = "\FCLA_Data\ACE_Actions\Activate_Smoke_Signal.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionActivateSS";
  statement = "[_player] spawn FCLA_Interactions_fnc_statementActivateSS;";
  displayName = "Activar señal de humo";
};


class FCLA_Desactivate_Smoke_Signal {
  icon = "\FCLA_Data\ACE_Actions\Desactivate_Smoke_Signal.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionDesactivateSS";
  statement = "[_player] spawn FCLA_Interactions_fnc_statementDesactivateSS;";
  displayName = "Desactivar señal de humo";
};
