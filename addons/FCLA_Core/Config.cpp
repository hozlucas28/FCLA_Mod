
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Core {
		units[] = {};
		requiredAddons[] = {"A3_Air_F", "A3_Air_F_Beta", "A3_Weapons_F_ammoBoxes", "A3_Air_F_Beta_Parachute_01", "A3_Data_F"};
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
	class FCLA_Core {
		class FCLA_Core {
			class XEHPreInit {file = "\FCLA_Core\XEH_preInit.sqf";};
			class XEHPostInit {file = "\FCLA_Core\XEH_postInit.sqf";};
		};

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
		class FCLA_Arsenal_Search {
		  OnTerrainNew = "[] call FCLA_Core_fnc_initArsenalSearch;";
		  OnMissionNew = "[] call FCLA_Core_fnc_initArsenalSearch;";
			OnMissionLoad = "[] call FCLA_Core_fnc_initArsenalSearch;";
			OnMissionPreviewEnd = "[] call FCLA_Core_fnc_initArsenalSearch;";
		};
	};
};



/********************************************************************************|
|                             EDITOR - SUBCATEGORIAS                             |
|********************************************************************************/

class CfgEditorSubcategories {
	class FCLA_Compositions {displayName = "[FCLA] Composiciones";};
};



/********************************************************************************|
|                                   VEHICULOS                                    |
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
			fired = "FCLA_Weapon_Animation = nil;";
			reload = "FCLA_Weapon_Animation = true;";
			reloaded = "FCLA_Weapon_Animation = nil;";
		};
	};

	class UGL_F: GrenadeLauncher {
		class EventHandlers {
			fired = "FCLA_Weapon_Animation = nil;";
			reload = "FCLA_Weapon_Animation = true;";
			reloaded = "FCLA_Weapon_Animation = nil;";
		};
	};

	class MGun: MGunCore {
		class EventHandlers {
			fired = "FCLA_Weapon_Animation = nil;";
			reload = "FCLA_Weapon_Animation = true;";
			reloaded = "FCLA_Weapon_Animation = nil;";
		};
	};

	class Pistol: PistolCore {
		class EventHandlers {
			fired = "FCLA_Weapon_Animation = nil;";
			reload = "FCLA_Weapon_Animation = true;";
			reloaded = "FCLA_Weapon_Animation = nil;";
		};
	};

	class Launcher: LauncherCore {
		class EventHandlers {
			fired = "FCLA_Weapon_Animation = nil;";
			reload = "FCLA_Weapon_Animation = true;";
			reloaded = "FCLA_Weapon_Animation = nil;";
		};
	};
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Core {
		init = "call FCLA_Core_fnc_XEHPreInit;";
	};
};

class Extended_PostInit_EventHandlers {
	class FCLA_Core {
		init = "call FCLA_Core_fnc_XEHPostInit;";
	};
};
