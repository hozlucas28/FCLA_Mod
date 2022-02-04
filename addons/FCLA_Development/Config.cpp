
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Development {
		units[] = {};
		requiredAddons[] = {"3DEN", "A3_Data_F_Sams_loadOrder", "FCLA_Core"};
		author = "hozlucas28";
		version = "2.0";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                                  INCLUSIONES                                   |
|********************************************************************************/

class ctrlMenuStrip;
#include "\FCLA_Development\3DEN\Display.hpp"



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Development {
		class FCLA_Development {
			class XEHPreInit {file = "\FCLA_Development\XEH_preInit.sqf";};
		};

		#include "\FCLA_Development\Ranks\CfgFunction.hpp"
		#include "\FCLA_Development\Donations\CfgFunction.hpp"
		#include "\FCLA_Development\Watermarks\CfgFunction.hpp"
	};
};



/********************************************************************************|
|                                    SONIDOS                                     |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Development\CfgSounds.hpp"
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Development {
		init = "call FCLA_Development_fnc_XEHPreInit;";
	};
};
