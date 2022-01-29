
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Development {
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
	class FCLA_Development {
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
