
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Objects {
		#include "\FCLA_Objects\Units.hpp"
		weapons[] = {};
		requiredAddons[] = {"A3_Animals_F","A3_Animals_F_Beta","A3_Animals_F_Animconfig","cba_common","ace_common"};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};





/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Objects {
		#include "\FCLA_Objects\Electronic\CfgFunctions.hpp"
		#include "\FCLA_Objects\Flags\CfgFunction.hpp"
		#include "\FCLA_Objects\Logistics\CfgFunctions.hpp"
	};
};





/********************************************************************************|
|                                      LUCES                                     |
|********************************************************************************/

class CfgLights {
	class ObjectDestructionLightSmall;
	class ObjectDestructionLight;
	class BigFireLight: ObjectDestructionLight {intensity = "25000 * (power interpolate [0.1, 1.0, 0.7, 1.0])";};
	class MediumFireLight: ObjectDestructionLightSmall {intensity = "3500 * (power interpolate [0.1, 1.0, 0.7, 1.0])";};
};





/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class Animal_Base_F;
	class Dog_Base_F;
	class Fin_Base_F;
	class Alsatian_Base_F;
	class Fowl_Base_F;
	class Cock_random_F;
	class Goat_Base_F;
	class Banner_01_F;
	class Helper_Base_F;
	class BagFence_base_F;
	class Items_base_F;
	class Land_PlasticCase_01_large_F;
	class Land_PlasticCase_01_medium_F;
	class Land_PlasticCase_01_small_F;
	class Land_Bodybag_01_base_F;
	class Land_Bodybag_01_empty_base_F;
	class Thing;
	class Land_Laptop_unfolded_F;
	class Land_PCSet_01_screen_F;
	class Land_TripodScreen_01_large_F;
	class Land_Laptop_03_sand_F;
	class Land_Laptop_03_black_F;
	class Land_Laptop_03_olive_F;
	class Land_Tablet_02_F;
	class Land_Tablet_01_F;
	class Flag_White_F;
	class UserTexture1m_F;
	class ThingX;
	class Furniture_base_F;
	class House_F;
	class PlaneWreck;
	class Land_NavigLight;
	class Land_NavigLight_3_F;
	class Infrastructure_base_F;
	class Leaflet_05_F;
	class Leaflet_05_New_F;
	class Leaflet_05_Old_F;
	class Land_Pallet_F;
	class RoadBarrier_small_F;
	class RoadCone_L_F;
	class Land_BagFence_Long_F;
	class Land_BagFence_Short_F;
	class Land_BagFence_End_F;
	class Land_BagFence_Round_F;
	class Land_BagFence_Corner_F;
	class Land_BagFence_01_long_green_F;
	class Land_BagFence_01_short_green_F;
	class Land_BagFence_01_end_green_F;
	class Land_BagFence_01_corner_green_F;
	class Land_BagFence_01_round_green_F;
	class Land_HBarrier_1_F;
	class Land_HBarrier_01_line_1_green_F;
	class Land_CncBarrier_stripes_F;
	class Land_CncBarrier_F;
	class Land_ConcreteHedgehog_01_F;
	class Land_ConcreteHedgehog_01_half_F;
	class Land_ConcreteHedgehog_01_palette_F;
	class Land_DragonsTeeth_01_1x1_new_F;
	class Land_DragonsTeeth_01_1x1_old_F;
	class Land_DragonsTeeth_01_1x1_new_redwhite_F;
	class Land_DragonsTeeth_01_1x1_old_redwhite_F;
	class Land_InfoStand_V2_F;
	class Infostand_base_F;
	class Land_WallSign_01_chalkboard_F;
	class Poster_base_F;
	class Land_Poster_04_F;
	class Land_MapBoard_F;
	class Land_MapBoard_01_Wall_base_F;
	class SignAd_Sponsor_F;
	class Land_Photos_V1_F;
	class GalleryFrame_01_large_portrait_F;
	class GalleryFrame_02_large_rectangle_F;
	class GalleryFrame_01_large_v1_F;
	class GalleryFrame_01_large_v2_F;
	class GalleryFrame_01_large_v3_F;
	class GalleryFrame_02_F;
	class GalleryFrame_02_square_F;
	class Land_Target_Oval_F;

	#include "\FCLA_Objects\Animals\CfgVehicles.hpp"
	#include "\FCLA_Objects\Banners\CfgVehicles.hpp"
	#include "\FCLA_Objects\Decorations\CfgVehicles.hpp"
	#include "\FCLA_Objects\Effects\CfgVehicles.hpp"
	#include "\FCLA_Objects\Electronic\CfgVehicles.hpp"
	#include "\FCLA_Objects\Flags\CfgVehicles.hpp"
	#include "\FCLA_Objects\Graffitis\CfgVehicles.hpp"
	#include "\FCLA_Objects\Hidden_Objects\CfgVehicles.hpp"
	#include "\FCLA_Objects\Leaflets\CfgVehicles.hpp"
	#include "\FCLA_Objects\Logistics\CfgVehicles.hpp"
	#include "\FCLA_Objects\Others\CfgVehicles.hpp"
	#include "\FCLA_Objects\Photos\CfgVehicles.hpp"
	#include "\FCLA_Objects\Targets\CfgVehicles.hpp"
};


/********************************************************************************|
|                              SUB - CATEGORÍAS 3EDEN                            |
|********************************************************************************/

class CfgEditorSubcategories {
	class FCLA_subCategory_Animals {displayName = "Animales";};
	class FCLA_subCategory_Flags {displayName = "Banderas";};
	class FCLA_subCategory_Decorations {displayName = "Decoraciones";};
	class FCLA_subCategory_Effects {displayName = "Efectos";};
	class FCLA_subCategory_Electronic {displayName = "Electrónica";};
	class FCLA_subCategory_Banners {displayName = "Estandartes";};
	class FCLA_subCategory_Graffitis {displayName = "Grafitis";};
	class FCLA_subCategory_Logistic {displayName = "Logística";};
	class FCLA_subCategory_Targets {displayName = "Objetivos";};
	class FCLA_subCategory_hiddenVanilla {displayName = "Ocultos (vanilla)";};
	class FCLA_subCategory_Leaflets {displayName = "Panfletos";};
	class FCLA_subCategory_Armored {displayName = "Tanques";};
	class FCLA_subCategory_Miscellaneous {displayName = "Varios";};
};
