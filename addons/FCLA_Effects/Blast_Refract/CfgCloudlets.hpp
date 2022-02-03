
/********************************************************************************|
|                         NUBES - "REFRACCION EXPLOSIVA"                         |
|********************************************************************************/

class Blast_Refract: Default {
	angleVar = 1;
	animationName = "";
	animationSpeed[] = {1};
	beforeDestroyScript = "";
	circleRadius = 0;
	circleVelocity[] = {0, 0, 0};
	colorVar[] = {0, 0, 0, 0};
	color[] = {{0.1, 0.1, 0.1, 1}, {0.25, 0.25, 0.25, 1}, {0.5, 0.5, 0.5, 1}, {0, 0, 0, 1}, {0, 0, 0, 0.5}, {0, 0, 0, 0.30000001}};
	interval = "3 * 10";
	lifeTime = 0.40000001;
	lifeTimeVar = 0;
	MoveVelocityVar[] = {0.2, 0.5, 0.2};
	moveVelocity[] = {0, 0, 0};
	onTimerScript = "";
	particleFSFrameCount = 1;
	particleFSIndex = 0;
	particleFSLoop = 0;
	particleFSNtieth = 1;
	particleShape = "\A3\data_f\ParticleEffects\Universal\refract";
	particleType = "Billboard";
	positionVar[] = {0.40000001, 0.1, 0.40000001};
	randomDirectionIntensity = 0.2;
	randomDirectionIntensityVar = 0;
	randomDirectionPeriod = 0.2;
	randomDirectionPeriodVar = 0;
	rotationVelocity = 0;
	rotationVelocityVar = 90;
	rubbing = 0.1;
	sizeVar = 0.5;
	Size[] = {1, 2, 5, 8, 12, 17};
	timerPeriod = 1;
	volume = 7.9000001;
	weight = 10;
};

class Blast_Refract_Small: Blast_Refract {
	lifeTime = 0.60000002;
	Size[] = {1, 2, 5, 8, 12, 17};
};

class Blast_Refract_Medium: Blast_Refract {
	lifeTime = 0.60000002;
	Size[] = {1, 8, 20, 35, 50, 70};
};

class Blast_Refract_Large: Blast_Refract {
	lifeTime = 0.60000002;
	Size[] = {1, 16, 40, 70, 100, 140};
};

class Blast_Refract_Very_Large: Blast_Refract {
	lifeTime = 1;
	Size[] = {1, 35, 80, 140, 200, 280};
};
