
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Common {
		units[] = {};
		requiredAddons[] = {"FCLA_Core"};
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
	class FCLA_Common {
		class FCLA_Common {
			class XEHPostInit {file = "\FCLA_Common\XEH_postInit.sqf";};
		};

		#include "\FCLA_Common\CfgFunctions.hpp"
	};
};



/********************************************************************************|
|                                    SONIDOS                                     |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Common\CfgSounds.hpp"
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PostInit_EventHandlers {
	class FCLA_Common {
		init = "call FCLA_Common_fnc_XEHPostInit;";
	};
};
