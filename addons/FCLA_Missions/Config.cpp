
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Missions {
		units[] = {};
		requiredAddons[] = {"FCLA_Core"};
		author = "hozlucas28";
		version = "2.0";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Missions {
		class FCLA_Missions {
			class XEHPreInit {file = "\FCLA_Missions\XEH_preInit.sqf";};
		};
	};
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Missions {
		init = "call FCLA_Missions_fnc_XEHPreInit;";
	};
};
