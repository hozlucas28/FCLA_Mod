
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Enciende/Apaga todas las luces dentro del tamano de la zona.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Switch_Lights: Module_F {
  author = "hozlucas28";
	displayName = "Alternar luces";
  icon = "\FCLA_Modules\3DEN\data\Power_Switch.paa";
  portrait = "\FCLA_Modules\3DEN\data\Power_Switch.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_switchLights3DEN";
	isGlobal = 1;
  canSetArea = 1;
  isDisposable = 1;
  canSetAreaShape = 1;
  canSetAreaHeight = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Lights_State: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Lights_State";
      displayName = "Estado";
      defaultValue = """Off""";

			class Values {
				class On {
					name = "Encender";
					value = "On";
				};

				class Off {
					name = "Apagar";
					value = "Off";
				};
			};
		};

    class FCLA_Exclude_Vehicles: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_Exclude_Vehicles";
      displayName = "Excluir vehiculos";
      defaultValue = "false";
		};
		class ModuleDescription: ModuleDescription {};
	};

  class AttributeValues {
    isRectangle = 0;
    size3[] = {50, 50, 50};
  };

	class ModuleDescription: ModuleDescription {
    sync[] = {"AnyStaticObject", "EmptyDetector"};
		description[] =	{
      "Enciende/Apaga aquellas luces comprendidas dentro del 'Tamano', determinado por el modulo.",
      "",
      "- Si colocas -1, en los tamanos de la zona, todas las luces del mapa seran afectadas.",
      "- Si sincronizas unicamente un interruptor de transferencia al modulo, este servira para encender/apagar aquellas luces comprendidas dentro del 'Tamano'. Sin embargo si hay mas de una entidad sincronizada o ninguna, las luces se encenderan/apagaran sin interaccion alguna."
    };
	};
};
