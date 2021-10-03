
/********************************************************************************|
|                     VEHÍCULOS - "PARACAÍDAS PERSONALIZADO"                     |
|********************************************************************************/

class ParachuteBase: Helicopter {
  _generalMacro = "ParachuteBase";
  author = "$STR_A3_Bohemia_Interactive";
  displayName = "$STR_DN_PARACHUTE";
  Icon = "iconParachute";
  picture = "\A3\Air_F_Beta\Parachute_01\Data\UI\Portrait_Parachute_01_CA.paa";
  model = "\FCLA_Core\Custom_Parachute\Parachute.p3d";
  mapSize = 20;
  textSingular = "$STR_A3_nameSound_veh_air_parachute_s";
  textPlural = "$STR_A3_nameSound_veh_air_parachute_p";
  nameSound = "veh_air_parachute_s";
  animationOpen = "A3\Air_F_Beta\Parachute_01\Data\Anim\para_opening.rtm";
  animationDrop = "A3\Air_F_Beta\Parachute_01\Data\Anim\para_landing.rtm";
  getOutAction = "GetOutPara";
  camouflage = 2;
  audible = 0.050000001;
  castDriverShadow = 1;
  driverAction = "Para_Pilot";
  damageEffect = "";
  occludeSoundsWhenIn = 1;
  obstructSoundsWhenIn = 1;
  enableGPS = 0;
  enableRadio = 0;
  radarTarget = 0;
  radarTargetSize = 0;
  visualTarget = 0;
  visualTargetSize = 0;
  threat[] = {0, 0, 0};

  soundEnviron[] = {"A3\sounds_f\dummysound", 0.31622776, 1, 80};
  soundGetIn[] = {"A3\sounds_f\dummysound", 0.31622776, 1, 20};
  soundGetOut[] = {"A3\sounds_f\dummysound", 0.31622776, 1, 20};
  soundCrash[] = {"A3\sounds_f\dummysound", 0.031622775, 1, 50};
  soundLandCrash[] = {"A3\sounds_f\dummysound",	0.031622775, 1, 50};
  soundWaterCrash[] = {"A3\sounds_f\dummysound", 3.1622777, 1, 80};

  class TransportItems {};
  class Turrets	{};
  class EventHandlers	{};
  class Reflectors {};

  class ViewPilot: ViewPilot {initFov = 0.75;};
  class SpeechVariants {
    class Default	{
      speechSingular[] =	{"veh_air_parachute_s"};
      speechPlural[] = {"veh_air_parachute_p"};
    };
  };
};
