
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Land {
		requiredAddons[] = {};
		#include "\FCLA_Land\units.hpp"
		author = "hozlucas28";
		version = "2.0";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All;
	class AllVehicles: All {};
	class Land: AllVehicles {};
	class LandVehicle: Land {};
	class Car: LandVehicle {};
	class Tank: LandVehicle {};
	class Car_F: Car {};
	class Tank_F: Tank {};
	class Truck_F: Car_F {};
	class Wheeled_APC_F: Car_F {};
	class UGV_01_base_F: Car_F {};
	class LSV_02_base_F: Car_F {};
	class MRAP_02_base_F: Car_F {};
	class MBT_02_base_F: Tank_F {};
	class MBT_04_base_F: Tank_F {};
	class Van_02_base_F: Truck_F {};
	class Offroad_01_base_F: Car_F {};
	class Truck_03_base_F: Truck_F {};
	class StaticWeapon: LandVehicle {};
	class StaticMGWeapon: StaticWeapon {};
	class APC_Tracked_02_base_F: Tank_F {};
	class APC_Tracked_01_base_F: Tank_F {};
	class LSV_02_AT_base_F: LSV_02_base_F {};
	class O_T_LSV_02_AT_F: LSV_02_AT_base_F {};
	class MBT_02_arty_base_F: MBT_02_base_F {};
	class O_Truck_03_ammo_F: Truck_03_base_F {};
	class MRAP_02_hmg_base_F: MRAP_02_base_F {};
	class O_T_MRAP_02_ghex_F: MRAP_02_base_F {};
	class LSV_02_armed_base_F: LSV_02_base_F {};
	class MBT_04_cannon_base_F: MBT_04_base_F {};
	class O_Truck_03_repair_F: Truck_03_base_F {};
	class SAM_System_04_base_F: StaticMGWeapon {};
	class APC_Wheeled_02_base_F: Wheeled_APC_F {};
	class MBT_04_command_base_F: MBT_04_base_F {};
	class Van_02_service_base_F: Van_02_base_F {};
	class Van_02_vehicle_base_F: Van_02_base_F {};
	class Van_02_medevac_base_F: Van_02_base_F {};
	class LSV_02_unarmed_base_F: LSV_02_base_F {};
	class O_Truck_03_covered_F: Truck_03_base_F {};
	class O_Truck_03_medical_F: Truck_03_base_F {};
	class Radar_System_02_base_F: StaticMGWeapon {};
	class Van_02_transport_base_F: Van_02_base_F {};
	class MRAP_02_gmg_base_F: MRAP_02_hmg_base_F {};
	class O_Truck_03_transport_F: Truck_03_base_F {};
	class O_T_LSV_02_armed_F: LSV_02_armed_base_F {};
	class O_SAM_System_04_F: SAM_System_04_base_F {};
	class O_MBT_02_arty_base_F: MBT_02_arty_base_F {};
	class O_T_MBT_04_cannon_F: MBT_04_cannon_base_F {};
	class C_Van_02_vehicle_F: Van_02_vehicle_base_F {};
	class C_Van_02_service_F: Van_02_service_base_F {};
	class C_Van_02_medevac_F: Van_02_medevac_base_F {};
	class O_T_MRAP_02_hmg_ghex_F: MRAP_02_hmg_base_F {};
	class O_T_MRAP_02_gmg_ghex_F: MRAP_02_gmg_base_F {};
	class O_Radar_System_02_F: Radar_System_02_base_F {};
	class O_T_MBT_04_command_F: MBT_04_command_base_F {};
	class O_T_LSV_02_unarmed_F: LSV_02_unarmed_base_F {};
	class O_T_Truck_03_ammo_ghex_F: O_Truck_03_ammo_F {};
	class Offroad_01_unarmed_base_F: Offroad_01_base_F {};
	class Offroad_01_military_base_F: Offroad_01_base_F {};
	class C_Van_02_transport_F: Van_02_transport_base_F {};
	class O_APC_Tracked_02_base_F: APC_Tracked_02_base_F {};
	class O_APC_Tracked_02_AA_F: O_APC_Tracked_02_base_F {};
	class APC_Wheeled_02_base_v2_F: APC_Wheeled_02_base_F {};
	class O_T_Truck_03_repair_ghex_F: O_Truck_03_repair_F {};
	class O_T_Truck_03_covered_ghex_F: O_Truck_03_covered_F {};
	class O_T_Truck_03_medical_ghex_F: O_Truck_03_medical_F {};
	class O_APC_Tracked_02_cannon_F: O_APC_Tracked_02_base_F {};
	class Offroad_01_civil_base_F: Offroad_01_unarmed_base_F {};
	class Offroad_01_armed_base_F: Offroad_01_military_base_F {};
	class O_T_Truck_03_transport_ghex_F: O_Truck_03_transport_F {};
	class O_T_APC_Tracked_02_cannon_ghex_F: O_APC_Tracked_02_cannon_F {};
	class O_T_APC_Wheeled_02_rcws_v2_ghex_F: APC_Wheeled_02_base_v2_F {};
	class Offroad_01_military_covered_base_F: Offroad_01_military_base_F {};
	class Offroad_01_military_comms_base_F: Offroad_01_military_covered_base_F {};
	class B_GEN_Offroad_01_covered_F: Offroad_01_military_covered_base_F {};
	class B_GEN_Offroad_01_comms_F: Offroad_01_military_comms_base_F {};
	class O_T_APC_Tracked_02_AA_ghex_F: O_APC_Tracked_02_AA_F {};
	class B_GEN_Offroad_01_gen_F: Offroad_01_civil_base_F {};
	class I_G_Offroad_01_armed_F: Offroad_01_armed_base_F {};
	class B_G_Offroad_01_armed_F: I_G_Offroad_01_armed_F {};
	class O_MBT_02_arty_F: O_MBT_02_arty_base_F {};
	class O_T_MBT_02_arty_ghex_F: O_MBT_02_arty_F {};
	class O_MBT_02_base_F: MBT_02_base_F {};
	class O_MBT_02_cannon_F: O_MBT_02_base_F {};
	class O_T_MBT_02_cannon_ghex_F: O_MBT_02_cannon_F {};

	#include "\FCLA_Land\OPFOR\CfgVehicles.hpp"
	#include "\FCLA_Land\BLUFOR\CfgVehicles.hpp"
	#include "\FCLA_Land\CIVILIAN\CfgVehicles.hpp"
	#include "\FCLA_Land\INDEPENDENT\CfgVehicles.hpp"
};
