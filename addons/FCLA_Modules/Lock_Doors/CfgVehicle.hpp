
/********************************************************************************|
|                         VEHÍCULOS - "BLOQUEAR PUERTAS"                         |
|********************************************************************************/

class FCLA_Lock_Doors: Module_F {
  author = "hozlucas28";
  displayName = "Bloquear puertas";
  category = "FCLA_Faction_Modules";
  function = "FCLA_Modules_fnc_initLockDoors";
  functionPriority = 1;
  isGlobal = 0;
  isTriggerActivated = 1;
  isDisposable = 1;
  is3DEN = 0;
  scope = 2;

  class Arguments {
    class LD_Range {
      displayName = "Radio";
      description = "Radio en metros en donde aquellos edificios, dentro del area definida, bloquearan sus puertas.";
      typeName = "NUMBER";
      defaultValue = "50";
    };
  };
};
