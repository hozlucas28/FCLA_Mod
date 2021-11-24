
/********************************************************************************|
|                          ACCIONES PROPIAS - "CAMILLA"                          |
|********************************************************************************/

class FCLA_Get_Out_Stretcher {
  icon = "\A3\Ui_f\data\IGUI\Cfg\Actions\getout_ca.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionGetOutStretcher";
  statement = "[_player] spawn FCLA_Interactions_fnc_statementGetOutStretcher;";
  displayName = "Salir (camilla)";
};
