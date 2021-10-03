
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Items {
		units[] = {"FCLA_TripflareMine","FCLA_Chroma_Green","FCLA_Chroma_Blue"};
		weapons[] = {};
		requiredAddons[] = {"A3_characters_F","A3_Data_F"};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
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
		#include "\FCLA_Items\Tripflare\CfgFunction.hpp"
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
    class APERSTripMine;
		#include "\FCLA_Items\Tripflare\CfgVehicle.hpp"
};





/********************************************************************************|
|                                      ARMAS                                     |
|********************************************************************************/

class CfgWeapons {
	class CBA_MiscItem;
	class CBA_MiscItem_ItemInfo;
	class GrenadeLauncher;
	class Default;

	#include "\FCLA_Items\Chroma\CfgWeapons.hpp"
	#include "\FCLA_Items\Role_Playing\CfgWeapons.hpp"
	#include "\FCLA_Items\Throwables\CfgWeapons.hpp"
	#include "\FCLA_Items\Tripflare\CfgWeapon.hpp"
};





/********************************************************************************|
|                                   MUNICIONES                                   |
|********************************************************************************/

class CfgAmmo {
	class Default;
	class Grenade: Default {};
	class GrenadeHand: Grenade {};
	class APERSTripMine_Wire_Ammo;

	#include "\FCLA_Items\Throwables\CfgAmmo.hpp"
	#include "\FCLA_Items\Tripflare\CfgAmmo.hpp"
};





/********************************************************************************|
|                                   CARGADORES                                   |
|********************************************************************************/

class CfgMagazines {
	class Default;
	class CA_Magazine: Default {};
	class HandGrenade: CA_Magazine {};
	class APERSTripMine_Wire_Mag;

	#include "\FCLA_Items\Throwables\cfgMagazines.hpp"
	#include "\FCLA_Items\Tripflare\cfgMagazine.hpp"
};
