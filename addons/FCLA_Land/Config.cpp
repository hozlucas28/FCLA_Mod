
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Land {
		weapons[] = {};
		requiredAddons[] = {};
		#include "\FCLA_Land\units.hpp"
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All;
	class AllVehicles: All {};
	class Land: AllVehicles {};
	class LandVehicle: Land {};
	class Tank: LandVehicle {};
	class Tank_F: Tank {};
	class APC_Tracked_01_base_F: Tank_F {};
	#include "\FCLA_Land\Vanilla\CfgVehicles.hpp"
};
