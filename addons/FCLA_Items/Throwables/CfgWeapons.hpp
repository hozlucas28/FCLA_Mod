
/***************************************************************************|
|                            ARMAS - "LANZABLES"                            |
|***************************************************************************/

class Throw: GrenadeLauncher {
	class ThrowMuzzle;
	class FCLA_Muzzle_Grenade: ThrowMuzzle	{magazines[] = {"FCLA_Magazine_Stone"};};
	class FCLA_Muzzle_Can: ThrowMuzzle {magazines[] = {"FCLA_Magazine_Can"};};
	class FCLA_Muzzle_Bottle: ThrowMuzzle {magazines[] = {"FCLA_Magazine_Bottle"};};
	class FCLA_Muzzle_Molotov: ThrowMuzzle {magazines[] = {"FCLA_Magazine_Molotov"};};

	muzzles[] += {"FCLA_Muzzle_Grenade", "FCLA_Muzzle_Can", "FCLA_Muzzle_Bottle", "FCLA_Muzzle_Molotov"};
};
