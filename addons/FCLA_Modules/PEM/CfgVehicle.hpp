
/********************************************************************************|
|                               VEHÍCULOS - "PEM"                                |
|********************************************************************************/

class FCLA_PEM: Module_F {
  author = "hozlucas28";
  displayName = "PEM";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_initPEM";
  functionPriority = 1;
  isGlobal = 0;
  isTriggerActivated = 1;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;

  class Arguments {
    class PEM_Range {
      displayName = "Radio";
      description = "Radio en metros que afectara el pulso PEM.";
      typeName = "NUMBER";
      defaultValue = "500";
    };

    class PEM_isVisible {
      displayName = "¿Efecto visible?";
      description = "Si el efecto es visible a la vista.";
      typeName = "BOOL";

      class Values {
        class true {
          name = "Si";
          value = true;
          default = 1;
        };

        class false {
          name = "No";
          value = false;
        };
      };
    };

    class PEM_isVision_Affected {
      displayName = "¿Dañar visión?";
      description = "Si el pulso PEM daña por alrededor de 30 segundos la visión del jugador.";
      typeName = "BOOL";

      class Values {
        class true {
          name = "Si";
          value = true;
          default = 1;
        };

        class false {
          name = "No";
          value = false;
        };
      };
    };
  };
};
