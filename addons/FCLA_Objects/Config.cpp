
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Objects {
		#include "\FCLA_Objects\Units.hpp"
		requiredAddons[] = {"A3_Animals_F_Beta_Sheep", "A3_Animals_F_Beta_Goat", "A3_Animals_F_Beta_Chicken", "A3_Animals_F_Beta_Dog", "A3_Data_F_Curator_Misc", "A3_Structures_F_Oldman_Signs_Traffic"};
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
	class FCLA_Objects {
		#include "\FCLA_Objects\Electronics\CfgFunction.hpp"
	};
};



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
	class HouseBase: NonStrategic {};
	class Land_MapBoard_F: ThingX {};
	class Furniture_base_F: ThingX {};
	class Infostand_base_F: ThingX {};
	class BagFence_base_F: Strategic {};
	class FlagCarrierCore: Strategic {};
	class Plane_Canopy_Base_F: ThingX {};
	class Helper_Base_F: NonStrategic {};
	class Constructions_base_F: ThingX {};
	class FlagCarrier: FlagCarrierCore {};
	class UserTexture1m_F: NonStrategic {};
	class lab_Items_base_F: Items_base_F {};
	class Land_Target_Oval_F: TargetBase {};
	class Land_Photos_V1_F: Items_base_F {};
	class Land_Sign_Mines_F: NonStrategic {};
	class Leaflet_05_Base_F: Items_base_F {};
	class Leaflet_05_F: Leaflet_05_Base_F {};
	class UserTexture10m_F: UserTexture1m_F {};
	class SportsGrounds_base_F: NonStrategic {};
	class Land_Laptop_03_base_F: Items_base_F {};
	class GasTank_base_F: Constructions_base_F {};
	class GalleryFrame_01_base_F: NonStrategic {};
	class Land_Laptop_unfolded_F: Items_base_F {};
	class Land_PCSet_01_screen_F: Items_base_F {};
	class Land_InfoStand_V1_F: Infostand_base_F {};
	class Land_InfoStand_V2_F: Infostand_base_F {};
	class Land_WallSign_01_base_F: NonStrategic {};
	class Land_MapBoard_01_base: Land_MapBoard_F {};
	class Land_Photoframe_02_base_F: NonStrategic {};
	class Land_TripodScreen_01_large_F: Items_base_F {};
	class Land_Laptop_03_sand_F: Land_Laptop_03_base_F {};
	class Land_Laptop_03_black_F: Land_Laptop_03_base_F {};
	class Land_Laptop_03_olive_F: Land_Laptop_03_base_F {};
	class Furniture_Residental_base_F: Furniture_base_F {};
	class GalleryFrame_02_base_F: GalleryFrame_01_base_F {};
	class Land_Photoframe_02_F: Land_Photoframe_02_base_F {};
	class Land_Sign_WarningMilAreaSmall_F: Land_Sign_Mines_F {};
	class Land_MapBoard_01_Wall_base_F: Land_MapBoard_01_base {};
	class GalleryFrame_01_large_base_F: GalleryFrame_01_base_F {};
	class GalleryFrame_02_square_base_F: GalleryFrame_02_base_F {};
	class Land_MapBoard_01_Wall_F: Land_MapBoard_01_Wall_base_F {};
	class Land_WallSign_01_chalkboard_F: Land_WallSign_01_base_F {};
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
	class House: HouseBase {};
	class Wall: NonStrategic {};
	class Animal_Base_F: Animal {};
	class Flag_AAF_F: FlagCarrier {};
	class Flag_White_F: FlagCarrier {};
	class Dog_Base_F: Animal_Base_F {};
	class Fowl_Base_F: Animal_Base_F {};
	class Alsatian_Base_F: Dog_Base_F {};
	class Banner_01_base_F: NonStrategic {};
	class Leaflet_05_FIA_F: Leaflet_05_F {};
	class Land_GasTank_02_F: GasTank_base_F {};
	class GalleryFrame_02_F: GalleryFrame_02_base_F {};
	class Goat_Base_F: Animal_Base_F {};
	class Fin_Base_F: Dog_Base_F {};
	class House_F: House {};
	class Wall_F: Wall {};
	class Sign_F: Wall_F {};
	class SignAd_Sponsor_F: Sign_F {};
	class Industry_base_F: House_F {};
	class Land_DryDock_01_end_F: Industry_base_F {};
	class SignAd_Sponsor_Fuel_white_F: SignAd_Sponsor_F {};

	#include "\FCLA_Objects\Animals\CfgVehicles.hpp"
	#include "\FCLA_Objects\Banners\CfgVehicles.hpp"
	#include "\FCLA_Objects\Boards\CfgVehicles.hpp"
	#include "\FCLA_Objects\Effects\CfgVehicles.hpp"
	#include "\FCLA_Objects\Electronics\CfgVehicles.hpp"
	#include "\FCLA_Objects\Flags\CfgVehicles.hpp"
	#include "\FCLA_Objects\Gallery\CfgVehicles.hpp"
	#include "\FCLA_Objects\Graffitis\CfgVehicles.hpp"
	#include "\FCLA_Objects\Laboratory\CfgVehicles.hpp"
	#include "\FCLA_Objects\Leaflets\CfgVehicles.hpp"
	#include "\FCLA_Objects\Miscellaneous\CfgVehicles.hpp"
	#include "\FCLA_Objects\Military\CfgVehicles.hpp"
	#include "\FCLA_Objects\Photos\CfgVehicles.hpp"
	#include "\FCLA_Objects\Props\CfgVehicles.hpp"
	#include "\FCLA_Objects\Signs\CfgVehicles.hpp"
	#include "\FCLA_Objects\Structures\CfgVehicles.hpp"
	#include "\FCLA_Objects\Targets\CfgVehicles.hpp"
	#include "\FCLA_Objects\Tools\CfgVehicles.hpp"
	#include "\FCLA_Objects\Wrecks\CfgVehicles.hpp"
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_InitPost_EventHandlers {
	class Satellite_Antenna_RF_3080 {
		init = "[_this select 0] spawn FCLA_Objects_fnc_initSatelliteAntenna;";
	};

	class Custom_Leaflet_05_F {
		init = "['init', [_this select 0, (getObjectTextures (_this select 0)) select 0, '']] call BIS_fnc_initLeaflet;";
	};
};
