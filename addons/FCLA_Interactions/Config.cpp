
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Interactions {
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
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
		#include "\FCLA_Interactions\EOD_Drone\CfgFunctions.hpp"
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
			#include "\FCLA_Interactions\Stretcher\ACE_SelfAction.hpp"

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

	class Car: LandVehicle {
		class ACE_Actions {
			class ACE_MainActions {
				#include "\FCLA_Interactions\Plate_Number\ACE_MainAction.hpp"
			};
		};
	};

	class Tank: LandVehicle {
		class ACE_Actions {
			class ACE_MainActions {
				#include "\FCLA_Interactions\Plate_Number\ACE_MainAction.hpp"
			};
		};
	};

	class Tank_F: Tank {};
	class UGV_02_Base_F: Tank_F {};
	class UGV_02_Science_Base_F: UGV_02_Base_F {};
	class B_UGV_02_Science_F: UGV_02_Science_Base_F {
		class ACE_SelfActions {
			#include "\FCLA_Interactions\EOD_Drone\ACE_SelfAction.hpp"
	  };
	};

	class Ship_F: Ship {
		class ACE_Actions {
			class ACE_MainActions {
				#include "\FCLA_Interactions\Plate_Number\ACE_MainAction.hpp"
			};
		};
	};
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

class Extended_FiredBIS_Eventhandlers {
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
		init = "if (!is3DEN) then {_this spawn FCLA_Interactions_fnc_respawnBlindfoldEH; _this spawn FCLA_Interactions_fnc_respawnCBRNEH;};";
	};
};
