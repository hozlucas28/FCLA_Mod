
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
	isGlobal = 1;
  isDisposable = 1;
	isTriggerActivated = 0;
  scope = 2;


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
		description[] =	{
      "Permite guardar el equipamiento que tenian por ultima vez los jugadores, para asi equiparlos con los mismos en la proxima misión que contenga la misma ID.",
      "",
      "• Se recomienda que la ID sea su nombre de steam, la fecha de inicio y fin de campaña.",
      "• Si la ID habia sido utilizada en una misión anterior se le colocara el equipamiento guardado de esa misión."
    };
	};
};
