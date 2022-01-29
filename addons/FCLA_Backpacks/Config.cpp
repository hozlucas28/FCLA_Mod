
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Backpacks {
		requiredAddons[] = {"Task_Force_Radio_Items"};
		#include "\FCLA_Backpacks\units.hpp"
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
	class FCLA_Backpacks {
		class FCLA_Backpacks {
			class XEHPreInit {file = "\FCLA_Backpacks\XEH_preInit.sqf";};
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
	class Bag_Base: ReammoBox {};
	class B_Parachute: Bag_Base {};
	class B_AssaultPack_Base: Bag_Base {};
	class B_AssaultPack_cbr: B_AssaultPack_Base {};
	class ACE_NonSteerableParachute: B_Parachute {};
	class B_AssaultPack_mcamo: B_AssaultPack_Base {};
	class B_AssaultPack_Kerry: B_AssaultPack_mcamo {};
	class ACE_ReserveParachute: ACE_NonSteerableParachute {};
	class B_Kitbag_Base: Bag_Base {};
	class TFAR_Bag_Base: Bag_Base {};
	class B_Kitbag_cbr: B_Kitbag_Base {};

  #include "\FCLA_Backpacks\Custom\CfgVehicle.hpp"
	#include "\FCLA_Backpacks\Urban\CfgVehicles.hpp"
	#include "\FCLA_Backpacks\Winter\CfgVehicles.hpp"
	#include "\FCLA_Backpacks\Marine\CfgVehicles.hpp"
	#include "\FCLA_Backpacks\Radios\CfgVehicles.hpp"
	#include "\FCLA_Backpacks\Digital\CfgVehicles.hpp"
	#include "\FCLA_Backpacks\Vanilla\CfgVehicles.hpp"
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Backpacks {
		init = "call FCLA_Backpacks_fnc_XEHPreInit;";
	};
};
