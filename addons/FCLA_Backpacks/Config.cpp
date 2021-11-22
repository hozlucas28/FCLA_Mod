
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Backpacks {
		weapons[] = {};
		requiredAddons[] = {};
		#include "\FCLA_Backpacks\units.hpp"
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
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
	class Bag_Base: ReammoBox {};
	class B_AssaultPack_Base: Bag_Base {};
	class B_AssaultPack_cbr: B_AssaultPack_Base {};
	class B_AssaultPack_mcamo: B_AssaultPack_Base {};
	class B_AssaultPack_Kerry: B_AssaultPack_mcamo {};
	class B_Kitbag_Base: Bag_Base {};
	class B_Kitbag_cbr: B_Kitbag_Base {};
	class TFAR_Bag_Base: Bag_Base {};

	#include "\FCLA_Backpacks\Digital\CfgVehicles.hpp"
	#include "\FCLA_Backpacks\Marine\CfgVehicles.hpp"
	#include "\FCLA_Backpacks\Radios\CfgVehicles.hpp"
	#include "\FCLA_Backpacks\Urban\CfgVehicles.hpp"
	#include "\FCLA_Backpacks\Vanilla\CfgVehicles.hpp"
	#include "\FCLA_Backpacks\Winter\CfgVehicles.hpp"
};
