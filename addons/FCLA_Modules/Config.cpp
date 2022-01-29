
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Modules {
		#include "\FCLA_Modules\units.hpp"
		requiredAddons[] = {"ZEN_Context_Actions", "FCLA_Core", "FCLA_Interactions"};
		author = "hozlucas28";
		version = "2.0";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                                  INCLUSIONES                                   |
|********************************************************************************/

#include "\FCLA_Modules\Curator\CfgContext.hpp"



/********************************************************************************|
|                                    FACCIONES                                   |
|********************************************************************************/

class CfgFactionClasses {
	class FCLA_Modules {
		side = 7;
		priority = 1;
		displayName = "FCLA";
	};
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Modules {
		class FCLA_Modules {
			class XEHPreInit {file = "\FCLA_Modules\XEH_preInit.sqf";};
			class XEHPostInit {file = "\FCLA_Modules\XEH_postInit.sqf";};
		};

		#include "\FCLA_Modules\3DEN\CfgFunctions.hpp"
		#include "\FCLA_Modules\Curator\CfgFunctions.hpp"
	};
};



/********************************************************************************|
|                                    SONIDOS                                     |
|********************************************************************************/

class CfgSounds {
	#include "\FCLA_Modules\CfgSounds.hpp"
};



/********************************************************************************|
|                                   VEHÍCULOS                                    |
|********************************************************************************/

class CfgVehicles {
	class Logic;
	class Module_F: Logic	{
		class AttributesBase {
			class Default;
			class Edit;
			class Combo;
			class CheckBox;
			class CheckBoxNumber;
			class ModuleDescription;
		};

		class ModuleDescription	{
			class AnyAI;
			class Anything;
			class AnyBrain;
			class AnyPlayer;
			class AnyPerson;
			class AnyVehicle;
			class EmptyDetector;
			class GroupModifiers;
			class AnyStaticObject;
		};
	};
	#include "\FCLA_Modules\3DEN\CfgVehicles.hpp"
};



/********************************************************************************|
|                            CONTROLADORES DE EVENTOS                            |
|********************************************************************************/

class Extended_PreInit_EventHandlers {
	class FCLA_Modules {
		init = "call FCLA_Modules_fnc_XEHPreInit;";
	};
};

class Extended_PostInit_EventHandlers {
	class FCLA_Modules {
		init = "call FCLA_Modules_fnc_XEHPostInit;";
	};
};
