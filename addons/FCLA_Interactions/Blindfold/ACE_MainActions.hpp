
/********************************************************************************|
|                           ACCIONES PRINCIPALES - ACE                           |
|********************************************************************************/

class FCLA_Blindfold_On {
  icon = "\FCLA_Data\ACE_Actions\Put_Bandage.paa";
  condition = "[_target, _player] call FCLA_Interactions_fnc_conditionOnBlindfold";
  statement = "[_target, _player] spawn FCLA_Interactions_fnc_statementOnBlindfold;";
  displayName = "Vendar ojos";
};


class FCLA_Blindfold_Off {
  icon = "\FCLA_Data\ACE_Actions\Remove_Bandage.paa";
  condition = "[_target, _player] call FCLA_Interactions_fnc_conditionOffBlindfold";
  statement = "[_target, _player] spawn FCLA_Interactions_fnc_statementOffBlindfold;";
  displayName = "Quitar venda";
};
