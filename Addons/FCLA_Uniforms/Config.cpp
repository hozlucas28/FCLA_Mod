
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Uniforms	{
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};





/********************************************************************************|
|                                   VEHÍCULOS                                    |
|********************************************************************************/

class CfgVehicles {
	class B_RangeMaster_F;
	class B_Helipilot_F;
	class B_Soldier_F;
	class B_Soldier_lite_F;
	class I_soldier_F;
	class I_Soldier_lite_F;

	#include "\FCLA_Uniforms\CfgVehicles.hpp"
	#include "\FCLA_Uniforms\Anaconda\CfgVehicles.hpp"
	#include "\FCLA_Uniforms\Condor\CfgVehicles.hpp"
	#include "\FCLA_Uniforms\FCLA\CfgVehicles.hpp"
	#include "\FCLA_Uniforms\Jaguar\CfgVehicles.hpp"
	#include "\FCLA_Uniforms\Quetzal\CfgVehicles.hpp"
	#include "\FCLA_Uniforms\Salamandra\CfgVehicles.hpp"
	#include "\FCLA_Uniforms\Takana\CfgVehicles.hpp"
};





/********************************************************************************|
|                                     ARMAS                                      |
|********************************************************************************/

class CfgWeapons {
	class UniformItem;
  class U_Rangemaster;
	class U_B_HeliPilotCoveralls;
	class U_B_CombatUniform_mcam;
	class U_B_CombatUniform_mcam_vest;
	class U_I_CombatUniform;
	class U_I_CombatUniform_shortsleeve;

	#include "\FCLA_Uniforms\CfgWeapons.hpp"
	#include "\FCLA_Uniforms\Anaconda\CfgWeapons.hpp"
	#include "\FCLA_Uniforms\Condor\CfgWeapons.hpp"
	#include "\FCLA_Uniforms\FCLA\CfgWeapons.hpp"
	#include "\FCLA_Uniforms\Jaguar\CfgWeapons.hpp"
	#include "\FCLA_Uniforms\Quetzal\CfgWeapons.hpp"
	#include "\FCLA_Uniforms\Salamandra\CfgWeapons.hpp"
	#include "\FCLA_Uniforms\Takana\CfgWeapons.hpp"
};
