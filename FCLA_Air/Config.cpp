
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Air {
		#include "\FCLA_Air\units.hpp"
		weapons[] = {};
		requiredAddons[] = {"A3_Air_F_Heli_Heli_Transport_04","FCLA_Units"};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};



/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All;
	class AllVehicles: All {};
	class Air: AllVehicles {};
	class Helicopter: Air {};
	class Helicopter_Base_F: Helicopter {};
	class Helicopter_Base_H: Helicopter_Base_F {};
	class Heli_Transport_01_base_F: Helicopter_Base_H {};
	class Heli_Transport_03_base_F: Helicopter_Base_H {};
	class Heli_Transport_03_unarmed_base_F: Heli_Transport_03_base_F {};
	class Heli_Attack_02_base_F: Helicopter_Base_F {};
	class Heli_Attack_02_dynamicLoadout_base_F: Heli_Attack_02_base_F {};
	class Heli_Transport_02_base_F: Helicopter_Base_H {};
	class Plane: Air {};
	class Plane_Base_F: Plane {};
	class VTOL_Base_F: Plane_Base_F {};
	class VTOL_01_Base_F: VTOL_Base_F {};
	class VTOL_01_unarmed_base_F: VTOL_Base_F {};
	class VTOL_01_vehicle_base_F: VTOL_01_unarmed_base_F {};
	class VTOL_02_base_F: VTOL_Base_F {};
	class VTOL_02_infantry_base_F: VTOL_02_Base_F {};
	class VTOL_02_infantry_dynamicLoadout_base_F: VTOL_02_infantry_base_F {};
	class O_T_VTOL_02_infantry_dynamicLoadout_F: VTOL_02_infantry_dynamicLoadout_base_F {};
	class VTOL_02_vehicle_base_F: VTOL_02_Base_F {};
	class VTOL_02_vehicle_dynamicLoadout_base_F: VTOL_02_vehicle_base_F {};
	class Heli_Light_02_base_F: Helicopter_Base_H {};
	class Heli_Light_02_dynamicLoadout_base_F: Heli_Light_02_base_F {};
	class O_Heli_Light_02_dynamicLoadout_F: Heli_Light_02_dynamicLoadout_base_F {};
	class Heli_Light_02_unarmed_base_F: Heli_Light_02_base_F {};
	class O_Heli_Light_02_unarmed_F: Heli_Light_02_unarmed_base_F {};
	class UAV: Plane {};
	class UAV_04_base_F: UAV {};
	class O_T_UAV_04_CAS_F: UAV_04_base_F {};
	class Plane_Fighter_02_Base_F: Plane_Base_F {};
	class O_Plane_Fighter_02_Stealth_F: Plane_Fighter_02_Base_F {};
	class O_Plane_Fighter_02_F: Plane_Fighter_02_Base_F {};

	class Heli_Transport_04_base_F: Helicopter_Base_H {
		class Turrets {
			class MainTurret;
			class CopilotTurret;
			class LoadmasterTurret;
		};
	};

	class O_Heli_Transport_04_F: Heli_Transport_04_base_F {
		class Turrets: Turrets {
			class MainTurret;
			class CopilotTurret: CopilotTurret {gunnerType = "O_helipilot_F";};
			class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_helipilot_F";};
		};
	};

	class O_Heli_Transport_04_bench_F: Heli_Transport_04_base_F {
		class Turrets: Turrets {
			class MainTurret;
			class CopilotTurret: CopilotTurret {gunnerType = "O_helipilot_F";};
			class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_helipilot_F";};
			class CargoTurret_01;
			class CargoTurret_02;
			class CargoTurret_03;
			class CargoTurret_04;
			class CargoTurret_05;
			class CargoTurret_06;
			class CargoTurret_07;
			class CargoTurret_08;
		};
	};

	class O_Heli_Transport_04_covered_F: Heli_Transport_04_base_F {
		class Turrets: Turrets {
			class MainTurret;
			class CopilotTurret: CopilotTurret {gunnerType = "O_helipilot_F";};
			class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_helipilot_F";};
			class CargoTurret_01;
			class CargoTurret_02;
		};
	};

	class O_Heli_Transport_04_medevac_F: Heli_Transport_04_base_F {
		class Turrets: Turrets {
			class MainTurret;
			class CopilotTurret: CopilotTurret {gunnerType = "O_helipilot_F";};
			class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_helipilot_F";};
		};
	};

	class O_Heli_Transport_04_repair_F: Heli_Transport_04_base_F {
		class Turrets: Turrets {
			class MainTurret;
			class CopilotTurret: CopilotTurret {gunnerType = "O_helipilot_F";};
			class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_helipilot_F";};
		};
	};

	class O_Heli_Transport_04_fuel_F: Heli_Transport_04_base_F {
		class Turrets: Turrets {
			class MainTurret;
			class CopilotTurret: CopilotTurret {gunnerType = "O_helipilot_F";};
			class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_helipilot_F";};
		};
	};

	class O_Heli_Transport_04_ammo_F: Heli_Transport_04_base_F {
		class Turrets: Turrets {
			class MainTurret;
			class CopilotTurret: CopilotTurret {gunnerType = "O_helipilot_F";};
			class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_helipilot_F";};
		};
	};

	class O_Heli_Transport_04_box_F: Heli_Transport_04_base_F {
		class Turrets: Turrets {
			class MainTurret;
			class CopilotTurret: CopilotTurret {gunnerType = "O_helipilot_F";};
			class LoadmasterTurret: LoadmasterTurret {gunnerType = "O_helipilot_F";};
		};
	};

	#include "\FCLA_Air\OPFOR\CfgVehicles.hpp"
	#include "\FCLA_Air\BLUFOR\CfgVehicles.hpp"
	#include "\FCLA_Air\CIVILIAN\CfgVehicles.hpp"
	#include "\FCLA_Air\INDEPENDENT\CfgVehicles.hpp"
};
