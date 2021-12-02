
/********************************************************************************|
|                               VEHÍCULOS - "CBRN"                               |
|********************************************************************************/



/* ----------------------------- CONFIGURACIÓN ----------------------------- */

class FCLA_CBRN_Configuration: Module_F {
  author = "hozlucas28";
  displayName = "Configuración (CBRN)";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_initConfiguration_CBRN";
  functionPriority = 1;
  isGlobal = 1;
  isTriggerActivated = 0;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;

  class Arguments {
    class CBRN_Config_maxDamage {
      displayName = "Daño";
      description = "Daño máximo que se recibira antes de morir.";
      typeName = "NUMBER";
      defaultValue = "100";
    };

    class CBRN_Config_maxOxygenTime {
      displayName = "Tiempo de oxígeno";
      description = "Tiempo máximo de oxígeno, ¡EN MINUTOS (NÚMERO ENTERO)!";
      typeName = "NUMBER";
      defaultValue = "15";
    };

    class CBRN_Config_APRs {
      displayName = "Lista de respiradores";
      description = "Lista con los classnames de las máscaras APRs compatibles. ¡DEBEN ESTAR SEPARADOS POR UNA COMA!";
      typeName = "STRING";
      defaultValue = "G_AirPurifyingRespirator_02_sand_F, G_AirPurifyingRespirator_02_black_F, G_AirPurifyingRespirator_02_olive_F, G_AirPurifyingRespirator_01_F, G_AirPurifyingRespirator_01_nofilter_F, G_RegulatorMask_F";
    };

    class CBRN_Config_Uniforms {
      displayName = "Lista de uniformes";
      description = "Lista con los classnames de los uniformes compatibles. ¡DEBEN ESTAR SEPARADOS POR UNA COMA!";
      typeName = "STRING";
      defaultValue = "U_B_CBRN_Suit_01_MTP_F, U_B_CBRN_Suit_01_Wdl_F, U_B_CBRN_Suit_01_Tropic_F, U_I_CBRN_Suit_01_AAF_F, U_I_E_CBRN_Suit_01_EAF_F, U_C_CBRN_Suit_01_Blue_F, U_C_CBRN_Suit_01_White_F";
    };

    class CBRN_Config_Backpacks {
      displayName = "Lista de mochilas";
      description = "Lista con los classnames de las mochilas que funcionan como respiradores compatibles. ¡DEBEN ESTAR SEPARADOS POR UNA COMA!";
      typeName = "STRING";
      defaultValue = "B_CombinationUnitRespirator_01_F, B_SCBA_01_F";
    };
  };
};



/* ------------------------------ CREAR ZONA ------------------------------- */

class FCLA_CBRN_Create_Zone: Module_F {
  author = "hozlucas28";
  displayName = "Crear zona (CBRN)";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_createZone_CBRN";
  functionPriority = 1;
  isGlobal = 0;
  isTriggerActivated = 1;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;

  class Arguments {
    class CBRN_CZ_threatLevel {
      displayName = "Nivel de amenaza";
      description = "Nivel 1: necesita APR (máscara).\nNivel 2: necesita APR (máscara) y respirador (mochila).\nNivel 3: necesita APR (máscara), respirador (mochila) y uniforme NRBQ.\nMayores a nivel 3: mismas necesidades que el nivel 3, pero el daño recibido sera mayor según el nivel elegido.";
      typeName = "NUMBER";

      class Values {
        class threatLevel_N1 {
          name = "1";
          value = 1;
          default = 1;
        };

        class threatLevel_N2 {
          name = "2";
          value = 2;
        };

        class threatLevel_N3 {
          name = "3";
          value = 3;
        };

        class threatLevel_N4 {
          name = "4";
          value = 4;
        };

        class threatLevel_N5 {
          name = "5";
          value = 5;
        };
      };
    };

    class CBRN_CZ_Radius_maxThreatLevel {
      displayName = "Radio (efecto completo)";
      description = "Radio en metros donde el efecto de la amenaza es completo.";
      typeName = "NUMBER";
      defaultValue = "25";
    };

    class CBRN_CZ_Radius {
      displayName = "Radio";
      description = "Radio en metros que abarca la amenaza.";
      typeName = "NUMBER";
      defaultValue = "50";
    };
  };
};
