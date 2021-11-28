
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
	class Van_02_base_F: Truck_F {};
	class APC_Tracked_01_base_F: Tank_F {};
	class Van_02_service_base_F: Van_02_base_F {};
	class Van_02_vehicle_base_F: Van_02_base_F {};
	class Van_02_medevac_base_F: Van_02_base_F {};
	class Van_02_transport_base_F: Van_02_base_F {};
	class C_Van_02_vehicle_F: Van_02_vehicle_base_F {};
	class C_Van_02_service_F: Van_02_service_base_F {};
	class C_Van_02_medevac_F: Van_02_medevac_base_F {};
	class C_Van_02_transport_F: Van_02_transport_base_F {};

	#include "\FCLA_Land\OPFOR\CfgVehicles.hpp"
	#include "\FCLA_Land\BLUFOR\CfgVehicles.hpp"
	#include "\FCLA_Land\INDEPENDENT\CfgVehicles.hpp"
};
