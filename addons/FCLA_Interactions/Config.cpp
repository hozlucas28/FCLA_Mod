
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
		#include "\FCLA_Interactions\Helmet_Camo_Net\CfgFunctions.hpp"
		#include "\FCLA_Interactions\ID_Card\CfgFunctions.hpp"
		#include "\FCLA_Interactions\Insignias\CfgFunctions.hpp"
		#include "\FCLA_Interactions\Light_Sticks\CfgFunctions.hpp"
		#include "\FCLA_Interactions\Night_Vision_Battery\CfgFunctions.hpp"
		#include "\FCLA_Interactions\Plate_Number\CfgFunctions.hpp"
		#include "\FCLA_Interactions\Share_Map\CfgFunctions.hpp"
		#include "\FCLA_Interactions\Smoke_Signal\CfgFunctions.hpp"
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
|                                    INSIGNIAS                                   |
|********************************************************************************/

class CfgUnitInsignia {
	#include "\FCLA_Interactions\Insignias\CfgUnitInsignia.hpp"
};



/********************************************************************************|
|                                    VEHÍCULOS                                   |
|********************************************************************************/

class CfgVehicles {
	class All;
	class AllVehicles: All {};
	class Land: AllVehicles {};
	class Man: Land {};
	class LandVehicle: Land {};
	class Ship: AllVehicles {};

	//Humanos.
	class CAManBase: Man {
		class ACE_Actions {
			class ACE_MainActions {
				#include "\FCLA_Interactions\Blindfold\ACE_MainActions.hpp"
				#include "\FCLA_Interactions\ID_Card\ACE_MainAction.hpp"
				#include "\FCLA_Interactions\Insignias\ACE_MainActions.hpp"
			};
		};

	  class ACE_SelfActions {
			#include "\FCLA_Interactions\ID_Card\ACE_SelfAction.hpp"
			#include "\FCLA_Interactions\Light_Sticks\ACE_SelfActions.hpp"

	    class ACE_Equipment {
				#include "\FCLA_Interactions\CBRN\ACE_Equipment.hpp"
				#include "\FCLA_Interactions\Helmet_Camo_Net\ACE_Equipment.hpp"
				#include "\FCLA_Interactions\Night_Vision_Battery\ACE_Equipment.hpp"
				#include "\FCLA_Interactions\Smoke_Signal\ACE_Equipment.hpp"
	    };

			class ACE_TeamManagement {
				#include "\FCLA_Interactions\Insignias\ACE_TeamManagement.hpp"
			};
	  };
	};

	//Coches.
	class Car: LandVehicle {
		class ACE_Actions {
			class ACE_MainActions {
				#include "\FCLA_Interactions\Plate_Number\ACE_MainAction.hpp"
			};
		};
	};

	//Tanques.
	class Tank: LandVehicle {
		class ACE_Actions {
			class ACE_MainActions {
				#include "\FCLA_Interactions\Plate_Number\ACE_MainAction.hpp"
			};
		};
	};

	//Vehículos maritimos.
	class Ship_F: Ship {
		class ACE_Actions {
			class ACE_MainActions {
				#include "\FCLA_Interactions\Plate_Number\ACE_MainAction.hpp"
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
	class Binocular: Default {};
	class NVGoggles: Binocular {};
	class CBA_MiscItem: ItemCore {};
	class CBA_MiscItem_ItemInfo: InventoryItem_Base_F {};

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
	#include "\FCLA_Interactions\CBRN\ACE_Medical_Treatment_Action.hpp"
};



/********************************************************************************|
|                                 EVENTHANDLERS                                  |
|********************************************************************************/

class Extended_InitPost_EventHandlers {
	class DeconShower_01_F {
		init = "(_this select 0) setVariable ['BIN_deconshower_disableAction', true, true];";
	};
};

class Extended_Fired_Eventhandlers {
	class CAManBase {
		init = "if (!is3DEN) then {_this spawn FCLA_Interactions_fnc_firedSSEH;};";
	};
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
