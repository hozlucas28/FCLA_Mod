
/***************************************************************************|
|                         MUNICIONES - "LANZABLES"                          |
|***************************************************************************/

class FCLA_Ammo_Stone: GrenadeHand {
  timeToLive = 900;
  grenadeFireSound[] = {};
  grenadeBurningSound[] = {};
  model = "\FCLA_Items\Throwables\data\models\Stone.p3d";
  simulation = "shotShell";
  SoundSetExplosion[] = {""};
  soundHit[] = {"", 0, 1};
  hit = 1; //5
  cost = 1;
  CraterEffects = ""; 
  explosionEffects = "";
  indirectHit = 0;
  indirectHitRange = 0;
  deflecting = 5;
  airFriction = -0.001;
  whistleDist = 16;
  typicalSpeed = 26;
  explosionTime = 0;
  fuseDistance = 0.5;
  directionalExplosion = 0;
  deflectionSlowDown = 0.8;
  simulationStep = 0.05;
  supersonicCrackNear[] = {};
  supersonicCrackFar[] = {};
  soundHit1[] = {};
  soundHit2[] = {};
  soundHit3[] = {};
  soundHit4[] = {};
  multiSoundHit[] = {};

  class CamShakeExplode {
    power = 0;
    duration = 0;
    frequency = 0;
    distance = 0;
  };

	class CamShakeHit	{
    power = 0;
    duration = 0;
    frequency = 0;
    distance = 0;
	};

	class CamShakeFire {
    power = 0;
    duration = 0;
    frequency = 0;
    distance = 0;
	};

	class CamShakePlayerFire {
    power = 0;
    duration = 0;
    frequency = 0;
    distance = 0;
  };
};


class FCLA_Ammo_Can: GrenadeHand {
  model = "\a3\structures_f\items\food\can_dented_f.p3d";
  ace_frag_enabled = 0;
  ace_frag_skip = 1;
  ace_frag_force = 0;
  cost = 1;
  hit = 100;
  indirectHit = 0.2;
  indirectHitRange = 1;
  dangerRadiusHit = 60;
  suppressionRadiusHit = 24;
  explosive = 0;
  explosionEffectsRadius = 0;
  explosionTime = 99999999999999;
  timeToLive = 60;
  simulation = "shotGrenade";
  aiAmmoUsageFlags = "1 + 2 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512";
  allowAgainstInfantry = 1;
  effectsSmoke = "EmptyEffect";
  explosionSoundEffect = "FCLA_Can";
  CraterEffects = "NoCrater";
  explosionEffects = "NoExplosion";
  CraterWaterEffects = "ImpactEffectsWaterExplosion";
  smokeColor[] = {0,0,0,0};
  grenadeFireSound[] = {};
  grenadeBurningSound[] = {};

  soundImpactDefault1[] = {"\FCLA_Items\sounds\Can.wav",  2.5118864,  1,  200};
  soundHit1[] = {"\FCLA_Items\sounds\Can.wav",  2.5118864,  1,  1500};
  soundHit2[] = {"\FCLA_Items\sounds\Can.wav", 2.5118864, 1, 1500};
  soundHit3[] = {"\FCLA_Items\sounds\Can.wav", 2.5118864, 1, 1500};
  soundHit4[] = {"\FCLA_Items\sounds\Can.wav", 2.5118864, 1, 1500};
  multiSoundHit[] = {"soundHit1", 0.25, "soundHit2", 0.25, "soundHit3", 0.25, "soundHit4", 0.25};

  soundImpactSoft1[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 45};
  soundImpactSoft2[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 45};
  soundImpactSoft3[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 45};
  soundImpactSoft4[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 45};
  soundImpactSoft5[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 45};
  soundImpactSoft6[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 45};
  soundImpactSoft7[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 45};

  soundImpactHard1[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 65};
  soundImpactHard2[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 65};
  soundImpactHard3[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 65};
  soundImpactHard4[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 65};
  soundImpactHard5[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 65};
  soundImpactHard6[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 65};
  soundImpactHard7[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 65};

  soundImpactIron1[] = {"\FCLA_Items\sounds\Can.wav", 1.2589254, 1, 95};
  soundImpactIron2[] = {"\FCLA_Items\sounds\Can.wav", 1.2589254, 1, 95};
  soundImpactIron3[] = {"\FCLA_Items\sounds\Can.wav", 1.2589254, 1, 95};
  soundImpactIron4[] = {"\FCLA_Items\sounds\Can.wav", 1.2589254, 1, 95};
  soundImpactIron5[] = {"\FCLA_Items\sounds\Can.wav", 1.2589254, 1, 95};

  soundImpactWoodExt1[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 75};
  soundImpactWoodExt2[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 75};
  soundImpactWoodExt3[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 75};
  soundImpactWoodExt4[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 75};

  soundImpactWater1[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 55};
  soundImpactWater2[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 55};
  soundImpactWater3[] = {"\FCLA_Items\sounds\Can.wav", 1.4125376, 1, 55};

  impactGroundSoft[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactGroundHard[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};

  impactIron[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2};
  impactArmor[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2};
  impactBuilding[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactFoliage[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactWood[] = {"soundImpactWoodExt1", 0.25, "soundImpactWoodExt2", 0.25, "soundImpactWoodExt3", 0.25, "soundImpactWoodExt4", 0.25};
  impactGlass[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactGlassArmored[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactConcrete[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactTyre[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactRubber[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactPlastic[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactDefault[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactMetal[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2};
  impactMetalplate[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2};
  impactWater[] = {"soundImpactWater1", 0.34999999, "soundImpactWater2", 0.34999999, "soundImpactWater3", 0.30000001};
  soundFly[] = {"", 0.099999994, 1, 20};
  soundEngine[] = {"", 1, 1};

  class HitEffects {hitWater = "EmptyEffect";};
  class CamShakeExplode {
    power = "0";
    duration = "0";
    frequency = 0;
    distance = "0";
  };
};


class FCLA_Ammo_Bottle: FCLA_Ammo_Can {
  model = "a3\structures_f\items\food\bottleplastic_v1_f.p3d";
  ace_frag_enabled = 0;
  ace_frag_skip = 1;
  ace_frag_force = 0;

  soundHit1[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 2.5118864, 1, 1500};
  soundHit2[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 2.5118864, 1, 1500};
  soundHit3[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 2.5118864, 1, 1500};
  soundHit4[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 2.5118864, 1, 1500};
  multiSoundHit[] = {"soundHit1", 0.25, "soundHit2", 0.25, "soundHit3", 0.25, "soundHit4", 0.25};

  soundImpactSoft1[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 45};
  soundImpactSoft2[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 45};
  soundImpactSoft3[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 45};
  soundImpactSoft4[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 45};
  soundImpactSoft5[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 45};
  soundImpactSoft6[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 45};
  soundImpactSoft7[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 45};

  soundImpactHard1[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 65};
  soundImpactHard2[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 65};
  soundImpactHard3[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 65};
  soundImpactHard4[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 65};
  soundImpactHard5[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 65};
  soundImpactHard6[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 65};
  soundImpactHard7[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 65};

  soundImpactIron1[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.2589254, 1, 95};
  soundImpactIron2[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.2589254, 1, 95};
  soundImpactIron3[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.2589254, 1, 95};
  soundImpactIron4[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.2589254, 1, 95};
  soundImpactIron5[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.2589254, 1, 95};

  soundImpactWoodExt1[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 75};
  soundImpactWoodExt2[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 75};
  soundImpactWoodExt3[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 75};
  soundImpactWoodExt4[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 75};

  soundImpactWater1[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 55};
  soundImpactWater2[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 55};
  soundImpactWater3[] = {"a3\sounds_f\characters\footsteps\stony_sprint_8", 1.4125376, 1, 55};

  impactGroundSoft[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactGroundHard[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};

  impactIron[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2};
  impactArmor[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2};
  impactBuilding[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactFoliage[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactWood[] = {"soundImpactWoodExt1", 0.25, "soundImpactWoodExt2", 0.25, "soundImpactWoodExt3", 0.25, "soundImpactWoodExt4", 0.25};
  impactGlass[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactGlassArmored[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactConcrete[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactTyre[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactRubber[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactPlastic[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactDefault[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactMetal[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2};
  impactMetalplate[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2};
  impactWater[] = {"soundImpactWater1", 0.34999999, "soundImpactWater2", 0.34999999, "soundImpactWater3", 0.30000001};
  soundFly[] = {"", 0.099999994, 1, 20};
  soundEngine[] = {"", 1, 1};
};


class FCLA_Ammo_Molotov: GrenadeHand {
  ace_frag_enabled = 0;
  ace_frag_skip = 1;
  ace_frag_force = 0;
  cost = 1;
  simulation = "shotSmokeX";
  dangerRadiusHit = 60;
  suppressionRadiusHit = 24;
  explosive = 0;
  explosionEffectsRadius = 0;
  explosionTime = 0;
  typicalspeed = 10;
  deflecting = 0;
  timeToLive = 40;
  aiAmmoUsageFlags = "1 + 2 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512";
  allowAgainstInfantry = 1;
  effectsSmoke = "FCLA_Molotov";
  CraterEffects = "NoCrater";
  explosionEffects = "FCLA_Molotov";
  CraterWaterEffects = "ImpactEffectsWaterExplosion";
  smokeColor[] = {0,0,0,0};
  model = "\FCLA_Items\Throwables\data\models\Sig.p3d";
  SmokeShellSoundHit1[] = {};
  SmokeShellSoundLoop1[] = {"A3\sounds_f\sfx\fire1_loop", 0.12589253, 1, 70};
  SmokeShellSoundLoop2[] = {"A3\sounds_f\sfx\fire2_loop", 0.12589253, 1, 70};
  grenadeFireSound[] = {};
  grenadeBurningSound[] = {"SmokeShellSoundLoop1", 0.5, "SmokeShellSoundLoop2", 0.5};

  soundImpactDefault1[] = {"\FCLA_Items\sounds\Molotov.wav", 2.5118864, 1, 200};
  soundHit1[] = {"\FCLA_Items\sounds\Molotov.wav", 2.5118864, 1, 1500};
  soundHit2[] = {"\FCLA_Items\sounds\Molotov.wav", 2.5118864, 1, 1500};
  soundHit3[] = {"\FCLA_Items\sounds\Molotov.wav", 2.5118864, 1, 1500};
  soundHit4[] = {"\FCLA_Items\sounds\Molotov.wav", 2.5118864, 1, 1500};
  multiSoundHit[] = {"soundHit1", 0.25, "soundHit2", 0.25, "soundHit3", 0.25, "soundHit4", 0.25};

  soundImpactSoft1[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 45};
  soundImpactSoft2[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 45};
  soundImpactSoft3[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 45};
  soundImpactSoft4[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 45};
  soundImpactSoft5[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 45};
  soundImpactSoft6[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 45};
  soundImpactSoft7[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 45};

  soundImpactHard1[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 65};
  soundImpactHard2[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 65};
  soundImpactHard3[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 65};
  soundImpactHard4[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 65};
  soundImpactHard5[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 65};
  soundImpactHard6[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 65};
  soundImpactHard7[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 65};

  soundImpactIron1[] = {"\FCLA_Items\sounds\Molotov.wav", 1.2589254, 1, 95};
  soundImpactIron2[] = {"\FCLA_Items\sounds\Molotov.wav", 1.2589254, 1, 95};
  soundImpactIron3[] = {"\FCLA_Items\sounds\Molotov.wav", 1.2589254, 1, 95};
  soundImpactIron4[] = {"\FCLA_Items\sounds\Molotov.wav", 1.2589254, 1, 95};
  soundImpactIron5[] = {"\FCLA_Items\sounds\Molotov.wav", 1.2589254, 1, 95};

  soundImpactWoodExt1[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 75};
  soundImpactWoodExt2[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 75};
  soundImpactWoodExt3[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 75};
  soundImpactWoodExt4[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 75};

  soundImpactWater1[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 55};
  soundImpactWater2[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 55};
  soundImpactWater3[] = {"\FCLA_Items\sounds\Molotov.wav", 1.4125376, 1, 55};

  impactGroundSoft[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactGroundHard[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};

  impactIron[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2  };
  impactArmor[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2  };
  impactBuilding[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactFoliage[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactWood[] = {"soundImpactWoodExt1", 0.25, "soundImpactWoodExt2", 0.25, "soundImpactWoodExt3", 0.25, "soundImpactWoodExt4", 0.25};
  impactGlass[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactGlassArmored[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactConcrete[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactTyre[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactRubber[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactPlastic[] = {"soundImpactSoft1", 0.2, "soundImpactSoft2", 0.2, "soundImpactSoft3", 0.2, "soundImpactSoft4", 0.1, "soundImpactSoft5", 0.1, "soundImpactSoft6", 0.1, "soundImpactSoft7", 0.1};
  impactDefault[] = {"soundImpactHard1", 0.2, "soundImpactHard2", 0.2, "soundImpactHard3", 0.2, "soundImpactHard4", 0.1, "soundImpactHard5", 0.1, "soundImpactHard6", 0.1, "soundImpactHard7", 0.1};
  impactMetal[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2  };
  impactMetalplate[] = {"soundImpactIron1", 0.2, "soundImpactIron2", 0.2, "soundImpactIron3", 0.2, "soundImpactIron4", 0.2, "soundImpactIron5", 0.2  };
  impactWater[] = {"soundImpactWater1", 0.34999999, "soundImpactWater2", 0.34999999, "soundImpactWater3", 0.30000001};
  soundFly[] = {"", 0.099999994, 1, 20};
  soundEngine[] = {"", 1, 1};

  class HitEffects {hitWater = "EmptyEffect";};
  class CamShakeExplode {
    power = "0";
    duration = "0";
    frequency = 0;
    distance = "0";
  };
};
