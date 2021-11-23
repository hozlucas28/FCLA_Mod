
/********************************************************************************|
|                            ARMAS - "LINTERNA ROJA"                             |
|********************************************************************************/

class FCLA_Flashlight_Red: ItemCore {
  author = "hozlucas28";
  displayName = "UTG Defender 126 (roja)";
  descriptionShort = "<t color='#9cf953'>Usar: </t>encender/apagar linterna";
  model = "\A3\weapons_f\acc\accv_Flashlight_F.p3d";
  picture = "\A3\weapons_F\Data\UI\gear_accv_flashlight_CA.paa";
  inertia = 0.1;
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: InventoryFlashLightItem_Base_F {
    mass = 4;
    class FlashLight {
      intensity = 880;
      size = 1;
      useFlare = 1;
      dayLight = 0;
      position = "flash dir";
      flareSize = 1.4;
      direction = "flash";
      innerAngle = 5;
      outerAngle = 150;
      volumeShape = "a3\data_f\VolumeLightFlashlight.p3d";
      coneFadeCoef = 8;
      flareMaxDistance = 100;
      scale[] = {1, 1, 1};
      color[] = {0.85799998, 0, 0};
      ambient[] = {0.85799998, 0, 0};

      class Attenuation {
        start = 0;
        linear = 0.1;
        constant = 0.5;
        quadratic = 0.2;
        hardLimitEnd = 34;
        hardLimitStart = 27;
      };
    };
  };
};
