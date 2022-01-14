
/********************************************************************************|
|                      OPCIONES DE VÍDEO - "VIDEO MEJORADO"                      |
|********************************************************************************/

class Visibility {
  minValue = 1000;
  maxValue = 40000;
};

class ObjectsVisibility {
  minValue = 1000;
  maxValue = 30000;
};

class ShadowsVisibility {
  minValue = 1000;
  maxValue = 3000;
};

class PPBloom	{
  minValue = 0;
  maxValue = 3;
};

class PPDOF	{
  minValue = 0;
  maxValue = 5;
};

class PPRotBlur	{
  minValue = 0;
  maxValue = 2;
};

class PPRadialBlur {
  minValue = 0;
  maxValue = 2;
};

class PPSharpen {
  minValue = 0;
  maxValue = 4;
};

class PPBrightness {
  minValue = 0;
  maxValue = 2;
};

class PPContrast {
  minValue = 0;
  maxValue = 2;
};

class PPSaturation {
  minValue = 0;
  maxValue = 2;
};

class DynamicLights	{
  class Extreme	{
    text = "Ultra+";
    value = 32;
  };
};

class PiP	{
  class VeryHigh2	{
    text = "Ultra+";
    value = 4000;
  };
};

class CloudQuality {
  class Extreme	{
    text = "Ultra+";
    value = 256;
  };
};

class WaterSSReflectionsQuality {
  class High2	{
    text = "Ultra";
    value = 1.5;
  };
};

class ShadowQuality	{
  class VeryHigh2	{
    text = "Ultra+";
    shadowType = 2;
    textureSize = 4096;
    shaderQuality = 3;
    cascadeLayers = 8;
  };
};

class TextureQuality {
  class VeryLower2 {
    text = "Muy bajo";
    mipBias = 13;
    vramNeeded = 0;
  };

  class VeryHigh2	{
    text = "Ultra+";
    mipBias = -1;
    vramNeeded = 796;
  };
};

class ObjectsQuality {
  class VeryLow2 {
    text = "Muy bajo";
    value = 100000;
  };

  class VeryHigh2	{
    text = "Ultra+";
    value = 2600000;
  };
};

class TerrainQuality {
  class Verylowlow {
    text = "Muy bajo";
    terrainGrid = 100;
  };

  class VeryHigh2	{
    text = "Ultra+";
    terrainGrid = 2.5999999;
  };
};

class PPColorPresets {
  class Altis	{
    text = "Altis";
    contrast = 1.08;
    brightness = 1.01;
    saturation = 1.1;
  };

  class Tanoa	{
    text = "Tanoa";
    contrast = 1.03;
    brightness = 1.02;
    saturation = 0.94999999;
  };
};

class Particles	{
  class High {
    text = "Alto";
    smokeSizeCoef = 2.5999999;
    smokeZoomCoef = 1.42857;
    smokeGenMinDist = 400;
    smokeGenMaxDist = 1600;
    smokeIntervalCoef = 4;
    highQualityShader = 1;
    particlesSoftLimit = 16000;
    particlesHardLimit = 18000;
    numFullSizeParticles = 120;
  };
};

class OverallSettings	{
  class VeryHigh2: DefaultSettings {
    hdr = "Normal";
    pip = "VeryHigh2";
    text = "EVS Ultra";
    ppaa = "SMAAVeryHigh";
    particles = "High";
    atocQuality = "Disabled";
    cloudQuality = "Extreme";
    ppSSAOQuality = "HBAOPlusStrong";
    dynamicLights = "Extreme";
    shadowQuality = "VeryHigh2";
    textureQuality = "VeryHigh2";
    objectsQuality = "VeryHigh2";
    terrainQuality = "VeryHigh";
    ppaaAlternative = "SMAAVeryHigh";
    ppCausticsQuality = "Enabled";
    anisotropicFiltering = "VeryHigh";
    waterSSReflectionsQuality = "High2";
    ppSSAOQualityAlternative = "HDAOHigh";
    ppDOF = 0.30000001;
    ppBloom = 0.2;
    ppRotBlur = 0;
    ppSharpen = 0.1;
    visibility = 20000;
    ppRadialBlur = 0;
    multiSampleCount = 4;
    objectVisibility = 12000;
    shadowVisibility = 500;
    postProcessQuality = 8;
  };
};
