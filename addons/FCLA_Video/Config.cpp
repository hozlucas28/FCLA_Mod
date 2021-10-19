
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Video_Settings {
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {"A3_Data_F","A3_UI_f"};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};





/********************************************************************************|
|                                  INCLUSIONES                                   |
|********************************************************************************/

#include "\FCLA_Video_Settings\View_Distance\Displays.hpp"





/********************************************************************************|
|                                      3DEN                                      |
|********************************************************************************/

class Cfg3DEN {
	class EventHandlers {
		class Enhanced_Video {
			OnTerrainNew = "[] spawn FCLA_Video_Settings_fnc_initEV";
			OnMissionLoad = "[] spawn FCLA_Video_Settings_fnc_initEV";
		};
	};
};





/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Video_Settings {
		#include "\FCLA_Video_Settings\Enhanced_Video\CfgFunction.hpp"
		#include "\FCLA_Video_Settings\View_Distance\CfgFunctions.hpp"
	};
};





/********************************************************************************|
|                                    DISPLAYS                                    |
|********************************************************************************/

class RscControlsGroup;
class RscText;
class RscCheckBox;
class RscDisplayOptionsVideo {
	class Controls {
		class BasicGroup: RscControlsGroup {
			class controls {
				class EmptyText: RscText {
					idc = -1;
					x = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
					y = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w = "1 * (((safezoneW / safezoneH) min 1.2) / 40)";
					h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};

				class TextTerrainForce: RscText {
					idc = 10292;
					style = 1;
					shadow = 0;
					text = "Terreno (Ultra+):";
					x = "6 * (((safezoneW / safezoneH) min 1.2) / 40)";
					y = "7.2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w = "8 * (((safezoneW / safezoneH) min 1.2) / 40)";
					h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};

				class ValueTerrainForce: RscCheckBox {
					idc = 1232;
					x = "14.0 * (((safezoneW / safezoneH) min 1.2) / 40)";
					y = "7.2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w = "1 * (((safezoneW / safezoneH) min 1.2) / 40)";
					h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					tooltip = "";
					onLoad = "(_this select 0) cbSetChecked (profileNamespace getVariable ['Enhanced_Video_Terrain', false])";
					onCheckedChanged = "if (_this select 1  ==  0) then {setTerrainGrid -1; profileNamespace setVariable ['Enhanced_Video_Terrain', false]} else {setTerrainGrid 1.0; profileNamespace setVariable ['Enhanced_Video_Terrain', true]}";
				};
			};
		};
	};
};





/********************************************************************************|
|                               OPCIONES DE VIDEO                                |
|********************************************************************************/

class CfgVideoOptions {
	class DefaultSettings;

	class Visibility {
		minValue = 5;
		maxValue = 40000;
	};

	class ObjectsVisibility {
		minValue = 5;
		maxValue = 30000;
	};

	class ShadowsVisibility {
		minValue = 5;
		maxValue = 3000;
	};

	class Particles {
		class High {
			text = "Ultra+";
			particlesSoftLimit = 16000;
			particlesHardLimit = 18000;
			smokeGenMinDist = 400;
			smokeGenMaxDist = 1600;
			smokeSizeCoef = 2.5999999;
			smokeIntervalCoef = 4;
			smokeZoomCoef = 1.42857;
			highQualityShader = 1;
			numFullSizeParticles = 120;
		};
	};

	class DynamicLights {
		class Extreme {
			text = "Ultra+";
			value = 32;
		};
	};

	class PiP {
		class VeryHigh2	{
			text = "Ultra+";
			value = 4000;
		};
	};

	class TextureQuality {
		class VeryLower2 {
			text = "Muy bajo";
			mipBias = 13;
			vramNeeded = 0;
		};

		class VeryHigh2 {
			text = "Ultra+";
			mipBias = -1;
			vramNeeded = 796;
		};
	};

	class ObjectsQuality {
		class VeryLow2 {
			text = "Lowest";
			value = 100000;
		};

		class VeryHigh2 {
			text = "Ultra+";
			value = 2600000;
		};
	};

	class TerrainQuality {
		class Verylowlow {
			text = "Muy bajo";
			terrainGrid = 100;
		};

		class VeryHigh2 {
			text = "Ultra+";
			terrainGrid = 2.5999999;
		};
	};

	class CloudQuality {
		class Extreme {
			text = "Ultra+";
			value = 256;
		};
	};

	class WaterSSReflectionsQuality {
		class High2 {
			text = "Ultra";
			value = 1.5;
		};
	};

	class ShadowQuality {
		class VeryHigh2 {
			text = "Ultra+";
			shadowType = 2;
			textureSize = 4096;
			shaderQuality = 3;
			cascadeLayers = 8;
		};
	};

	class PPBloom {
		minValue = 0;
		maxValue = 3;
	};

	class PPDOF {
		minValue = 0;
		maxValue = 5;
	};

	class PPRotBlur {
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

	class PPColorPresets {
		class Altis {
			text = "Altis";
			brightness = 1.01;
			contrast = 1.08;
			saturation = 1.1;
		};

		class Tanoa {
			text = "Tanoa";
			brightness = 1.02;
			contrast = 1.03;
			saturation = 0.94999999;
		};
	};

	class OverallSettings {
		class VeryHigh2: DefaultSettings {
			text = "EVS Ultra";
			visibility = 20000;
			objectVisibility = 12000;
			shadowVisibility = 500;
			hdr = "Normal";
			ppaa = "SMAAVeryHigh";
			ppaaAlternative = "SMAAVeryHigh";
			particles = "High";
			dynamicLights = "Extreme";
			anisotropicFiltering = "VeryHigh";
			pip = "VeryHigh2";
			textureQuality = "VeryHigh2";
			objectsQuality = "VeryHigh2";
			terrainQuality = "VeryHigh";
			cloudQuality = "Extreme";
			waterSSReflectionsQuality = "High2";
			shadowQuality = "VeryHigh2";
			atocQuality = "Disabled";
			ppSSAOQuality = "HBAOPlusStrong";
			ppSSAOQualityAlternative = "HDAOHigh";
			ppCausticsQuality = "Enabled";
			ppBloom = 0.2;
			ppDOF = 0.30000001;
			ppRotBlur = 0;
			ppRadialBlur = 0;
			ppSharpen = 0.1;
			postProcessQuality = 8;
			multiSampleCount = 4;
		};
	};
};
