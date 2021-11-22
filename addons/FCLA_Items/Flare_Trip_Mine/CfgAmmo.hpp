
/***************************************************************************|
|                  MUNICIONES - "BENGALA CON CABLE TRAMPA"                  |
|***************************************************************************/

class ACE_FlareTripMine_Wire_Ammo: APERSTripMine_Wire_Ammo {
  explosionEffects = "";
  class EventHandlers {
    AmmoHit = "_this remoteExec ['FCLA_Items_fnc_initFlareTripMine'];";
  };
};
