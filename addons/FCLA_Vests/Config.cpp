
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Vests	{
		requiredAddons[] = {};
		#include "\FCLA_Vests\units.hpp"
		#include "\FCLA_Vests\weapons.hpp"
		author = "hozlucas28";
		version = "2.08";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.08;
	};
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Vests {
		class FCLA_Vests {
			class XEHPreInit {file = "\FCLA_Vests\XEH_preInit.sqf";};
		};
	};
};



/********************************************************************************|
|                                   VEHICULOS                                    |
|********************************************************************************/

class CfgVehicles {
	class All {};
	class Static: All {};
	class Building: Static {};
	class Strategic: Building {};
	class ReammoBox: Strategic {};
	class WeaponHolder: ReammoBox {};
	class Vest_Base_F: WeaponHolder {};

	#include "\FCLA_Vests\Digital\CfgVehicles.hpp"
	#include "\FCLA_Vests\Marine\CfgVehicles.hpp"
	#include "\FCLA_Vests\Urban\CfgVehicles.hpp"
	#include "\FCLA_Vests\Vanilla\CfgVehicles.hpp"
	#include "\FCLA_Vests\Winter\CfgVehicles.hpp"
};



/********************************************************************************|
|                                     ARMAS                                      |
|********************************************************************************/

class CfgWeapons {
	class Default {};
	class ItemCore: Default {};
	class InventoryItem_Base_F {};
	class Vest_Camo_Base: ItemCore {};
	class Vest_NoCamo_Base: ItemCore {};
	class V_EOD_base_F: Vest_Camo_Base {};
	class VestItem: InventoryItem_Base_F {};
	class V_PlateCarrier1_rgr: Vest_NoCamo_Base {};
	class V_PlateCarrierGL_rgr: Vest_NoCamo_Base {};
	class V_PlateCarrier2_rgr: V_PlateCarrier1_rgr {};
	class V_PlateCarrierSpec_rgr: Vest_NoCamo_Base {};
	class V_PlateCarrier_Kerry: V_PlateCarrier1_rgr {};
	class V_EOD_olive_F: V_EOD_base_F {};

	#include "\FCLA_Vests\Digital\CfgWeapons.hpp"
	#include "\FCLA_Vests\Marine\CfgWeapons.hpp"
	#include "\FCLA_Vests\Urban\CfgWeapons.hpp"
	#include "\FCLA_Vests\Vanilla\CfgWeapons.hpp"
	#include "\FCLA_Vests\Winter\CfgWeapons.hpp"
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Vests {
		init = "call FCLA_Vests_fnc_XEHPreInit;";
	};
};
