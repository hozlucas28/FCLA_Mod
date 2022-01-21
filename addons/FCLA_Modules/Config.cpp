
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Modules {
		#include "\FCLA_Modules\units.hpp"
		requiredAddons[] = {"ZEN_Context_Actions"};
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
		#include "\FCLA_Modules\3DEN\CfgFunctions.hpp"
		#include "\FCLA_Modules\Curator\CfgFunctions.hpp"
		#include "\FCLA_Modules\EventHandlers\CfgFunction.hpp"
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
			class Anything;
		};
	};
	#include "\FCLA_Modules\3DEN\CfgVehicles.hpp"
};
