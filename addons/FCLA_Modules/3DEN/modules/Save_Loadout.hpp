
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite guardar el equipamiento que tenian por ultima vez los jugadores, para
 * asi equiparlos con los mismos en la proxima misión que contenga la misma ID.
 * Si la ID habia sido utilizada en una misión anterior se le colocara el
 * equipamiento guardado de esa misión.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Save_Loadout: Module_F {
  author = "hozlucas28";
	displayName = "Guardar ultimo equipamiento";
  icon = "\FCLA_Modules\3DEN\data\Save.paa";
  portrait = "\FCLA_Modules\3DEN\data\Save.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_saveLastLoadout3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaShape = HAS_NOT_SETTABLE_SHAPE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_NOT_ACTIVATED_BY_TRIGGER;
  functionPriority = 1;
  scope = 2;
  scopeCurator = 0;


	class Attributes: AttributesBase {
		class FCLA_Mission_ID: Edit {
      tooltip = "Identificador único que se utilizara como referencia para guardar/equipar el equipamiento.\n• Ejemplo: hozlucas28_01/05/2021_15/06/2021";
      typeName = "STRING";
      property = "FCLA_Mission_ID";
      displayName = "ID";
      defaultValue = "''";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Permite guardar el equipamiento que tenian por ultima vez los jugadores, para asi equiparlos con los mismos en la proxima misión que contenga la misma ID.<br/><br/>• Se recomienda que la ID sea su nombre de steam, la fecha de inicio y fin de campaña.<br/>• Si la ID habia sido utilizada en una misión anterior se le colocara el equipamiento guardado de esa misión."};
	};
};
