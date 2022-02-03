
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un jammer que bloquea/interfiere las senales de comunicacion de las
 * radios de onda corta y larga, incluyendo vehiculos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Jammer: Module_F {
  author = "hozlucas28";
	displayName = "Jammer";
  icon = "\FCLA_Modules\3DEN\data\Jammer.paa";
  portrait = "\FCLA_Modules\3DEN\data\Jammer.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setJammer3DEN";
	isGlobal = 0;
  canSetArea = 1;
  isDisposable = 1;
  canSetAreaHeight = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Jammer_ID: Edit {
      tooltip = "Nombre personalizado para poder reconocer el jammer, cuando se le informe a los Zeus que ha sido desactivado.\n- Si no se define un identificador no se informara a los Zeus.";
      typeName = "STRING";
      property = "FCLA_Jammer_ID";
      displayName = "Identificador";
      defaultValue = "''";
		};

    class FCLA_Deactivatable: CheckBox {
      tooltip = "Si se activa se podra desactivar el jammer a travez de una accion.\n- unicamente se tomara en cuenta, si el origen/centro del jammer no es el modulo.";
      typeName = "BOOL";
      property = "FCLA_Deactivatable";
      displayName = "Desactivable";
      defaultValue = "false";
		};

    class FCLA_Affect_Vehicles: CheckBox {
      tooltip = "Si se activa las radios de los vehiculos tambien seran afectadas.";
      typeName = "BOOL";
      property = "FCLA_Affect_Vehicles";
      displayName = "Afectar vehiculos";
      defaultValue = "true";
		};

    class FCLA_Need_Hacking_Device: CheckBox {
      tooltip = "Si se activa se necesitara de un dispositivo de hackeo para realizar la accion que desactiva al jammer.";
      typeName = "BOOL";
      property = "FCLA_Need_Hacking_Device";
      displayName = "Se necesita dispositivo";
      defaultValue = "false";
		};
		class ModuleDescription: ModuleDescription {};
	};

  class AttributeValues {
    size3[] = {50, 50, 50};
  };

	class ModuleDescription: ModuleDescription {
    sync[] = {"AnyVehicle", "EmptyDetector", "AnyStaticObject"};
		description[] =	{
      "Bloquea/interfiere las senales de comunicacion de las radios de onda corta y larga.",
      "",
      "- Si colocas -1, en los tamanos de la zona, todo el mapa se vera afectado por el jammer.",
      "- Si sincronizas unicamente una entidad (objeto, unidad, vehiculo, etc.) al modulo, esta se tomara como origen/centro del jammer. Sin embargo si hay mas de una entidad sincronizada o ninguna, se tomara como origen al modulo."
    };
	};
};


class FCLA_Module_Jammer_Empty: FCLA_Module_Jammer {
  function = "";
  scope = 1;
};
