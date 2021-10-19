
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Ammo {
		units[] = {};
		requiredAddons[] = {};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};



/********************************************************************************|
|                                   MUNICIONES                                   |
|********************************************************************************/

class CfgAmmo {
	class Default;
	class RocketCore: Default {};
	class RocketBase: RocketCore {};
	class R_MRAAWS_HEAT_F: RocketBase {};
	class R_MRAAWS_HE_F: R_MRAAWS_HEAT_F {};
	#include "\FCLA_Ammo\Launcher\CfgAmmo.hpp"
};



/********************************************************************************|
|                                   CARGADORES                                   |
|********************************************************************************/

class CfgMagazines {
	class Default;
	class CA_Magazine: Default {};
	class CA_LauncherMagazine: CA_Magazine {};
	class MRAWS_HEAT_F: CA_LauncherMagazine {};
	class MRAWS_HE_F: MRAWS_HEAT_F {};
	#include "\FCLA_Ammo\Launcher\CfgMagazines.hpp"
};



/********************************************************************************|
|                             CARGADORES - REVISTAS                              |
|********************************************************************************/

class CfgMagazineWells {
	#include "\FCLA_Ammo\Launcher\CfgMagazineWells.hpp"
};
