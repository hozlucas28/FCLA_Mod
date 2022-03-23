
/********************************************************************************|
|                        GESTION DE EQUIPO - "INSIGNIAS"                         |
|********************************************************************************/

class FCLA_Insignia {
  icon = "\FCLA_data\ACE_Actions\Insignia_Management.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionSelfInsignias";
  statement = "[_player, true] call FCLA_Interactions_fnc_createDialogInsignias;";
  displayName = "Insignia";
};
