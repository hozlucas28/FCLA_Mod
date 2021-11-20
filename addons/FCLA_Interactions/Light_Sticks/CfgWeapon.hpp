
/********************************************************************************|
|                           ARMAS - "PALILLOS DE LUZ"                            |
|********************************************************************************/

class FCLA_Light_Sticks: NVGoggles {
  author = "hozlucas28";
  displayName = "Palillos de luz";
  descriptionShort = "Palillos para guiar a las aeronaves";
  model = "\FCLA_Interactions\Light_Sticks\data\FCLA_Light_Sticks_onGround.p3d";
  picture = "\FCLA_Interactions\Light_Sticks\data\pictures\FCLA_Light_Sticks.paa";
  visionMode[] = {"Normal"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo {
    mass = 1;
    type = 616;
    hmdType = 0;
    modelOff = "\FCLA_Interactions\Light_Sticks\data\FCLA_Light_Sticks_Equipped.p3d";
    uniformModel = "\FCLA_Interactions\Light_Sticks\data\FCLA_Light_Sticks_onGround.p3d";
  };
};
