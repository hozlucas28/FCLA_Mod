
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Effects {
		units[] = {};
		requiredAddons[] = {"A3_Weapons_F", "A3_Weapons_F_beta", "FCLA_Core"};
		author = "hozlucas28";
		version = "2.0";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                             INCLUSION DE ARCHIVOS                              |
|********************************************************************************/

#include "\FCLA_Effects\Metal_Sparks\Classnames.hpp"
#include "\FCLA_Effects\Blast_Refract\Classnames.hpp"



/********************************************************************************|
|                                     NUCLEO                                     |
|********************************************************************************/

class CfgCoreData {
	#include "\FCLA_Effects\Lights_Flare\CfgCoreData.hpp"
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Effects {
		class FCLA_Effects {
			class XEHPreInit {file = "\FCLA_Effects\XEH_preInit.sqf";};
			class XEHPostInit {file = "\FCLA_Effects\XEH_postInit.sqf";};
		};

		#include "\FCLA_Effects\NVG\CfgFunctions.hpp"
		#include "\FCLA_Effects\Planes\CfgFunctions.hpp"
		#include "\FCLA_Effects\Enhanced_Sounds\CfgFunctions.hpp"
	};
};



/********************************************************************************|
|                                     NUBES                                      |
|********************************************************************************/

class CfgCloudlets {
	class Default;
	#include "\FCLA_Effects\Metal_sparks\CfgCloudlets.hpp"
	#include "\FCLA_Effects\Blast_Refract\CfgCloudlets.hpp"
};



/********************************************************************************|
|                                     LUCES                                      |
|********************************************************************************/

class CfgLights {
	#include "\FCLA_Effects\Metal_Sparks\CfgLight.hpp"
};



/********************************************************************************|
|                                    SONIDOS                                     |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Effects\CfgSounds.hpp"
};



/********************************************************************************|
|                                    VEHICULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All;
	class Sound: All {};
	class AllVehicles: All {};
	#include "\FCLA_Effects\Lights_Flare\CfgVehicle.hpp"
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_Put_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_putES;};";
	};
};

class Extended_Take_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_takeES;};";
	};
};

class Extended_Engine_EventHandlers {
	class Plane {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_enginePlanes;};";
	};
};

class Extended_Killed_Eventhandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_killedES;};";
	};
};

class Extended_HitPart_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_hitPartES;};";
	};
};

class Extended_Respawn_Eventhandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_respawnNVG;};";
	};
};

class Extended_PreInit_EventHandlers {
	class FCLA_Effects {
		init = "call FCLA_Effects_fnc_XEHPreInit;";
	};
};

class Extended_PostInit_EventHandlers {
	class FCLA_Effects {
		init = "call FCLA_Effects_fnc_XEHPostInit;";
	};
};

class Extended_InventoryClosed_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_inventoryClosedES;};";
	};
};

class Extended_InventoryOpened_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_inventoryOpenedES;};";
	};
};
