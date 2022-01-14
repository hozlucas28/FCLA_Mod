
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Video {
		units[] = {};
		requiredAddons[] = {"A3_Data_F", "A3_UI_F"};
		author = "hozlucas28";
		version = "2.0";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                               OPCIONES DE VÍDEO                                |
|********************************************************************************/

class CfgVideoOptions {
	class DefaultSettings;
	#include "\FCLA_Video\Enhanced_Video\CfgVideoOptions.hpp"
};
