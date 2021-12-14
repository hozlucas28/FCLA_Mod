
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
  portrait = "\FCLA_Modules\3DEN\data\Sound.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_playCustomSound3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Classname_Sound: Edit {
      tooltip = "Classname del sonido a reproducir.";
      typeName = "STRING";
      property = "FCLA_Classname_Sound";
      displayName = "Sonido";
      defaultValue = "''";
		};

    class FCLA_Sound_On_Loop: CheckBox {
      tooltip = "Si se activa el sonido se repetira una vez haya concluido.\n• Se necesita que la duración del sonido este definida dentro de la configuración del mismo.";
      typeName = "BOOL";
      property = "FCLA_Sound_On_Loop";
      displayName = "¿Reproducir en bucle?";
      defaultValue = "false";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Reproduce de manera tridimensional el sonido personalizado.<br/><br/>• El tamaño de la zona define a que distancia se comenzará a oir el sonido.<br/>• Se recomienda que los tamaños de la zona coincidan, si no se cumple se elegirá el que tenga mayor valor.<br/>• Si el módulo esta sincronizado únicamente a una entidad (objeto, unidad, vehículo, etc.) esta sera tomada como origen del sonido. Sin embargo si hay más de una entidad sincronizada ó ninguna, se tomara como origen al módulo."};
	};

  class AttributeValues {
    size3[] = {250, 250, -1};
  };
};
