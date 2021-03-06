
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica el alcance de todas las radios de onda corta y larga,
 * incluyendo vehiculos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Radio_Range: Module_F {
  author = "hozlucas28";
	displayName = "Modificar alcance (TFAR)";
  icon = "\FCLA_Modules\3DEN\data\Radio.paa";
  portrait = "\FCLA_Modules\3DEN\data\Radio.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_changeRadioRange3DEN";
	isGlobal = 0;
  isDisposable = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
		class FCLA_Multiplier: Edit {
      tooltip = "Determina por cuanto se multiplicara el alcance que tienen las radios de onda corta y larga.";
      typeName = "NUMBER";
      property = "FCLA_Multiplier";
      displayName = "Multiplicador";
      defaultValue = 1;
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"EmptyDetector"};
		description[] =	{"Multiplica el alcance que tienen todas las radios de onda corta y larga, incluyendo vehiculos."};
	};
};
