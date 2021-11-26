
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Effects {
		#include "\FCLA_Effects\units.hpp"
		requiredAddons[] = {"A3_Weapons_F", "A3_Weapons_F_beta"};
		author = "hozlucas28";
		version = "2.0";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                             INCLUSIÓN DE ARCHIVOS                              |
|********************************************************************************/

#include "\FCLA_Effects\Metal_Sparks\Classnames.hpp"
#include "\FCLA_Effects\Blast_Refract\Classnames.hpp"



/********************************************************************************|
|                                     NÚCLEO                                     |
|********************************************************************************/

class CfgCoreData {
	#include "\FCLA_Effects\Lights_Flare\CfgCoreData.hpp"
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Effects {
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
|                                  SONIDOS - FX                                  |
|********************************************************************************/

class CfgSFX {
	#include "\FCLA_Effects\Enhanced_Sounds\CfgSFX.hpp"
};



/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All;
	class Sound: All {};
	class AllVehicles: All {};
	#include "\FCLA_Effects\Lights_Flare\CfgVehicle.hpp"
	#include "\FCLA_Effects\Enhanced_Sounds\CfgVehicles.hpp"
};



/********************************************************************************|
|                                 EVENTHANDLERS                                  |
|********************************************************************************/

class Extended_Engine_EventHandlers {
	class Plane {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_enginePlanes;};";
	};
};

class Extended_HitPart_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_hitPartESEH;};";
	};
};

class Extended_InventoryClosed_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_inventoryClosedESEH;};";
	};
};

class Extended_InventoryOpened_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_inventoryOpenedESEH;};";
	};
};

class Extended_Killed_Eventhandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_killedESEH;};";
	};
};

class Extended_Put_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_putESEH;};";
	};
};

class Extended_Respawn_Eventhandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_respawnNVGEH;};";
	};
};

class Extended_Take_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_takeESEH;};";
	};
};
