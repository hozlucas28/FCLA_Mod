
/***************************************************************************|
|                            ARMAS - "LANZABLES"                            |
|***************************************************************************/

class Throw: GrenadeLauncher {
	class ThrowMuzzle;
	class FCLA_Can: ThrowMuzzle {magazines[] = {"FCLA_Can"};};
	class FCLA_Bottle: ThrowMuzzle {magazines[] = {"FCLA_Bottle"};};
	class FCLA_Molotov: ThrowMuzzle {magazines[] = {"FCLA_Molotov"};};
	class FCLA_Grenade: ThrowMuzzle	{magazines[] = {"FCLA_Stone"};};

	muzzles[] += {"FCLA_Grenade", "FCLA_Can", "FCLA_Bottle", "FCLA_Molotov"};
};
