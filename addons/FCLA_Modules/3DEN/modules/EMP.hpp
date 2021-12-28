
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un pulso electromagnético.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_EMP: Module_F {
  author = "hozlucas28";
	displayName = "PEM";
  icon = "\FCLA_Modules\3DEN\data\EMP.paa";
  portrait = "\FCLA_Modules\3DEN\data\EMP.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_initEMP3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Jammer: CheckBox {
      tooltip = "Si se activa se generara un jammer donde ocurrio el pulso electromagnético.\n• Los jammers bloquean/interfieren las señales de comunicación, por lo que las radios se verían afectadas. El efecto es total cuando te encuentras a menos de la mitad del tamaño definido.";
      typeName = "BOOL";
      property = "FCLA_Jammer";
      displayName = "Generar jammer";
      defaultValue = "true";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Genera un pulso electromagnético.<br/><br/>• Se recomienda que los tamaños de la zona coincidan, si no se cumple se elegirá el que tenga mayor valor.<br/>• Si colocas -1, en los tamaños de la zona, todas las entidades del mapa seran afectadas por el PEM."};
	};

  class AttributeValues {
    size3[] = {250, 250, -1};
  };
};
