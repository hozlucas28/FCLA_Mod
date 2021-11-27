
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Items {
		#include "\FCLA_Items\ammo.hpp"
		#include "\FCLA_Items\units.hpp"
		#include "\FCLA_Items\weapons.hpp"
		requiredAddons[] = {"A3_characters_F", "A3_Data_F", "A3_Missions_F_Oldman", "ace_explosives"};
		author = "hozlucas28";
		version = "2.0";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                                  INCLUSIONES                                   |
|********************************************************************************/

#include "\FCLA_Items\Throwables\Classes.hpp"
#include "\FCLA_Items\Flashlight_Red\Classes.hpp"



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
|                                   VEHÍCULOS                                    |
|********************************************************************************/

class CfgVehicles {
	class All;
	class Static: All {};
	class Building: Static {};
	class Strategic: Building {};
	class ReammoBox: Strategic {};
	class WeaponHolder: ReammoBox {};
	class Item_Base_F: WeaponHolder {};
	class Headgear_Base_F: WeaponHolder {};

	#include "\FCLA_Items\Others\CfgVehicles.hpp"
	#include "\FCLA_Items\RF_3080\CfgVehicle.hpp"
	#include "\FCLA_Items\Blindfolds\CfgVehicles.hpp"
	#include "\FCLA_Items\Light_Sticks\CfgVehicle.hpp"
	#include "\FCLA_Items\Flashlight_Red\CfgVehicle.hpp"
	#include "\FCLA_Items\Camouflage_Nets\CfgVehicles.hpp"
	#include "\FCLA_Items\Night_Vision_Battery\CfgVehicle.hpp"
};



/********************************************************************************|
|                                      ARMAS                                     |
|********************************************************************************/

class CfgWeapons {
	class Default;
	class InventoryItem_Base_F;
	class ItemCore: Default {};
	class Binocular: Default {};
	class NVGoggles: Binocular {};
	class CBA_MiscItem: ItemCore {};
	class GrenadeLauncher: Default {};
	class CBA_MiscItem_ItemInfo: InventoryItem_Base_F {};
	class InventoryFlashLightItem_Base_F: InventoryItem_Base_F {};

	#include "\FCLA_Items\Others\CfgWeapons.hpp"
	#include "\FCLA_Items\RF_3080\CfgWeapon.hpp"
	#include "\FCLA_Items\Throwables\CfgWeapons.hpp"
	#include "\FCLA_Items\Blindfolds\CfgWeapons.hpp"
	#include "\FCLA_Items\Light_Sticks\CfgWeapon.hpp"
	#include "\FCLA_Items\Flashlight_Red\CfgWeapon.hpp"
	#include "\FCLA_Items\Camouflage_Nets\CfgWeapons.hpp"
	#include "\FCLA_Items\Night_Vision_Battery\CfgWeapon.hpp"
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

	#include "\FCLA_Items\Throwables\CfgAmmo.hpp"
	#include "\FCLA_Items\Flare_Trip_Mine\CfgAmmo.hpp"
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



/********************************************************************************|
|                                    ANTEOJOS                                    |
|********************************************************************************/

class CfgGlasses {
	class None;
	class G_Blindfold_01_base_F: None {};

	#include "\FCLA_Items\Masks\CfgGlasses.hpp"
	#include "\FCLA_Items\Blindfolds\CfgGlasses.hpp"
};
