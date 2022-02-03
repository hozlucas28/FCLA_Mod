
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un pulso electromagnetico.
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
	isGlobal = 1;
  canSetArea = 1;
  isDisposable = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Jammer: CheckBox {
      tooltip = "Si se activa se generara un jammer donde ocurrio el pulso electromagnetico.\n- Los jammers bloquean/interfieren las senales de comunicacion, por lo que las radios se verian afectadas.";
      typeName = "BOOL";
      property = "FCLA_Jammer";
      displayName = "Generar jammer";
      defaultValue = "true";
		};
		class ModuleDescription: ModuleDescription {};
	};

  class AttributeValues {
    size3[] = {250, 250, -1};
  };

	class ModuleDescription: ModuleDescription {
    sync[] = {"EmptyDetector"};
		description[] =	{
      "Genera un pulso electromagnetico.",
      "",
      "- Se recomienda que los tamanos de la zona coincidan, si no se cumple se elegira el que tenga mayor valor.",
      "- Si colocas -1, en los tamanos de la zona, todas las entidades del mapa seran afectadas por el PEM."
    };
	};
};


class FCLA_Module_EMP_Empty: FCLA_Module_EMP {
  function = "";
  scope = 1;
};
