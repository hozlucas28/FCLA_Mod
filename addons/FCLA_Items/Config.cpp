
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Items {
		#include "\FCLA_Items\ammo.hpp"
		#include "\FCLA_Items\units.hpp"
		#include "\FCLA_Items\weapons.hpp"
		requiredAddons[] = {"A3_characters_F", "A3_Data_F", "A3_Missions_F_Oldman", "ace_explosives"};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                                  INCLUSIONES                                   |
|********************************************************************************/

#include "\FCLA_Items\Throwables\Classes.hpp"



/********************************************************************************|
|                                   FUNCIONES                                    |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Items {
		#include "\FCLA_Items\Flare_Trip_Mine\CfgFunction.hpp"
	};
};



/********************************************************************************|
|                                     SONIDOS                                    |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Items\CfgSounds.hpp"
};



/********************************************************************************|
|                                     NUBES                                      |
|********************************************************************************/

class CfgCloudlets {
	class Default;
	#include "\FCLA_Items\Throwables\CfgCloudlets.hpp"
};



/********************************************************************************|
|                                      LUCES                                     |
|********************************************************************************/

class CfgLights {
	#include "\FCLA_Items\Throwables\CfgLights.hpp"
};



/********************************************************************************|
|                                      ARMAS                                     |
|********************************************************************************/

class CfgWeapons {
	class Default;
	class InventoryItem_Base_F;
	class ItemCore: Default {};
	class CBA_MiscItem: ItemCore {};
	class CBA_MiscItem_ItemInfo: InventoryItem_Base_F {};
	class GrenadeLauncher: Default {};

	#include "\FCLA_Items\Others\CfgWeapons.hpp"
	#include "\FCLA_Items\Throwables\CfgWeapons.hpp"
};



/********************************************************************************|
|                                   MUNICIONES                                   |
|********************************************************************************/

class CfgAmmo {
	class Default;
	class Grenade: Default {};
	class GrenadeHand: Grenade {};
	class TimeBombCore: Default {};
	class DirectionalBombCore: TimeBombCore {};
	class DirectionalBombBase: DirectionalBombCore {};
	class APERSTripMine_Wire_Ammo: DirectionalBombBase {};

	#include "\FCLA_Items\Flare_Trip_Mine\CfgAmmo.hpp"
	#include "\FCLA_Items\Throwables\CfgAmmo.hpp"
};



/********************************************************************************|
|                                   CARGADORES                                   |
|********************************************************************************/

class CfgMagazines {
	class Default;
	class CA_Magazine: Default {};
	class HandGrenade: CA_Magazine {};
	#include "\FCLA_Items\Throwables\CfgMagazines.hpp"
};
