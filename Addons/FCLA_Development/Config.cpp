
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
|                                  INCLUSIONES                                   |
|********************************************************************************/

#include "\FCLA_Development\Camera_Mode\display\Definitions.hpp"
#include "\FCLA_Development\Camera_Mode\display\Main.hpp"



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Development {
		#include "\FCLA_Development\CfgFunctions.hpp"
		#include "\FCLA_Development\Camera_Mode\CfgFunctions.hpp"
		#include "\FCLA_Development\Diaries\CfgFunction.hpp"
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
		init = "_unit = _this select 0; if (([_unit, true] call ACE_Common_fnc_isPlayer) || (_unit in playableUnits)) then {_unit disableAI 'PATH'; _unit disableAI 'RADIOPROTOCOL';};";
	};
};
