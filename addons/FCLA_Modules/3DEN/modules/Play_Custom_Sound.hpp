
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
	isGlobal = 0;
  canSetArea = 1;
  isDisposable = 1;
  canSetAreaHeight = 1;
	isTriggerActivated = 1;
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
      tooltip = "Si se activa el sonido se repetira una vez haya concluido.\n- Se necesita que la duracion del sonido este definida dentro de la configuracion del mismo.";
      typeName = "BOOL";
      property = "FCLA_Sound_On_Loop";
      displayName = "Reproducir en bucle";
      defaultValue = "false";
		};
		class ModuleDescription: ModuleDescription {};
	};

  class AttributeValues {
    size3[] = {100, 100, 100};
  };

	class ModuleDescription: ModuleDescription {
    sync[] = {"AnyBrain", "AnyVehicle", "EmptyDetector", "AnyStaticObject"};
		description[] =	{
      "Reproduce de manera tridimensional el sonido personalizado.",
      "",
      "- El tamano de la zona define a que distancia se comenzara a oir el sonido, mientras mas cerca se este del centro mas fuerte se oira.",
      "- Se recomienda que los tamanos de la zona coincidan, si no se cumple se elegira el que tenga mayor valor.",
      "- Si el modulo esta sincronizado unicamente a una entidad (objeto, unidad, vehiculo, etc.) esta sera tomada como origen del sonido. Sin embargo si hay mas de una entidad sincronizada o ninguna, se tomara como origen al modulo."
    };
	};
};


class FCLA_Module_Play_Custom_Sound_Empty: FCLA_Module_Play_Custom_Sound {
  function = "";
  scope = 1;
};
