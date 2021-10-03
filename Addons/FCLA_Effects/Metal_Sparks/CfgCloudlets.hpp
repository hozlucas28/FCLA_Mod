
/********************************************************************************|
|                           NUBES - "CHISPAS DE METAL"                           |
|********************************************************************************/

class Metal_Sparks_Drop: Default {
	interval = 0.02;
	color[] = {{4, 0.2, 0.1, -500},  {4, 0.2, 0.1, -500}};
	emissiveColor[] = {{563, 180, 55, 0},  {0, 0, 0, 0}};
	lifeTime = 0.050000001;
	lifeTimeVar = 3;
	weight = 1000;
	volume = 0.0020000001;
	rubbing = 0.15000001;
	size[] = {0.025, 0.0049999999, 0};
	sizeVar = 0.5;
	moveVelocity[] = {0.30000001, -2, 0.30000001};
	moveVelocityVar[] = {0.30000001, 0, 0.30000001};
	bounceOnSurface = 0.1;
	bounceOnSurfaceVar = 0.2;
	circleRadius = 0;
	circleVelocity[] = {0, 0, 0};
	particleShape = "\A3\data_f\ParticleEffects\Universal\Universal";
	particleFSNtieth = 16;
	particleFSIndex = 13;
	particleFSFrameCount = 2;
	particleFSLoop = 0;
	angleVar = 360;
	animationName = "";
	particleType = "Billboard";
	timerPeriod = 3;
	rotationVelocity = 1;
	colorCoef[] = {1, 1, 1, 1};
	animationSpeed[] = {1000};
	animationSpeedCoef = 1;
	randomDirectionPeriod = 0;
	randomDirectionIntensity = 0;
	onTimerScript = "";
	beforeDestroyScript = "";
	blockAIVisibility = 0;
	position[] = {0, 0, 0};
	positionVar[] = {0.0099999998, 0.0099999998, 0.0099999998};
	rotationVelocityVar = 0;
	colorVar[] = {0.050000001, 0.050000001, 0.050000001, 5};
	randomDirectionPeriodVar = 0.1;
	randomDirectionIntensityVar = 0.2;
};

class Metal_Sparks_Burst: Metal_Sparks_Drop {
	interval = 0.001;
	color[] = {{4, 0.40000001, 0.2, -500},  {4, 0.2, 0.1, -500}};
	emissiveColor[] = {{563, 405, 22, 0},  {0, 0, 0, 0}};
	lifeTime = 0.015;
	lifeTimeVar = 0.5;
	size[] = {0.029999999, 0.0099999998, 0};
	sizeVar = 0.40000001;
	moveVelocity[] = {"surfNormalX * inSpeed / 250 * 1.33", "surfNormalY * inSpeed / 250 * 1.33", "surfNormalZ * inSpeed / 250"};
	moveVelocityVar[] = {1, 1, 1};
	bounceOnSurface = 0.1;
	bounceOnSurfaceVar = 0.2;
	randomDirectionPeriod = 0;
	randomDirectionIntensity = 0;
	rotationVelocityVar = 0;
	randomDirectionPeriodVar = 0.090000004;
	randomDirectionIntensityVar = 2.3;
};

class Metal_Sparks_Omni: Metal_Sparks_Drop {
	interval = 0.0080000004;
	color[] = {{4, 0.5, 0.30000001, -500},  {4, 0.2, 0.1, -500}};
	emissiveColor[] = {{567, 573, 288, 0},  {0, 0, 0, 0}};
	lifeTime = 0.050000001;
	lifeTimeVar = 1;
	weight = 1000;
	volume = 0.003;
	rubbing = 0.15000001;
	size[] = {0.055, 0.0049999999, 0};
	sizeVar = 0.5;
	moveVelocity[] = {"surfNormalX * inSpeed / 200", "surfNormalY * inSpeed / 200", "surfNormalZ * inSpeed / 200"};
	moveVelocityVar[] = {"surfNormalX * inSpeed / 200", "surfNormalY * inSpeed / 200", "surfNormalZ * inSpeed / 200"};
	bounceOnSurface = 0.1;
	bounceOnSurfaceVar = 0.1;
	randomDirectionPeriod = 0.5;
	randomDirectionIntensity = 1;
	rotationVelocityVar = 1;
	randomDirectionPeriodVar = 0.5;
	randomDirectionIntensityVar = 2;
};
