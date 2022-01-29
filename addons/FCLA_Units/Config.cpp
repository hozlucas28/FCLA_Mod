
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Units {
		#include "\FCLA_Units\units.hpp"
		requiredAddons[] = {};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Units {
		class FCLA_Units {
			class XEHPreInit {file = "\FCLA_Units\XEH_preInit.sqf";};
		};
	};
};



/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All {};
	class AllVehicles: All {};
	class Land: AllVehicles {};
	class Man: Land {};
	class CAManBase: Man {};
	class SoldierEB: CAManBase {};
	class O_Soldier_base_F: SoldierEB {};
	class O_Soldier_02_F: O_Soldier_base_F {};
	class O_helipilot_F: O_Soldier_02_F {};
	class O_Pilot_F: O_helipilot_F {};
	class O_T_Pilot_F: O_Pilot_F {};
	class O_crew_F: O_Soldier_base_F {};
	#include "\FCLA_Units\OPFOR\CfgVehicles.hpp"
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Units {
		init = "call FCLA_Units_fnc_XEHPreInit;";
	};
};
