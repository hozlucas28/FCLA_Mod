
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Land {
		units[] = {};
		weapons[] = {};
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
	#include "\FCLA_Land\CfgVehicles.hpp"
};






/********************************************************************************|
|                                 CATEGORÍAS 3EDEN                               |
|********************************************************************************/

class CfgEditorCategories {
	class FCLA_Category_Side {displayName = "FCLA";};
	class FCLA_Category_Structures {displayName = "Estructuras (FCLA)";};
};
