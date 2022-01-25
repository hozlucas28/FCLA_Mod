
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Activa/Desactiva la propulsión automática que poseen los helicópteros.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Auto_Hover: Module_F {
  author = "hozlucas28";
	displayName = "Propulsión automática";
  icon = "\FCLA_Modules\3DEN\data\Auto_Hover.paa";
  portrait = "\FCLA_Modules\3DEN\data\Auto_Hover.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_switchAutoHover3DEN";
	isGlobal = 1;
  isDisposable = 0;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Auto_Hover: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Auto_Hover";
      displayName = "Propulsión automática";
      defaultValue = """Activated""";

     class Values {
       class Activated {
         name = "Activada";
         value = "Activated";
       };

       class Deactivated {
         name = "Desactivada";
         value = "Deactivated";
       };
     };
   };
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"EmptyDetector"};
		description[] =	{"Activa/Desactiva la propulsión automática que poseen los helicópteros."};
	};
};
