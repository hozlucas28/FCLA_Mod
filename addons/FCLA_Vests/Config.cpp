
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Vests {
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};





/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Vests {
		class Suicide_Vest {
		  file = "\FCLA_Vests\functions";
		  class initExplosiveVest {};
		};
	};
};





/********************************************************************************|
|                                    SONIDOS                                     |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Vests\CfgSounds.hpp"
};





/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class Man;
	class CAManBase: Man {
		class UserActions {
			class Activate_Suicide_Vest {
				userActionID = 50;
	      displayName = "<t size='1.2' color='#FF0000'>Detonar chaleco bomba</t>";
	      displayNameDefault = "";
	      radius = 10;
	      priority = 10;
	      position = "camera";
	      showWindow = 1;
				hideOnUse = 1;
	      onlyForPlayer = 0;
	      shortcut = "";
	      condition = "(alive this) && ((vest this == 'Suicide_Vest') || (vest this == 'Suicide_Vest_Green') || (vest this == 'Suicide_Vest_Grey')) && !(this getVariable ['ace_captives_isSurrendering', false]) && !(this getVariable ['ace_captives_isHandcuffed', false]);";
	      statement = "[this] spawn FCLA_Vests_fnc_initExplosiveVest;";
			};
		};
	};
};





/********************************************************************************|
|                                     ARMAS                                      |
|********************************************************************************/

class CfgWeapons {
	class V_HarnessOGL_brn;
	class V_HarnessOGL_ghex_F;
	class V_HarnessOGL_gry;
	class V_PlateCarrier1_rgr;
	class V_PlateCarrier2_rgr;
	class V_PlateCarrier_Kerry;
	class V_PlateCarrierGL_rgr;
	class V_PlateCarrierSpec_rgr;
	class V_EOD_olive_F;
	class VestItem;

	#include "\FCLA_Vests\CfgWeapons.hpp"
	#include "\FCLA_Vests\Anaconda\CfgWeapons.hpp"
	#include "\FCLA_Vests\Condor\CfgWeapons.hpp"
	#include "\FCLA_Vests\FCLA\CfgWeapons.hpp"
	#include "\FCLA_Vests\Jaguar\CfgWeapons.hpp"
	#include "\FCLA_Vests\Quetzal\CfgWeapons.hpp"
	#include "\FCLA_Vests\Salamandra\CfgWeapons.hpp"
	#include "\FCLA_Vests\Takana\CfgWeapons.hpp"
};
