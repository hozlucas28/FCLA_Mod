
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Core {
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {"FCLA_Data"};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Core {
		#include "\FCLA_Core\Arsenal_Search\CfgFunction.hpp"
	};
};



/********************************************************************************|
|                                    SONIDOS                                     |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Core\CfgSounds.hpp"
};



/********************************************************************************|
|                                     3EDEN                                      |
|********************************************************************************/

class Cfg3DEN {
	class EventHandlers {
		class Arsenal {
		  OnMissionPreviewEnd = "[] call FCLA_Core_fnc_initArsenalSearch";
		  OnMissionLoad = "[] call FCLA_Core_fnc_initArsenalSearch";
		  OnMissionNew = "[] call FCLA_Core_fnc_initArsenalSearch";
		  OnTerrainNew = "[] call FCLA_Core_fnc_initArsenalSearch";
		};
	};
};



/********************************************************************************|
|                                   VEHÍCULOS                                    |
|********************************************************************************/

class CfgVehicles {
	class AllVehicles;
	class Air: AllVehicles {
		class NewTurret;
		class ViewPilot;
	};

	class Helicopter: Air	{
		class NewTurret;
		class ViewPilot;
	};

	#include "\FCLA_Core\Custom_Parachute\CfgVehicle.hpp"
};



/********************************************************************************|
|                                 EVENTHANDLERS                                  |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	init = "[] call compile preprocessFileLineNumbers '\FCLA_Core\PreInit\XEH_preInit.sqf';";
};

class Extended_PostInit_EventHandlers {
	init = "[] call compile preprocessFileLineNumbers '\FCLA_Core\PostInit\XEH_postInit.sqf';";
};
