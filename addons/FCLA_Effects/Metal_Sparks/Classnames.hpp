
/********************************************************************************|
|                         CLASSNAMES - "CHISPAS DE METAL"                        |
|********************************************************************************/

class ImpactMetal {
	class LightExp {
		position[] = {0, 0, 0};
		simulation = "light";
		type = "Metal_Sparks_Bullet_Explode";
		intensity = 1;
		interval = 1;
		lifeTime = 1;
	};

	class Sparks_Drop {
		simulation = "particles";
		type = "Metal_Sparks_Drop";
		position[] = {0, 0, 0};
		intensity = 1;
		interval = 11;
		lifeTime = 1.5;
		qualityLevel = 2;
	};

	class Sparks_Burst {
		simulation = "particles";
		type = "Metal_Sparks_Burst";
		position[] = {0, 0, 0};
		intensity = 1;
		interval = 0.1;
		lifeTime = 0.40000001;
		randomDirectionPeriodVar = 1;
		randomDirectionIntensityVar = 1;
	};

	class Sparks_Omni {
		simulation = "particles";
		type = "Metal_Sparks_Omni";
		position[] = {0, 0, 0};
		intensity = 1;
		interval = 10;
		randomDirectionPeriodVar = 0.5;
		randomDirectionIntensityVar = 2;
		qualityLevel = 2;
		lifeTime = 1;
	};
};
