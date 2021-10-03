
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Modules {
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};





/********************************************************************************|
|                               FACCIONES - MÓDULOS                              |
|********************************************************************************/

class CfgFactionClasses {
	class NO_CATEGORY;
	class FCLA_Faction_Modules: NO_CATEGORY {displayName = "FCLA";};
};





/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Modules {
		#include "\FCLA_Modules\CBRN\CfgFunctions.hpp"
		#include "\FCLA_Modules\Custom_ID\CfgFunction.hpp"
		#include "\FCLA_Modules\Effects\CfgFunction.hpp"
		#include "\FCLA_Modules\Lock_Doors\CfgFunction.hpp"
		#include "\FCLA_Modules\PEM\CfgFunction.hpp"
		#include "\FCLA_Modules\Introductory_Video\CfgFunction.hpp"
		#include "\FCLA_Modules\Zeus_Modules\CfgFunctions.hpp"
	};
};





/********************************************************************************|
|                                    SONIDOS                                     |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Modules\CfgSounds.hpp"
};





/********************************************************************************|
|                                   VEHÍCULOS                                    |
|********************************************************************************/

class CfgVehicles {
	class Logic;
	class Module_F: Logic	{
		class ArgumentsBaseUnits {class Units;};
		class ModuleDescription;
	};

	#include "\FCLA_Modules\CBRN\CfgVehicles.hpp"
  #include "\FCLA_Modules\Custom_ID\CfgVehicle.hpp"
	#include "\FCLA_Modules\Effects\CfgVehicles.hpp"
	#include "\FCLA_Modules\Lock_Doors\CfgVehicle.hpp"
	#include "\FCLA_Modules\PEM\CfgVehicle.hpp"
	#include "\FCLA_Modules\Introductory_Video\CfgVehicle.hpp"
};





/********************************************************************************|
|                                 EVENTHANDLERS                                  |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	CBRN = "null = [] execVM '\FCLA_Modules\CBRN\XEH_preInit.sqf';";
};
