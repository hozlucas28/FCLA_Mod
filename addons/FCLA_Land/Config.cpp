
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Land {
		requiredAddons[] = {};
		#include "\FCLA_Land\units.hpp"
		version = "2.0";
		author = "hozlucas28";
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
	class UGV_01_base_F: Car_F {};
	class Van_02_base_F: Truck_F {};
	class Offroad_01_base_F: Car_F {};
	class APC_Tracked_01_base_F: Tank_F {};
	class Van_02_service_base_F: Van_02_base_F {};
	class Van_02_vehicle_base_F: Van_02_base_F {};
	class Van_02_medevac_base_F: Van_02_base_F {};
	class Van_02_transport_base_F: Van_02_base_F {};
	class C_Van_02_vehicle_F: Van_02_vehicle_base_F {};
	class C_Van_02_service_F: Van_02_service_base_F {};
	class C_Van_02_medevac_F: Van_02_medevac_base_F {};
	class Offroad_01_unarmed_base_F: Offroad_01_base_F {};
	class Offroad_01_military_base_F: Offroad_01_base_F {};
	class C_Van_02_transport_F: Van_02_transport_base_F {};
	class Offroad_01_civil_base_F: Offroad_01_unarmed_base_F {};
	class Offroad_01_armed_base_F: Offroad_01_military_base_F {};
	class Offroad_01_military_covered_base_F: Offroad_01_military_base_F {};
	class Offroad_01_military_comms_base_F: Offroad_01_military_covered_base_F {};
	class B_GEN_Offroad_01_covered_F: Offroad_01_military_covered_base_F {};
	class B_GEN_Offroad_01_comms_F: Offroad_01_military_comms_base_F {};
	class B_GEN_Offroad_01_gen_F: Offroad_01_civil_base_F {};
	class I_G_Offroad_01_armed_F: Offroad_01_armed_base_F {};
	class B_G_Offroad_01_armed_F: I_G_Offroad_01_armed_F {};

	#include "\FCLA_Land\OPFOR\CfgVehicles.hpp"
	#include "\FCLA_Land\BLUFOR\CfgVehicles.hpp"
	#include "\FCLA_Land\CIVILIAN\CfgVehicles.hpp"
	#include "\FCLA_Land\INDEPENDENT\CfgVehicles.hpp"
};
