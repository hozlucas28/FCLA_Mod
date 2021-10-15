
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Development {
		units[] = {};
		requiredAddons[] = {};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Development {
		#include "\FCLA_Development\Donations\CfgFunction.hpp"
		#include "\FCLA_Development\Save_Position\CfgFunction.hpp"
	};
};



/********************************************************************************|
|                                    SONIDOS                                     |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Development\CfgSounds.hpp"
};



/********************************************************************************|
|                                 EVENTHANDLERS                                  |
|********************************************************************************/

class Extended_InitPost_EventHandlers {
	class CAManBase {
		init = "if ([_this select 0, true] call ACE_Common_fnc_isPlayer) then {(_this select 0) disableAI 'RADIOPROTOCOL';};";
	};
};
