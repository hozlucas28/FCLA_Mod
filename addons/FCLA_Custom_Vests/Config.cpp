
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Custom_Vests	{
		units[] = {};
		requiredAddons[] = {"FCLA_Vests"};
		#include "\FCLA_Custom_Vests\weapons.hpp"
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
	class FCLA_Custom_Vests {
		class FCLA_Custom_Vests {
			class XEHPreInit {file = "\FCLA_Custom_Vests\XEH_preInit.sqf";};
		};
	};
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
	class VestItem: InventoryItem_Base_F {};
	class V_PlateCarrier1_rgr: Vest_NoCamo_Base {};
	class V_PlateCarrier_Kerry: V_PlateCarrier1_rgr {};
	class V_PlateCarrier_FCLA_Black: V_PlateCarrier_Kerry {};
	class V_PlateCarrier_FCLA_Green: V_PlateCarrier_Kerry {};
	class V_PlateCarrier_FCLA_Marine: V_PlateCarrier_Kerry {};
	class V_PlateCarrier_FCLA_Digital: V_PlateCarrier_Kerry {};
	class V_PlateCarrier_FCLA_Urban_v1: V_PlateCarrier_Kerry {};
	class V_PlateCarrier_FCLA_Tropical: V_PlateCarrier_Kerry {};
	class V_PlateCarrier_FCLA_Winter_v1: V_PlateCarrier_Kerry {};

	#include "\FCLA_Custom_Vests\Digital\CfgWeapons.hpp"
	#include "\FCLA_Custom_Vests\Marine\CfgWeapons.hpp"
	#include "\FCLA_Custom_Vests\Urban\CfgWeapons.hpp"
	#include "\FCLA_Custom_Vests\Vanilla\CfgWeapons.hpp"
	#include "\FCLA_Custom_Vests\Winter\CfgWeapons.hpp"
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Custom_Vests {
		init = "call FCLA_Custom_Vests_fnc_XEHPreInit;";
	};
};
