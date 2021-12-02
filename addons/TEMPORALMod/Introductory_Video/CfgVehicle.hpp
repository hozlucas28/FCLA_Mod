
/********************************************************************************|
|                      VEHÍCULOS - "VIDEO DE INTRODUCCIÓN"                       |
|********************************************************************************/

class FCLA_Introductory_Video: Module_F {
  author = "hozlucas28";
  displayName = "Video de introducción";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_initIntroductoryVideo";
  functionPriority = 1;
  isGlobal = 1;
  isTriggerActivated = 0;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;

  class Arguments {
    class IV_Path {
      displayName = "Ruta";
      description = "Coloca la ruta ó dirección del video en formato .ogv que buscas reproducir al comienzo de la misión.\n¡NO COLOQUE MÁS DE UN MÓDULO DE 'VIDEO DE INTRODUCCIÓN'!";
      typeName = "STRING";
      defaultValue = "Mi_Video.ogv";
    };

    class IV_Duration {
      displayName = "Duración";
      description = "Duración exacta del video en segundos.";
      typeName = "NUMBER";
      defaultValue = "15";
    };
  };
};
