
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
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Sounds {
		class FCLA_Sounds {
			class XEHPreInit {file = "\FCLA_Sounds\XEH_preInit.sqf";};
		};
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



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Sounds {
		init = "call FCLA_Sounds_fnc_XEHPreInit;";
	};
};
