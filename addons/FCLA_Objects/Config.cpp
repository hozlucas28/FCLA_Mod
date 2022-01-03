
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Objects {
		#include "\FCLA_Objects\Units.hpp"
		requiredAddons[] = {"A3_Animals_F_Beta_Sheep", "A3_Animals_F_Beta_Goat", "A3_Animals_F_Beta_Chicken", "A3_Animals_F_Beta_Dog", "A3_Data_F_Curator_Misc"};
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
|                              EDITOR - CATEGORÍAS                               |
|********************************************************************************/

class CfgEditorCategories {
	class FCLA_Effects {displayName = "Efectos";};
};



/********************************************************************************|
|                             EDITOR - SUBCATEGORÍAS                             |
|********************************************************************************/

class CfgEditorSubcategories {
	class FCLA_Fire {displayName = "Fuego";};
	class FCLA_Smoke {displayName = "Humo";};
	class FCLA_Props {displayName = "Utilería";};
	class FCLA_Laboratory {displayName = "Laboratorio";};
};



/********************************************************************************|
|                                     LUCES                                      |
|********************************************************************************/

class CfgLights {
	class ObjectDestructionLight;
	class ObjectDestructionLightSmall;
	#include "\FCLA_Objects\Effects\CfgLights.hpp"
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
	class TargetBase: Static {};
	class Strategic: Building {};
	class Items_base_F: ThingX {};
	class NonStrategic: Building {};
	class Land_MapBoard_F: ThingX {};
	class Furniture_base_F: ThingX {};
	class BagFence_base_F: Strategic {};
	class Plane_Canopy_Base_F: ThingX {};
	class Helper_Base_F: NonStrategic {};
	class UserTexture1m_F: NonStrategic {};
	class lab_Items_base_F: Items_base_F {};
	class Land_Target_Oval_F: TargetBase {};
	class UserTexture10m_F: UserTexture1m_F {};
	class SportsGrounds_base_F: NonStrategic {};
	class Land_Laptop_03_base_F: Items_base_F {};
	class GalleryFrame_01_base_F: NonStrategic {};
	class Land_Laptop_unfolded_F: Items_base_F {};
	class Land_PCSet_01_screen_F: Items_base_F {};
	class Land_WallSign_01_base_F: NonStrategic {};
	class Land_MapBoard_01_base: Land_MapBoard_F {};
	class Land_TripodScreen_01_large_F: Items_base_F {};
	class Land_Laptop_03_sand_F: Land_Laptop_03_base_F {};
	class Land_Laptop_03_black_F: Land_Laptop_03_base_F {};
	class Land_Laptop_03_olive_F: Land_Laptop_03_base_F {};
	class Furniture_Residental_base_F: Furniture_base_F {};
	class GalleryFrame_02_base_F: GalleryFrame_01_base_F {};
	class Land_MapBoard_01_Wall_base_F: Land_MapBoard_01_base {};
	class GalleryFrame_01_large_base_F: GalleryFrame_01_base_F {};
	class GalleryFrame_02_square_base_F: GalleryFrame_02_base_F {};
	class Land_MapBoard_01_Wall_F: Land_MapBoard_01_Wall_base_F {};
	class GalleryFrame_02_square_F: GalleryFrame_02_square_base_F {};
	class GalleryFrame_01_large_v1_base_F: GalleryFrame_01_base_F {};
	class GalleryFrame_01_large_v2_base_F: GalleryFrame_01_base_F {};
	class GalleryFrame_01_large_v1_F: GalleryFrame_01_large_base_F {};
	class GalleryFrame_01_large_v2_F: GalleryFrame_01_large_v1_base_F {};
	class GalleryFrame_01_large_v3_F: GalleryFrame_01_large_v2_base_F {};
	class GalleryFrame_01_large_portrait_base_F: GalleryFrame_01_base_F {};
	class GalleryFrame_02_large_rectangle_base_F: GalleryFrame_02_base_F {};
	class Land_TripodScreen_01_large_sand_F: Land_TripodScreen_01_large_F {};
	class Land_TripodScreen_01_large_black_F: Land_TripodScreen_01_large_F {};
	class GalleryFrame_01_large_portrait_F: GalleryFrame_01_large_portrait_base_F {};
	class GalleryFrame_02_large_rectangle_F: GalleryFrame_02_large_rectangle_base_F {};
	class Man: Land {};
	class Animal: Man {};
	class Animal_Base_F: Animal {};
	class Dog_Base_F: Animal_Base_F {};
	class Fowl_Base_F: Animal_Base_F {};
	class Alsatian_Base_F: Dog_Base_F {};
	class Banner_01_base_F: NonStrategic {};
	class GalleryFrame_02_F: GalleryFrame_02_base_F {};
	class Goat_Base_F: Animal_Base_F {};
	class Fin_Base_F: Dog_Base_F {};

	#include "\FCLA_Objects\Animals\CfgVehicles.hpp"
	#include "\FCLA_Objects\Banners\CfgVehicles.hpp"
	#include "\FCLA_Objects\Boards\CfgVehicles.hpp"
	#include "\FCLA_Objects\Effects\CfgVehicles.hpp"
	#include "\FCLA_Objects\Electronics\CfgVehicles.hpp"
	#include "\FCLA_Objects\Gallery\CfgVehicles.hpp"
	#include "\FCLA_Objects\Laboratory\CfgVehicles.hpp"
	#include "\FCLA_Objects\Props\CfgVehicles.hpp"
	#include "\FCLA_Objects\Structures\CfgVehicles.hpp"
	#include "\FCLA_Objects\Targets\CfgVehicles.hpp"
	#include "\FCLA_Objects\Tools\CfgVehicles.hpp"
	#include "\FCLA_Objects\Wrecks\CfgVehicles.hpp"
};
