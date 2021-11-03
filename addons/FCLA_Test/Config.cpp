
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Test {
		units[] = {};
		requiredAddons[] = {};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};



/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All;
	class Thing: All {};
	class ThingX: Thing {};
	class Items_base_F: ThingX {};
	class DecontaminationSimulated_base_F: Items_base_F {};
	class DeconShower_01_base_F: DecontaminationSimulated_base_F {};
	class DeconShower_01_F: DeconShower_01_base_F {
		class ACE_Actions {
			class ACE_MainActions {
				#include "\FCLA_Test\temporal.hpp"
			};
		};
	};
};
