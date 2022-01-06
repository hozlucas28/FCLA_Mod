
/********************************************************************************|
|                            ARMAS - "PERSONALIZADAS"                            |
|********************************************************************************/



/* ---------------------- CASCO DE PILOTO (AVANZADO) ----------------------- */

class H_PilotHelmetFighter_Advanced: H_PilotHelmetFighter_B {
  author = "hozlucas28";
  displayName = "Casco de piloto de helicóptero [OTAN]";
  hiddenSelections[] = {};
  hiddenSelectionsTextures[] = {};
  picture = "\FCLA_Headgears\Custom\data\pictures\H_PilotHelmetFighter_Advanced.paa";
  model = "\FCLA_Headgears\Custom\data\H_PilotHelmetFighter_Advanced\H_PilotHelmetFighter_Advanced.p3d";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo {
    _generalMacro = "HeadgearItem";
    author = "hozlucas28";
    allowedSlots[] = {901, 605};
    hiddenSelections[] = {};
    uniformModel = "\FCLA_Headgears\Custom\data\H_PilotHelmetFighter_Advanced\H_PilotHelmetFighter_Advanced.p3d";
    modelSides[] = {3, 1};
    type = 605;
    mass = 60;
    scope = 0;

    class HitpointsProtectionInfo {
      class Face {
        armor = 4;
        hitpointName = "HitFace";
        passThrough = 0.5;
      };

      class Head {
        armor = 8;
        hitpointName = "HitHead";
        passThrough = 0.5;
      };
    };
  };
};
