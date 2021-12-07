
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Modules {
		units[] = {};
		requiredAddons[] = {"zen_context_actions"};
		author = "hozlucas28";
		version = "2.0";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
		requiredVersion = 2.0;
	};
};



/********************************************************************************|
|                                  INCLUSIONES                                   |
|********************************************************************************/

#include "\FCLA_Modules\Zeus\CfgContext.hpp"



/********************************************************************************|
|                                    FACCIONES                                   |
|********************************************************************************/

class CfgFactionClasses {
	class FCLA_Faction_Modules {
		side = 7;
		priority = 2;
		displayName = "FCLA";
	};
};



/********************************************************************************|
|                                    FUNCIONES                                   |
|********************************************************************************/

class CfgFunctions {
	class FCLA_Modules {
		#include "\FCLA_Modules\3DEN\CfgFunctions.hpp"
		#include "\FCLA_Modules\Zeus\CfgFunctions.hpp"
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
};
