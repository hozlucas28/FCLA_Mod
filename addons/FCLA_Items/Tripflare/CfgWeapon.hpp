
/***************************************************************************|
|                        ARMAS - "TRAMPA DE BENGALA"                        |
|***************************************************************************/

class Put: Default {
  class PutMuzzle: Default {};
  class FCLA_Muzzle_Tripflare: PutMuzzle {magazines[] = {"FCLA_Magazine_Tripflare"};};

  muzzles[] += {"FCLA_Muzzle_Tripflare"};
};
