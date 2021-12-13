
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce el sonido personalizado de manera tridimensional.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Play_Custom_Sound: Module_F {
  author = "hozlucas28";
	displayName = "Reproducir sonido (personalizado)";
  icon = "\FCLA_Modules\3DEN\data\Sound.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_playCustomSound3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Sound: Edit {
      tooltip = "Classname del sonido a reproducir.";
      typeName = "STRING";
      property = "FCLA_Sound";
      displayName = "Sonido";
      defaultValue = "''";
		};

    class FCLA_Sound_On_Loop: CheckBox {
      tooltip = "Si se activa el sonido se repetira una vez haya concluido.";
      typeName = "BOOL";
      property = "FCLA_Sound_On_Loop";
      displayName = "¿Reproducir en bucle?";
      defaultValue = "false";
		};

    class FCLA_Delete_Source: CheckBox {
      tooltip = "Si se activa se borrara el origen del sonido, cuando este concluya.<br/>• Este atributo no se tomara en cuenta si el sonido se reproduce en bucle.";
      typeName = "BOOL";
      property = "FCLA_Delete_Source";
      displayName = "¿Borrar al terminar?";
      defaultValue = "false";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Reproduce de manera tridimensional el sonido personalizado.<br/><br/>• Si el módulo esta sincronizado únicamente a un objeto este sera tomado como origen del sonido. Sin embargo si hay más de un objeto sincronizado ó ninguno, se tomara como origen del sonido al módulo."};
	};
};
