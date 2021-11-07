
/********************************************************************************|
|                        GESTIÓN DE EQUIPO - "INSIGNIAS"                         |
|********************************************************************************/

class FCLA_Insignia {
  icon = "\FCLA_data\ACE_Actions\Insignia_Management.paa";
  condition = "!(_player getVariable ['FCLA_Disable_Insignias', false])";
  displayName = "Insignia";


  class Takana_Insignia {
    icon = "\FCLA_Interactions\Insignias\data\pictures\Takana.paa";
    condition = "!(_player getVariable ['FCLA_Disable_Insignias', false])";
    statement = "[_player, 'FCLA_Takana'] spawn FCLA_Interactions_fnc_statementInsignias;";
    displayName = "Takana";
  };

  class Jaguar_Insignia {
    icon = "\FCLA_Interactions\Insignias\data\pictures\Jaguar.paa";
    condition = "!(_player getVariable ['FCLA_Disable_Insignias', false])";
    statement = "[_player, 'FCLA_Jaguar'] spawn FCLA_Interactions_fnc_statementInsignias;";
    displayName = "Jaguar";
  };

  class Condor_Insignia {
    icon = "\FCLA_Interactions\Insignias\data\pictures\Condor.paa";
    condition = "!(_player getVariable ['FCLA_Disable_Insignias', false])";
    statement = "[_player, 'FCLA_Condor'] spawn FCLA_Interactions_fnc_statementInsignias;";
    displayName = "Condor";
  };

  class Salamandra_Insignia {
    icon = "\FCLA_Interactions\Insignias\data\pictures\Salamandra.paa";
    condition = "!(_player getVariable ['FCLA_Disable_Insignias', false])";
    statement = "[_player, 'FCLA_Salamandra'] spawn FCLA_Interactions_fnc_statementInsignias;";
    displayName = "Salamandra";
  };

  class Anaconda_Insignia {
    icon = "\FCLA_Interactions\Insignias\data\pictures\Anaconda.paa";
    condition = "!(_player getVariable ['FCLA_Disable_Insignias', false])";
    statement = "[_player, 'FCLA_Anaconda'] spawn FCLA_Interactions_fnc_statementInsignias;";
    displayName = "Anaconda";
  };

  class Quetzal_Insignia {
    icon = "\FCLA_Interactions\Insignias\data\pictures\Quetzal.paa";
    condition = "!(_player getVariable ['FCLA_Disable_Insignias', false])";
    statement = "[_player, 'FCLA_Quetzal'] spawn FCLA_Interactions_fnc_statementInsignias;";
    displayName = "Quetzal";
  };

  class Medic_Insignia {
    icon = "\FCLA_Interactions\Insignias\data\pictures\Medic.paa";
    condition = "!(_player getVariable ['FCLA_Disable_Insignias', false])";
    statement = "[_player, 'FCLA_Medic'] spawn FCLA_Interactions_fnc_statementInsignias;";
    displayName = "Médico";
  };
};
