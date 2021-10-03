
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Core {
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
	class All;
	class AllVehicles: All {};
	class Static: All {};
	class Building: Static {};
	class Strategic: Building {};
	class ReammoBox: Strategic {};
	class Bag_Base: ReammoBox {};
	class B_RadioBag_01_base_F: Bag_Base {};

	class Air: AllVehicles {
		class NewTurret;
		class ViewPilot;
	};

	class Helicopter: Air	{
		class NewTurret;
		class ViewPilot;
	};

	#include "\FCLA_Core\Compatibilitys\CfgVehicles.hpp"
	#include "\FCLA_Core\Custom_Parachute\CfgVehicle.hpp"
};



/********************************************************************************|
|                                     ARMAS                                      |
|********************************************************************************/

class CfgWeapons {
	class Default;
	class RifleCore: Default {};
	class GrenadeLauncher: Default {};
	class MGunCore: Default {};
	class PistolCore: Default {};
	class LauncherCore: Default {};

	class Rifle: RifleCore {
		class EventHandlers {
			fired = "FCLA_inWeapon_Animation = nil;";
			reload = "FCLA_inWeapon_Animation = true;";
			reloaded = "FCLA_inWeapon_Animation = nil;";
		};
	};

	class UGL_F: GrenadeLauncher {
		class EventHandlers {
			fired = "FCLA_inWeapon_Animation = nil;";
			reload = "FCLA_inWeapon_Animation = true;";
			reloaded = "FCLA_inWeapon_Animation = nil;";
		};
	};

	class MGun: MGunCore {
		class EventHandlers {
			fired = "FCLA_inWeapon_Animation = nil;";
			reload = "FCLA_inWeapon_Animation = true;";
			reloaded = "FCLA_inWeapon_Animation = nil;";
		};
	};

	class Pistol: PistolCore {
		class EventHandlers {
			fired = "FCLA_inWeapon_Animation = nil;";
			reload = "FCLA_inWeapon_Animation = true;";
			reloaded = "FCLA_inWeapon_Animation = nil;";
		};
	};

	class Launcher: LauncherCore {
		class EventHandlers {
			fired = "FCLA_inWeapon_Animation = nil;";
			reload = "FCLA_inWeapon_Animation = true;";
			reloaded = "FCLA_inWeapon_Animation = nil;";
		};
	};
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
