
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Air {
		#include "\FCLA_Air\units.hpp"
		requiredAddons[] = {"A3_Air_F_Beta", "A3_Air_F_Beta_Heli_Transport_01", "A3_Air_F_Heli_Heli_Transport_04"};
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
	class FCLA_Air {
		class FCLA_Air {
			class XEHPreInit {file = "\FCLA_Air\XEH_preInit.sqf";};
		};
	};
};



/********************************************************************************|
|                                    VEHICULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All;
	class AllVehicles: All {};
	class Air: AllVehicles {};
	class Helicopter: Air {};

	class Helicopter_Base_F: Helicopter {
		class Turrets;
	};

	class Helicopter_Base_H: Helicopter_Base_F {
		class Turrets: Turrets{
			class CopilotTurret;
			class MainTurret;
		};
	};

	class Heli_Transport_01_base_F: Helicopter_Base_H {
		class CargoTurret;
		transportSoldier = 6;
		cargoProxyIndexes[] = {1, 3, 5, 6, 7, 8};

		class Turrets: Turrets {
			class MainTurret: MainTurret {
				stabilizedInAxes = 3;
				magazines[] = {"2000Rnd_65x39_Belt_Tracer_Red", "2000Rnd_65x39_Belt_Tracer_Red"};
			};

			class RightDoorGun: MainTurret {
				stabilizedInAxes = 3;
				magazines[] = {"2000Rnd_65x39_Belt_Tracer_Red", "2000Rnd_65x39_Belt_Tracer_Red"};
			};

			class CargoTurret_01: CargoTurret {
				gunnerGetInAction = "GetInLOW";
				gunnerGetOutAction = "GetOutLOW";
				gunnerAction = "passenger_inside_7";
				gunnerCompartments = "Compartment2";
				memoryPointsGetInGunner = "pos cargo";
				memoryPointsGetInGunnerDir = "pos cargo dir";
				gunnerName = "Passenger (Right Seat)";
				proxyIndex = 2;
				initElev = 0;
				minElev = -40;
				maxElev = 13;
				minTurn = 24;
				maxTurn = 72;
				initTurn = 0;
				isPersonTurret = 1;
				ejectDeadGunner = 0;
				CanEject = 1;
				playerPosition = 4;
				soundAttenuationTurret = "";
				disableSoundAttenuation = 0;
				enabledByAnimationSource = "door_R";
				class dynamicViewLimits	{CargoTurret_02[] = {-65, 95};};
			};

			class CargoTurret_02: CargoTurret_01 {
				gunnerCompartments = "Compartment2";
				memoryPointsGetInGunner = "pos cargo";
				memoryPointsGetInGunnerDir = "pos cargo dir";
				gunnerName = "Passenger (Left Seat)";
				proxyIndex = 4;
				minElev = -40;
				maxElev = 13;
				minTurn = -91;
				maxTurn = -30;
				enabledByAnimationSource = "door_L";
				class dynamicViewLimits	{CargoTurret_01[] = {-65, 85};};
			};
		};
	};

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



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Air {
		init = "call FCLA_Air_fnc_XEHPreInit;";
	};
};
