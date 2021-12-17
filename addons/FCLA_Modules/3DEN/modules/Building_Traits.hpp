
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna rasgos ACE a la construcción.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Building_Traits: Module_F {
  author = "hozlucas28";
	displayName = "Asignar rasgos";
  icon = "\FCLA_Modules\3DEN\data\Building.paa";
  portrait = "\FCLA_Modules\3DEN\data\Building.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setBuildingTraits3DEN";
  is3DEN = RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Notify_Building: CheckBox {
      tooltip = "Si se activa se le notificara al editor el nombre de la construcción a la que se le aplicaran los rasgos.";
      typeName = "BOOL";
      property = "FCLA_Notify_Building";
      displayName = "Notificar construcción";
      defaultValue = "false";
    };

    class FCLA_isMedical_Facility: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_isMedical_Facility";
      displayName = "Es centro médico";
      defaultValue = "false";
    };

    class FCLA_isRepair_Facility: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_isRepair_Facility";
      displayName = "Es una instalación de reparación";
      defaultValue = "false";
    };
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Permite asignar rasgos ACE (centro médico o instalación de reparación) a una construcción del mapa, es decir, una construcción que no fue colocada por el editor."};
	};
};