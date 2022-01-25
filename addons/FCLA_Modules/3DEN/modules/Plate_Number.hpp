
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica la matrícula de los vehículos sincronizados.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Plate_Number: Module_F {
  author = "hozlucas28";
	displayName = "Modificar matrícula";
  icon = "\FCLA_Modules\3DEN\data\Vehicle.paa";
  portrait = "\FCLA_Modules\3DEN\data\Vehicle.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setPlateNumber3DEN";
	isGlobal = 1;
  isDisposable = 0;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
		class FCLA_New_Plate_Number: Edit {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_New_Plate_Number";
      displayName = "Matrícula";
      defaultValue = "''";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"AnyVehicle", "EmptyDetector"};
		description[] =	{"Modifica las matrículas de los vehículos sincronizados al módulo."};
	};
};
