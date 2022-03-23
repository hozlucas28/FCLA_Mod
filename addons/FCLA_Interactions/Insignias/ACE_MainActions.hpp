
/********************************************************************************|
|                       ACCIONES PRINCIPALES - "INSIGNIAS"                       |
|********************************************************************************/

class FCLA_Insignia {
  icon = "\FCLA_data\ACE_Actions\Insignia_Management.paa";
  condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
  statement = "[_target, false] call FCLA_Interactions_fnc_createDialogInsignias;";
  displayName = "Colocar insignia";
};
