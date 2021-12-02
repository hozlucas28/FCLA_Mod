
/********************************************************************************|
|                   VEHÍCULOS - "IDENTIFICACIÓN PERSONALIZADA"                   |
|********************************************************************************/

class FCLA_Custom_ID: Module_F {
  author = "hozlucas28";
  displayName = "Identificación personalizada";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_initCustomID";
  functionPriority = 1;
  isGlobal = 0;
  isTriggerActivated = 1;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;

  class Arguments {
    class Unit_ID_nameAndSurname {
      displayName = "Nombre y apellido";
      typeName = "STRING";
      defaultValue = "Tomas Morgan";
    };

    class Unit_ID_Age {
      displayName = "Edad";
      typeName = "STRING";
      defaultValue = "23";
    };

    class Unit_ID_POB {
      displayName = "Lugar de nacimiento";
      typeName = "STRING";
      defaultValue = "Pyrgos";
    };
  };
};
