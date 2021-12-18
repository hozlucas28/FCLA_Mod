
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera el efecto seleccionado en la posición del módulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Spawn_Effect: Module_F {
  author = "hozlucas28";
	displayName = "Generar efecto";
  icon = "\FCLA_Modules\3DEN\data\Common.paa";
  portrait = "\FCLA_Modules\3DEN\data\Common.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setEffect3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Effect: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Effect";
      displayName = "Seleccionar efecto";
      defaultValue = """sparks""";

			class Values {
				class Sparks {
					name = "Chispas";
					value = "sparks";
				};

				class Fireflies {
					name = "Luciérnagas";
					value = "fireflies";
				};

				class Wind_Gust {
					name = "Ráfaga de viento";
					value = "wind_gust";
				};
			};
    };

		class FCLA_Delay: Edit {
      tooltip = "Segundos para que se repita el efecto.\n• Solo funciona con las chispas y la ráfaga de viento.";
      typeName = "STRING";
      property = "FCLA_Delay";
      displayName = "Tiempo";
      defaultValue = "''";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Genera el efecto seleccionado en la posición del módulo."};
	};
};
