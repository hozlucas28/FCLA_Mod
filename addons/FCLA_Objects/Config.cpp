
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Objects {
		#include "\FCLA_Objects\Units.hpp"
		requiredAddons[] = {"A3_Animals_F_Beta_Sheep", "A3_Animals_F_Beta_Goat", "A3_Animals_F_Beta_Chicken", "A3_Animals_F_Beta_Dog"};
		author = "hozlucas28";
		version = "2.0";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

//class CfgFunctions {
	//class FCLA_Objects {
	//};
//};



/********************************************************************************|
|                             EDITOR - SUBCATEGORÍAS                             |
|********************************************************************************/

class CfgEditorSubcategories {
	class FCLA_Props {displayName = "Utilería";};
};



/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All;
	class Thing: All {};
	class Static: All {};
	class ThingX: Thing {};
	class AllVehicles: All {};
	class Building: Static {};
	class Land: AllVehicles {};
	class Strategic: Building {};
	class Items_base_F: ThingX {};
	class NonStrategic: Building {};
	class Furniture_base_F: ThingX {};
	class BagFence_base_F: Strategic {};
	class Helper_Base_F: NonStrategic {};
	class UserTexture1m_F: NonStrategic {};
	class UserTexture10m_F: UserTexture1m_F {};
	class Furniture_Residental_base_F: Furniture_base_F {};
	class Man: Land {};
	class Animal: Man {};
	class Animal_Base_F: Animal {};
	class Dog_Base_F: Animal_Base_F {};
	class Fowl_Base_F: Animal_Base_F {};
	class Alsatian_Base_F: Dog_Base_F {};
	class Banner_01_base_F: NonStrategic {};
	class Goat_Base_F: Animal_Base_F {};
	class Fin_Base_F: Dog_Base_F {};

	#include "\FCLA_Objects\Animals\CfgVehicles.hpp"
	#include "\FCLA_Objects\Banners\CfgVehicles.hpp"
	#include "\FCLA_Objects\Props\CfgVehicles.hpp"
};
