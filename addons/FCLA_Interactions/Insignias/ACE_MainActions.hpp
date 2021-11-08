
/********************************************************************************|
|                       ACCIONES PRINCIPALES - "INSIGNIAS"                       |
|********************************************************************************/

class FCLA_Insignia {
  icon = "\FCLA_data\ACE_Actions\Insignia_Management.paa";
  condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
  displayName = "Insignias<br/>(cursos)";


  class Basic_Courses {
    condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
    displayName = "Básicos";

    class CBI_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CBI.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CBI'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CBI";
    };

    class CAI_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CAI.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CAI'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CAI";
    };

    class CPR_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CPR.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CPR'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CPR";
    };
  };


  class Infantry_Courses {
    condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
    displayName = "Infantería";

    class CAL_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CAL.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CAL'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CAL";
    };

    class CFA_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CFA.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CFA'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CFA";
    };

    class CMC_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CMC.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CMC'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CMC";
    };

    class CFG_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CFG.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CFG'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CFG";
    };

    class CEE_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CEE.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CEE'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CEE";
    };
  };


  class Armoring_Courses {
    condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
    displayName = "Blindado";

    class CIM_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CIM.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CIM'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CIM";
    };

    class CTC_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CTC.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CTC'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CTC";
    };
  };


  class Recognition_Courses {
    condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
    displayName = "Reconocimiento";

    class COR_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\COR.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_COR'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "COR";
    };

    class CTS_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CTS.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CTS'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CTS";
    };

    class CFT_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CFT.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CFT'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CFT";
    };

    class OPVNT_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\OPVNT.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_OPVNT'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "OPVNT";
    };
  };


  class Special_Forces_Courses {
    condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
    displayName = "Fuerzas especiales";

    class PARA_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\PARA.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_PARA'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "PARA";
    };

    class CBC_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CBC.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CBC'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CBC";
    };

    class FES_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\FES.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_FES'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "FES";
    };
  };


  class Air_Courses {
    condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
    displayName = "Aéreo";

    class CPH_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CPH.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CPH'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CPH";
    };

    class CPA_Course {
      icon = "\FCLA_Interactions\Insignias\data\pictures\CPA.paa";
      condition = "[_target, _player] call FCLA_Interactions_fnc_conditionExternalInsignias";
      statement = "[_target, 'FCLA_CPA'] spawn FCLA_Interactions_fnc_statementExternalInsignias;";
      displayName = "CPA";
    };
  };
};
