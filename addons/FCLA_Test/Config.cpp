
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
	class AllVehicles: All {};
	class Land: AllVehicles {};
	class Man: Land {};

	class CAManBase: Man {
	  class ACE_SelfActions {
			#include "\FCLA_Test\ACE_SelfActions.hpp"
	  };
	};
};
