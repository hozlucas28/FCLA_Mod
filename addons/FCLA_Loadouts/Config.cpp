
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Loadouts {
		units[] = {};
		requiredAddons[] = {};
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
	class FCLA_Loadouts {
		class FCLA_Loadouts {
			class XEHPreInit {file = "\FCLA_Loadouts\XEH_preInit.sqf";};
		};
	};
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Loadouts {
		init = "call FCLA_Loadouts_fnc_XEHPreInit;";
	};
};
