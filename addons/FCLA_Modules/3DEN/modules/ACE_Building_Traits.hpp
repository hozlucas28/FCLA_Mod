
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna rasgos ACE a la construccion.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Building_Traits: Module_F {
  author = "hozlucas28";
	displayName = "Asignar rasgos (ACE)";
  icon = "\FCLA_Modules\3DEN\data\Building.paa";
  portrait = "\FCLA_Modules\3DEN\data\Building.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setBuildingTraits3DEN";
  is3DEN = 1;
	isGlobal = 1;
  isDisposable = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Notify_Building: CheckBox {
      tooltip = "Si se activa se le notificara al editor el nombre de la construccion a la que se le aplicaran los rasgos.";
      typeName = "BOOL";
      property = "FCLA_Notify_Building";
      displayName = "Notificar construccion";
      defaultValue = "false";
    };

    class FCLA_isMedical_Facility: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_isMedical_Facility";
      displayName = "Es centro medico";
      defaultValue = "false";
    };

    class FCLA_isRepair_Facility: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_isRepair_Facility";
      displayName = "Es una instalacion de reparacion";
      defaultValue = "false";
    };
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"EmptyDetector"};
		description[] =	{"Permite asignar los rasgos centro medico y/o instalacion de reparacion a una construccion del mapa, es decir, una construccion que no fue colocada por el editor."};
	};
};
