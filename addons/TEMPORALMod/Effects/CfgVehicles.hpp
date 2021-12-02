
/********************************************************************************|
|                       VEHÍCULOS - "EFECTOS AMBIENTALES"                        |
|********************************************************************************/



/* ------------------------------ LUCIÉRNAGAS ------------------------------ */

class FCLA_Fireflies_Effect: Module_F {
  author = "hozlucas28";
  displayName = "Luciérnagas";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_initEffect";
  functionPriority = 1;
  isGlobal = 0;
  isTriggerActivated = 1;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;
};



/* ------------------------------- CHISPAS -------------------------------- */

class FCLA_Spark_Effect: Module_F {
  author = "hozlucas28";
  displayName = "Chispas";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_initEffect";
  functionPriority = 1;
  isGlobal = 0;
  isTriggerActivated = 1;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;

  class Arguments {
    class Effect_Delay {
      displayName = "Delay";
      description = "Segundos que tardara el efecto en repetirse, al colocar valores menores a 0.5 el delay sera de manera random.";
      typeName = "NUMBER";
      defaultValue = "0";
    };
  };
};



/* --------------------------- POLVO SUSPENDIDO ---------------------------- */

class FCLA_Suspended_Dust_Effect: Module_F {
  author = "hozlucas28";
  displayName = "Polvo suspendido";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_initEffect";
  functionPriority = 1;
  isGlobal = 0;
  isTriggerActivated = 1;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;
};



/* ---------------------------- RÁFAGA DE POLVO ---------------------------- */

class FCLA_Dust_Burst_Effect: Module_F {
  author = "hozlucas28";
  displayName = "Ráfaga de polvo";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_initEffect";
  functionPriority = 1;
  isGlobal = 0;
  isTriggerActivated = 1;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;

  class Arguments {
    class Effect_onStart {
      displayName = "¿Generar efecto al activar?";
      description = "Genera el efecto una vez se activa el módulo sin un tiempo de espera.\nColocar 'No' si se trata de un módulo que quieres ejecutar al inicio del escenario.";
      typeName = "BOOL";

      class Values {
        class true {
          name = "Si";
          value = true;
        };

        class false {
          name = "No";
          value = false;
          default = 1;
        };
      };
    };

    class Effect_Delay {
      displayName = "Delay";
      description = "El efecto eligira un número random del 0 al colocado que se sumara al delay de 15 segundos que tiene por default el efecto.";
      typeName = "NUMBER";
      defaultValue = "0";
    };
  };
};



/* ---------------------------- TORBELLINO DE POLVO ---------------------------- */

class FCLA_Dust_Whirlwinds_Effect: Module_F {
  author = "hozlucas28";
  displayName = "Torbellinos de polvo";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_initEffect";
  functionPriority = 1;
  isGlobal = 0;
  isTriggerActivated = 1;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;

  class Arguments {
    class Effect_onStart {
      displayName = "¿Generar efecto al activar?";
      description = "Genera el efecto una vez se activa el módulo sin un tiempo de espera.\nColocar 'No' si se trata de un módulo que quieres ejecutar al inicio del escenario.";
      typeName = "STRING";

      class Values {
        class true {
          name = "Si";
          value = true;
        };

        class false {
          name = "No";
          value = false;
          default = 1;
        };
      };
    };

    class Effect_Delay {
      displayName = "Delay";
      description = "Tiempo en segundos que tardara en volver a spawnear el torbellino una vez que este desaparece.";
      typeName = "NUMBER";
      defaultValue = "0";
    };
  };
};



/* ----------------------------- SEÑAL DE HUMO ----------------------------- */

class FCLA_Smoke_Signal_Effect: Module_F {
  author = "hozlucas28";
  displayName = "Señal de humo";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_initEffect";
  functionPriority = 1;
  isGlobal = 0;
  isTriggerActivated = 1;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;

  class Arguments {
    class Effect_Color {
      displayName = "Color";
      typeName = "STRING";

      class Values {
        class white {
          name = "Blanco";
          value = "White";
          default = 1;
        };

        class red {
          name = "Rojo";
          value = "Red";
        };

        class blue {
          name = "Azul";
          value = "Blue";
        };

        class green {
          name = "Verde";
          value = "Green";
        };

        class orange {
          name = "Naranja";
          value = "Orange";
        };

        class yellow {
          name = "Amarillo";
          value = "Yellow";
        };

        class purple {
          name = "Morado";
          value = "Purple";
        };
      };
    };
  };
};
