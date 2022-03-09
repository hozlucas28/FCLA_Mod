
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Common {
		units[] = {};
		requiredAddons[] = {"FCLA_Core"};
		author = "hozlucas28";
		version = "2.08";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.08;
	};
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Common {
		class FCLA_Common {
			class XEHPreInit {file = "\FCLA_Common\XEH_preInit.sqf";};
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

class Extended_PreInit_EventHandlers {
	class FCLA_Common {
		init = "call FCLA_Common_fnc_XEHPreInit;";
	};
};

class Extended_PostInit_EventHandlers {
	class FCLA_Common {
		init = "call FCLA_Common_fnc_XEHPostInit;";
	};
};
