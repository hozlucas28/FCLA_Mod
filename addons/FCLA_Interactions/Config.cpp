
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Interactions {
		units[] = {};
		#include "\FCLA_Interactions\weapons.hpp"
		requiredAddons[] = {};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};



/********************************************************************************|
|                                  INCLUSIONES                                   |
|********************************************************************************/

#include "\FCLA_Interactions\ID_Card\display\Main_GUI.hpp"
#include "\FCLA_Interactions\ID_Card\display\Dialog_GUI.hpp"



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Interactions {
		#include "\FCLA_Interactions\Blindfold\CfgFunctions.hpp"
		#include "\FCLA_Interactions\CBRN\CfgFunctions.hpp"
		#include "\FCLA_Interactions\Helmet_Camo_Net\CfgFunction.hpp"
		#include "\FCLA_Interactions\ID_Card\CfgFunctions.hpp"
		#include "\FCLA_Interactions\Light_Sticks\CfgFunction.hpp"
		#include "\FCLA_Interactions\Night_Vision_Battery\CfgFunction.hpp"
		#include "\FCLA_Interactions\Patches\CfgFunctions.hpp"
		#include "\FCLA_Interactions\Plate_Number\CfgFunction.hpp"
		#include "\FCLA_Interactions\Share_Map\CfgFunction.hpp"
		#include "\FCLA_Interactions\Smoke_Signal\CfgFunction.hpp"
		#include "\FCLA_Interactions\Spy_Camera\CfgFunctions.hpp"
		#include "\FCLA_Interactions\Whistle\CfgFunction.hpp"
	};
};



/********************************************************************************|
|                                    SONIDOS                                     |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Interactions\CfgSounds.hpp"
};



/********************************************************************************|
|                                    TÍTULOS                                     |
|********************************************************************************/

class RscTitles {
  #include "\FCLA_Interactions\Night_Vision_Battery\RscTitles.hpp"
};



/********************************************************************************|
|                                     PARCHES                                    |
|********************************************************************************/

class CfgUnitInsignia {
	#include "\FCLA_Interactions\Patches\CfgUnitInsignia.hpp"
};



/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All;
	class AllVehicles: All {};
	class Land: AllVehicles {};
	class Man: Land {};

	class CAManBase: Man {
		class ACE_Actions {
			class ACE_MainActions {
				#include "\FCLA_Interactions\Blindfold\ACE_MainActions.hpp"
				#include "\FCLA_Interactions\Patches\CfgMainVehicle.hpp"
			};
		};

	  class ACE_SelfActions {
			#include "\FCLA_Interactions\Light_Sticks\CfgVehicles\ACE_SelfActions.hpp"
	    class ACE_Equipment {
				#include "\FCLA_Interactions\CBRN\ACE_Equipment.hpp"
				#include "\FCLA_Interactions\Helmet_Camo_Net\ACE_Equipment.hpp"
				#include "\FCLA_Interactions\Spy_Camera\CfgVehicle.hpp"
	      #include "\FCLA_Interactions\Whistle\CfgVehicle.hpp"
	    };

			class ACE_TeamManagement {
				#include "\FCLA_Interactions\Patches\CfgSelfVehicle.hpp"
			};
	  };
	};
};



/********************************************************************************|
|                                     ARMAS                                      |
|********************************************************************************/

class CfgWeapons {
	class Default;
	class InventoryItem_Base_F;
	class ItemCore: Default {};
	class CBA_MiscItem: ItemCore {};
	class CBA_MiscItem_ItemInfo: InventoryItem_Base_F {};
	class Binocular: Default {};
	class NVGoggles: Binocular {};

	#include "\FCLA_Interactions\Blindfold\CfgWeapons.hpp"
	#include "\FCLA_Interactions\Helmet_Camo_Net\CfgWeapons.hpp"
	#include "\FCLA_Interactions\Light_Sticks\CfgWeapon.hpp"
	#include "\FCLA_Interactions\Night_Vision_Battery\CfgWeapon.hpp"
	#include "\FCLA_Interactions\Whistle\CfgWeapon.hpp"
};



/********************************************************************************|
|                                    ANTEOJOS                                    |
|********************************************************************************/

class CfgGlasses {
	class None;
	class G_Blindfold_01_base_F: None {};
	#include "\FCLA_Interactions\Blindfold\CfgGlasses.hpp"
	#include "\FCLA_Interactions\CBRN\CfgGlasses.hpp"
};



/********************************************************************************|
|                   ACCIONES PARA TRATAMIENTOS DEL MENÚ MEDICO                   |
|********************************************************************************/

class ACE_Medical_Treatment_Actions {
	class Diagnose;
	#include "\FCLA_Interactions\CBRN\ACE_Medical_Treatment_Actions.hpp"
};



/********************************************************************************|
|                                 EVENTHANDLERS                                  |
|********************************************************************************/

class Extended_InitPost_EventHandlers {
	class CAManBase {
		ID_Card = "[_this select 0] spawn FCLA_Interactions_fnc_addActionsToUnitIDCard;";
		Light_Sticks = "[_this select 0] spawn FCLA_Interactions_fnc_initLightSticks;";
		Night_Vision_Battery = "[_this select 0] spawn FCLA_Interactions_fnc_addActionsToUnitNVB;";
		Courses = "[_this select 0] spawn FCLA_Interactions_fnc_initCourses;";
		Patches = "[_this select 0] spawn FCLA_Interactions_fnc_initPatches;";
		Share_Map = "[_this select 0] spawn FCLA_Interactions_fnc_initShareMap;";
		Smoke_Signal = "[_this select 0] spawn FCLA_Interactions_fnc_initSmokeSignal;";
		Spy_Camera = "[_this select 0] spawn FCLA_Interactions_fnc_initCamera;";
		Whistle = "[_this select 0] spawn FCLA_Interactions_fnc_initWhistle;";
	};

	class Car {init = "[_this select 0] spawn FCLA_Interactions_fnc_initPlateNumber;";};
	class UGV_02_Base_F {init = "[_this select 0] spawn FCLA_Interactions_fnc_initPlateNumber;";};
	class DeconShower_01_F {init = "[_this select 0] spawn FCLA_Interactions_fnc_addActionsShowerCBRN;";};
	class Land_GasTank_02_F {init = "[_this select 0] spawn FCLA_Interactions_fnc_addActionsRechargeOxygenCBRN";};
};

class Extended_Killed_Eventhandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Interactions_fnc_killedCBRNEH;};";
	};
};

class Extended_Respawn_Eventhandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Interactions_fnc_respawnCBRNEH;};";
	};
};
