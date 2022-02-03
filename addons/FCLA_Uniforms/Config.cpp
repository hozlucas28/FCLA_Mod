
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Uniforms	{
		requiredAddons[] = {};
		#include "\FCLA_Uniforms\units.hpp"
		#include "\FCLA_Uniforms\weapons.hpp"
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
	class FCLA_Uniforms {
		class FCLA_Uniforms {
			class XEHPreInit {file = "\FCLA_Uniforms\XEH_preInit.sqf";};
		};
	};
};



/********************************************************************************|
|                                   VEHICULOS                                    |
|********************************************************************************/

class CfgVehicles {
	class All {};
	class AllVehicles: All {};
	class Land: AllVehicles {};
	class Man: Land {};
	class CAManBase: Man {};
	class SoldierWB: CAManBase {};
	class SoldierGB: CAManBase {};
	class B_Soldier_base_F: SoldierWB {};
	class I_Soldier_base_F: SoldierGB {};
	class B_Soldier_F: B_Soldier_base_F {};
	class I_soldier_F: I_Soldier_base_F {};
	class B_Soldier_03_f: B_Soldier_base_F {};
	class B_Soldier_lite_F: B_Soldier_03_f {};
	class I_Soldier_02_F: I_Soldier_base_F {};
	class I_Soldier_lite_F: I_Soldier_02_F {};
	class B_Soldier_04_f: B_Soldier_base_F {};
	class B_RangeMaster_F: B_Soldier_base_F {};
	class B_Helipilot_F: B_Soldier_04_f {};

	#include "\FCLA_Uniforms\Digital\CfgVehicles.hpp"
	#include "\FCLA_Uniforms\Marine\CfgVehicles.hpp"
	#include "\FCLA_Uniforms\Urban\CfgVehicles.hpp"
	#include "\FCLA_Uniforms\Vanilla\CfgVehicles.hpp"
	#include "\FCLA_Uniforms\Winter\CfgVehicles.hpp"
};



/********************************************************************************|
|                                     ARMAS                                      |
|********************************************************************************/

class CfgWeapons {
	class Default {};
	class ItemCore: Default {};
	class InventoryItem_Base_F {};
	class Uniform_Base: ItemCore {};
	class U_Rangemaster: Uniform_Base {};
	class UniformItem: InventoryItem_Base_F {};
	class U_B_HeliPilotCoveralls: Uniform_Base {};
	class U_B_CombatUniform_mcam: Uniform_Base {};
	class U_I_CombatUniform_tshirt: Uniform_Base {};
	class U_B_CombatUniform_mcam_vest: Uniform_Base {};
	class U_I_CombatUniform_shortsleeve: Uniform_Base {};

	#include "\FCLA_Uniforms\Digital\CfgWeapons.hpp"
	#include "\FCLA_Uniforms\Marine\CfgWeapons.hpp"
	#include "\FCLA_Uniforms\Urban\CfgWeapons.hpp"
	#include "\FCLA_Uniforms\Vanilla\CfgWeapons.hpp"
	#include "\FCLA_Uniforms\Winter\CfgWeapons.hpp"
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Uniforms {
		init = "call FCLA_Uniforms_fnc_XEHPreInit;";
	};
};
