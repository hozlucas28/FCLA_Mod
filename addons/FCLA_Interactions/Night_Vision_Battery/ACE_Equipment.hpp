
/********************************************************************************|
|         ACCIONES DEL EQUIPAMIENTO - "BATERIA PARA LA VISION NOCTURNA"          |
|********************************************************************************/

class FCLA_Recharge_NVG_Battery {
  condition = "[_player] call FCLA_Interactions_fnc_conditionRechargeNVB";
  statement = "[_player] call FCLA_Interactions_fnc_statementRechargeNVB;";
  displayName = "Recargar bateria";
  modifierFunction = "_this select 3 set [2,  getText (configFile >> 'CfgWeapons' >> hmd (_this select 0) >> 'picture')];";
};
