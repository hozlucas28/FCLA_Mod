
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Enciende/Apaga todas las luces dentro del tamaño de zona.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Switch_Lights: Module_F {
  author = "hozlucas28";
	displayName = "Alternar luces";
  icon = "\FCLA_Modules\3DEN\data\Lamps.paa";
  portrait = "\FCLA_Modules\3DEN\data\Lamps.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_switchLights3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
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
      displayName = "¿Excluir vehículos?";
      defaultValue = "false";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Enciende/Apaga aquellas luces comprendidas dentro del 'Tamaño', determinada por el módulo.<br/><br/>• Se recomienda que los tamaños de la zona coincidan, si no se cumple se elegirá el que tenga mayor valor.<br/>• Si colocas -1, en los tamaños de la zona, todas las luces del mapa seran afectadas."};
	};

  class AttributeValues {
    size3[] = {50, 50, 50};
  };
};
