
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
  is3DEN = 0;
	isGlobal = 1;
  canSetArea = 1;
  isDisposable = 1;
  canSetAreaShape = 0;
  canSetAreaHeight = 0;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Jammer: CheckBox {
      tooltip = "Si se activa se generara un jammer donde ocurrio el pulso electromagnético.\n• Los jammers bloquean/interfieren las señales de comunicación, por lo que las radios se verían afectadas.";
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
