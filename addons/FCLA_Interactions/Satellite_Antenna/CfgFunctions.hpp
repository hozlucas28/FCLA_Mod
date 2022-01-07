
/********************************************************************************|
|                         FUNCIONES - "ANTENA SATÉLITAL"                         |
|********************************************************************************/

class Satellite_Antenna {
  class addActionDisassembleSA {
    file = "\FCLA_Interactions\Satellite_Antenna\functions\fn_addAction.sqf";
    postInit = 1;
  };

  class conditionAssembleSA {file = "\FCLA_Interactions\Satellite_Antenna\functions\fn_conditionAssemble.sqf";};
  class conditionDisassembleSA {file = "\FCLA_Interactions\Satellite_Antenna\functions\fn_conditionDisassemble.sqf";};
  class statementAssembleSA {file = "\FCLA_Interactions\Satellite_Antenna\functions\fn_statementAssemble.sqf";};
  class statementDisassembleSA {file = "\FCLA_Interactions\Satellite_Antenna\functions\fn_statementDisassemble.sqf";};
};
