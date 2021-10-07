
/********************************************************************************|
|                            MUNICIONES - "LANZADOR"                             |
|********************************************************************************/

class FCLA_R_MRAAWS_Illumination_545_F: R_MRAAWS_HE_F {
	submunitionAmmo = "F_40mm_Yellow";
	ExplosionEffects = "";
	explosionEffectsDir = "";
	hit = 30;
	caliber = 1;
	explosive = 0;
	brightness = 120;
	triggerTime = 0.7;
	indirectHit = 0;
	triggerOnImpact = 1;
	triggerDistance = 5;
	indirectHitRange = 2;
	submunitionInitSpeed = 1;
	deleteParentWhenTriggered = 1;
	submunitionInitialOffset[] = {0, 0, 0.1};
};

class FCLA_R_MRAAWS_Smoke_469_F: R_MRAAWS_HE_F {
	submunitionAmmo = "G_40mm_Smoke";
	ExplosionEffects = "";
	explosionEffectsDir = "";
	hit = 30;
	caliber = 1;
	explosive = 0;
	indirectHit = 0;
	triggerDistance = 5;
	triggerOnImpact = 1;
	indirectHitRange = 2;
	submunitionInitSpeed = 0;
	submunitionConeAngle = 20;
	deleteParentWhenTriggered = 1;
	submunitionConeAngleHorizontal = 50;
	submunitionConeType[] = {"poissondisccenter", 3};
};
