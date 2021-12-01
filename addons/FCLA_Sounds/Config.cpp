
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Sounds {
		#include "\FCLA_Sounds\units.hpp"
		requiredAddons[] = {};
		author = "hozlucas28";
		version = "2.0";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                                    SONIDOS                                     |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Sounds\CfgSounds.hpp"
};



/********************************************************************************|
|                                 SONIDOS - SFX                                  |
|********************************************************************************/

class CfgSFX {
	#include "\FCLA_Sounds\SFX\CfgSFX.hpp"
};



/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All;
	class Sound: All {};
	#include "\FCLA_Sounds\SFX\CfgVehicles.hpp"
};
