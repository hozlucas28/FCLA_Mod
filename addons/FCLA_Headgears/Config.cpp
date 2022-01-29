
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Headgears {
		requiredAddons[] = {};
		#include "\FCLA_Headgears\units.hpp"
		#include "\FCLA_Headgears\weapons.hpp"
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
	class FCLA_Headgears {
		class FCLA_Headgears {
			class XEHPreInit {file = "\FCLA_Headgears\XEH_preInit.sqf";};
		};
	};
};



/********************************************************************************|
|                                   VEHÍCULOS                                    |
|********************************************************************************/

class CfgVehicles {
	class All;
	class Static: All {};
	class Building: Static {};
	class Strategic: Building {};
	class ReammoBox: Strategic {};
	class WeaponHolder: ReammoBox {};
	class Headgear_Base_F: WeaponHolder {};

	#include "\FCLA_Headgears\Custom\CfgVehicle.hpp"
	#include "\FCLA_Headgears\Urban\CfgVehicles.hpp"
	#include "\FCLA_Headgears\Marine\CfgVehicles.hpp"
	#include "\FCLA_Headgears\Winter\CfgVehicles.hpp"
	#include "\FCLA_Headgears\Digital\CfgVehicles.hpp"
	#include "\FCLA_Headgears\Vanilla\CfgVehicles.hpp"
};



/********************************************************************************|
|                                     ARMAS                                      |
|********************************************************************************/

class CfgWeapons {
	class Default;
	class ItemCore: Default {};
	class HelmetBase: ItemCore {};
	class H_Beret_blk: HelmetBase {};
	class H_Beret_02: H_Beret_blk {};
	class H_Cap_red: HelmetBase {};
	class H_Cap_oli: H_Cap_red {};
	class H_MilCap_ocamo: HelmetBase {};
	class H_MilCap_mcamo: H_MilCap_ocamo {};
	class H_Booniehat_khk: HelmetBase {};
	class H_Booniehat_mcamo: H_Booniehat_khk {};
	class H_HelmetB: ItemCore {};
	class H_HelmetIA: H_HelmetB {};
	class H_HelmetB_light: H_HelmetB {};
	class H_HelmetB_plain_mcamo: H_HelmetB {};
	class H_HelmetSpecB: H_HelmetB_plain_mcamo {};
	class H_HelmetB_camo: H_HelmetB {};
	class H_PilotHelmetHeli_B: H_HelmetB {};
	class H_CrewHelmetHeli_B: H_HelmetB {};
	class H_PilotHelmetFighter_B: H_HelmetB {};

	#include "\FCLA_Headgears\Custom\CfgWeapon.hpp"
	#include "\FCLA_Headgears\Urban\CfgWeapons.hpp"
	#include "\FCLA_Headgears\Marine\CfgWeapons.hpp"
	#include "\FCLA_Headgears\Winter\CfgWeapons.hpp"
	#include "\FCLA_Headgears\Digital\CfgWeapons.hpp"
	#include "\FCLA_Headgears\Vanilla\CfgWeapons.hpp"
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Headgears {
		init = "call FCLA_Headgears_fnc_XEHPreInit;";
	};
};
