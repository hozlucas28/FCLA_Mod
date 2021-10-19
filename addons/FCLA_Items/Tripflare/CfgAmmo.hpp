
/***************************************************************************|
|                     MUNICIONES - "TRAMPA DE BENGALA"                      |
|***************************************************************************/

class FCLA_Ammo_Tripflare : APERSTripMine_Wire_Ammo {
  hit = 1;
  indirectHit = 0;
  indirectHitRange = 0;
  minimumSafeZone = 0;
  defaultMagazine = "FCLA_Magazine_Tripflare";
  explosionEffects = "";
  craterEffects = "";
  model = "\A3\Weapons_F\Explosives\Flare_tripwire.p3d";
  mineModelDisabled = "\A3\Weapons_F\Explosives\Flare_tripwire_d.p3d";
  soundHit[] = {};
  SoundSetExplosion[] = {};
  class EventHandlers {AmmoHit = "_this remoteExec ['FCLA_Items_fnc_initTripflare']";};
};
