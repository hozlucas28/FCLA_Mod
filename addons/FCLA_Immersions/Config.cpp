
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Immersions {
		requiredAddons[] = {"FCLA_Core"};
		#include "\FCLA_Immersions\units.hpp"
		author = "hozlucas28";
		version = "2.08";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.08;
	};
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Immersions {
		class FCLA_Immersions {
			class XEHPreInit {file = "\FCLA_Immersions\XEH_preInit.sqf";};
			class XEHPostInit {file = "\FCLA_Immersions\XEH_postInit.sqf";};
		};

		#include "\FCLA_Immersions\Kick_Door\CfgFunction.hpp"
		#include "\FCLA_Immersions\Turbulences\CfgFunctions.hpp"
		#include "\FCLA_Immersions\Building_Stairs\CfgFunctions.hpp"
		#include "\FCLA_Immersions\TFAR_Animations\CfgFunctions.hpp"
		#include "\FCLA_Immersions\Enhanced_Animations\CfgFunctions.hpp"
	};
};



/********************************************************************************|
|                                    SONIDOS                                     |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Immersions\CfgSounds.hpp"
};



/********************************************************************************|
|                             ANIMACIONES - BASICAS                              |
|********************************************************************************/

class CfgMovesBasic {
	class ManActions {
		#include "\FCLA_Immersions\TFAR_Animations\CfgMovesBasic\ManActions.hpp"
	  #include "\FCLA_Immersions\Enhanced_Animations\CfgMovesBasic\ManActions.hpp"
	};

	class Actions {
		class NoActions: ManActions {
	    #include "\FCLA_Immersions\TFAR_Animations\CfgMovesBasic\NoActions.hpp"
		};
	};
};



/********************************************************************************|
|                               ANIMACIONES - SDR                                |
|********************************************************************************/

class CfgMovesMaleSdr: CfgMovesBasic {
	class States {
	  class AmovPercMstpSrasWrflDnon;
	  class AmovPercMstpSrasWpstDnon;
	  #include "\FCLA_Immersions\Kick_Door\CfgMovesMaleSdr\States.hpp"
	};
};



/********************************************************************************|
|                                     GESTOS                                     |
|********************************************************************************/

class CfgGesturesMale {
	#include "\FCLA_Immersions\CfgGesturesMale.hpp"
};



/********************************************************************************|
|                                   VEHICULOS                                    |
|********************************************************************************/

class CfgVehicles {
	class All;
	class AllVehicles: All {};
	class Static: All {};
	class Air: AllVehicles {};
	class Helicopter: Air {};
	class Plane: Air {};
	class Helicopter_Base_F: Helicopter {};
	class UAV: Plane {};
	class Building: Static {};
	class NonStrategic: Building {};
	class HouseBase: NonStrategic {};
	class House: HouseBase {};
	class House_F: House {};

	#include "\FCLA_Immersions\Building_Stairs\CfgVehicles.hpp"
	#include "\FCLA_Immersions\TFAR_Animations\CfgVehicle.hpp"
};



/********************************************************************************|
|                                     ARMAS                                      |
|********************************************************************************/

class CfgWeapons {
	class Default;
	class LauncherCore: Default {};
	class Launcher: LauncherCore {};
	class Launcher_Base_F: Launcher {ace_reloadlaunchers_enabled = 1;};
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_Killed_Eventhandlers {
	class Air {
		init = "_this spawn FCLA_Immersions_fnc_killedNABEH;";
	};
};

class Extended_PreInit_EventHandlers {
	class FCLA_Immersions {
		init = "call FCLA_Immersions_fnc_XEHPreInit;";
	};
};

class Extended_PostInit_EventHandlers {
	class FCLA_Immersions {
		init = "call FCLA_Immersions_fnc_XEHPostInit;";
	};
};
