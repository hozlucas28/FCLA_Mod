
/********************************************************************************|
|                 ACCIONES DEL EQUIPAMIENTO - "ANTENA SATÉLITAL"                 |
|********************************************************************************/

class FCLA_Assemble_Satellite_Antenna {
  icon = "\FCLA_Data\ACE_Actions\Assemble_Antenna.paa";
  condition = "[_player] call FCLA_Interactions_fnc_conditionAssembleSA";
  statement = "[_player] spawn FCLA_Interactions_fnc_statementAssembleSA;";
  displayName = "Ensamblar antena";
};
