
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Effects {
		#include "\FCLA_Effects\units.hpp"
		ammo[] = {"FlareBase", "F_40mm_White", "Flare_82mm_AMOS_White"};
		requiredAddons[] = {"A3_Weapons_F", "A3_Weapons_F_beta"};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};



/********************************************************************************|
|                             INCLUSIÓN DE ARCHIVOS                              |
|********************************************************************************/

#include "\FCLA_Effects\Blast_Refract\Classnames.hpp"
#include "\FCLA_Effects\Metal_Sparks\Classnames.hpp"



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
		#include "\FCLA_Effects\Planes\CfgFunctions.hpp"
		#include "\FCLA_Effects\Enhanced_Sounds\CfgFunctions.hpp"
	};
};



/********************************************************************************|
|                                     NUBES                                      |
|********************************************************************************/

class CfgCloudlets {
	class Default;
	#include "\FCLA_Effects\Blast_Refract\CfgCloudlets.hpp"
	#include "\FCLA_Effects\Metal_sparks\CfgCloudlets.hpp"
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
	#include "\FCLA_Effects\Enhanced_Sounds\CfgVehicles.hpp"
	#include "\FCLA_Effects\Lights_Flare\CfgVehicle.hpp"
};



/********************************************************************************|
|                                   MUNICIONES                                   |
|********************************************************************************/

class CfgAmmo {
	class FlareCore;
	#include "\FCLA_Effects\Flares\CfgAmmo.hpp"
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
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_hitPartSoundsES;};";
	};
};

class Extended_InventoryClosed_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_inventoryClosedSoundsES;};";
	};
};

class Extended_InventoryOpened_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_inventoryOpenedSoundsES;};";
	};
};

class Extended_Killed_Eventhandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_killedSoundsES;};";
	};
};

class Extended_Put_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_putSoundsES;};";
	};
};

class Extended_Take_EventHandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Effects_fnc_takeSoundsES;};";
	};
};
